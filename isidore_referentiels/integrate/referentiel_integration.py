import pandas as pd
import os
import logging
import shutil
from pathlib import Path
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
from isidore_referentiels.report.concepts import concepts_referentiel

class integration:

    def __init__(self,RefInfo) -> None:
        
        self.__referentiel = RefInfo.get_Referentiel()
        self.ref_directory = RefInfo.get_referentiel_directory()
        
        tmp_directory = Path(RefInfo.get_TmpDirectory()).absolute()
        dir_tmp = os.path.join(tmp_directory,"integrate")
        if not os.path.exists(dir_tmp):
            os.mkdir(dir_tmp)
        self.__tmp_directory = dir_tmp

        dir_tmp_sparql = os.path.join(dir_tmp,"sparql")
        if not os.path.exists(dir_tmp_sparql):
            os.mkdir(dir_tmp_sparql)
        self.__tmp_directory_sparql = dir_tmp_sparql

        integration_ref = RefInfo.get_integrate()
        self.report = ''.join(integration_ref["report"]) # Récupérer le fichier csv        
        filename = [file for file in os.listdir(Path(''.join(integration_ref["resource"])).absolute())][0] # Récupérer le fichier TTL du referentiel
        self.resource = os.path.join(Path(''.join(integration_ref["resource"])).absolute(),filename)

        output_file = Path(''.join(integration_ref["output"])).absolute()
        if not os.path.exists(output_file):
            os.makedirs(output_file)
        self.output_integrate = output_file # Répertoire du fichier final
        
        self.logger = logging.getLogger(__name__)

    def __generate_table(self,resource:str,fextension:str) -> pd.DataFrame:

        dfOutput = pd.DataFrame()
        if fextension == ".csv":
            dfOutput = pd.read_csv(resource)
        if (fextension == ".xslx") or (fextension == ".xsl"):
            dfOutput = pd.read_excel(resource)
        
        return dfOutput
    
    def __execute_process(self,sparqlQuery) -> str:
        


        path_file = os.path.join(self.__tmp_directory,f'{self.__referentiel}.ttl')
        response = cmd_subprocess().execute_update_subprocess(self.resource,sparqlQuery)
        if response.stdout.__sizeof__() > 0:
            with open(path_file,"wb") as f:
                f.write(response.stdout)
        if response.stderr.__sizeof__() > 0:
            self.logger.warning("Le processus de enlever des uris a trouve des erreurs.")
            self.logger.warning(response.stderr)
        
        return path_file

    def __sparql_query(self,input:str) -> str:

        pathFile = os.path.join(self.__tmp_directory_sparql,'sparql.ru')
        f = open(pathFile,'w')

        sFilter = f'FILTER(?s in ({input}))'
        sparql_body = """PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
                DELETE { ?s ?p ?o . } 
                WHERE {
                    ?s ?p ?o
                    """
        sparql = sparql_body + sFilter + '}'
        f.write(sparql)
        return pathFile
    
    def __read_csv_file(self) -> pd.DataFrame:        

        for root,directories,files in os.walk(self.report):
            for file in files:
                pFile = os.path.join(root,file)
                if os.path.isfile(pFile):
                    file_name, file_extension = os.path.splitext(file)
                    dfResource = self.__generate_table(pFile,file_extension)
                    if dfResource.size > 0:
                        # 
                        dfPrepare = dfResource[dfResource["juguement"] == "A EXCLURE"]
                        list_uri_concepts = ','.join([f"<{concept}>" for concept in dfPrepare.Concept])
                        
                        # Generer répositorie tmp 
                        path_file = self.__execute_process(self.__sparql_query(list_uri_concepts))

                        path_integrate = os.path.join(self.ref_directory,"integrate")
                        if os.path.exists(path_integrate):
                            shutil.rmtree(path_integrate)
                            os.makedirs(path_integrate)
                        else:
                            os.makedirs(path_integrate)

                        # Generer les concepts alignement et labels
                        getConcepts = concepts_referentiel.generate_concepts(path_file)
                        alignement_directory = os.path.join(path_integrate,"alignement")
                        if not os.path.exists(alignement_directory):
                            os.mkdir(alignement_directory)
                        getConcepts.get_wikidata().to_csv(os.path.join(alignement_directory,'alignement.csv'),index=False)
                        # Generate les concepts de labels
                        labels_directory = os.path.join(path_integrate,"labels")
                        if not os.path.exists(labels_directory):
                            os.mkdir(labels_directory)
                        getConcepts.get_labels().to_csv(os.path.join(labels_directory,'labels.csv'),index=False)

                    else:
                        self.logger.warning(f"Le resource {pFile} n'est pas une resource attendre [csv,xls,xlsx]")
                        print(f"Le resource {pFile} n'est pas une resource attendre [csv,xls,xlsx]")
                   
    def filter_referentiel(self):

        self.logger.info(f"* * * * Integration de referentiel {self.__referentiel.upper()} [Integration] * * * *")
        print(f"* * * * Integration de referentiel {self.__referentiel.upper()} [Integration] * * * *")

        self.__read_csv_file()