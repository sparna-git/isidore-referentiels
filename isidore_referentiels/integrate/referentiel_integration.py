import pandas as pd
import os
import logging
import shutil
from pathlib import Path
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
from isidore_referentiels.process.Tools import tools
from isidore_referentiels.report.concepts import concepts_referentiel

class integration:

    def __init__(self,RefInfo) -> None:
        
        self.__referentiel = RefInfo.get_Referentiel()
        self.ref_directory = RefInfo.get_referentiel_directory()
        
        tmp_directory = Path(self.ref_directory).absolute()
        integrate_directory = os.path.join(tmp_directory,'integrate')
        if not os.path.exists(integrate_directory):
            os.makedirs(integrate_directory)
        else:
            shutil.rmtree(integrate_directory)
            os.makedirs(integrate_directory)

        self.__tmp_directory = integrate_directory
        # Répertoire de resultat
        report_output = RefInfo.get_Outputdirectory()
        
        integration_ref = RefInfo.get_integrate()
        
        # Récupérer le fichier csv
        self.report = ''.join(integration_ref["report"])
        # Récupérer le fichier TTL du referentiel
        filename = [file for file in os.listdir(Path(''.join(integration_ref["data"])).absolute())][0] 
        self.data = os.path.join(Path(''.join(integration_ref["data"])).absolute(),filename)
        
        output_file = tools.new_directory(report_output,''.join(integration_ref["output"]))
        # Répertoire du fichier final
        self.__Referentiel_resultat = output_file 
        
        self.logger = logging.getLogger(__name__)

    def __generate_table(self,resource:str,fextension:str) -> pd.DataFrame:

        dfOutput = pd.DataFrame()
        if fextension == ".csv":
            dfOutput = pd.read_csv(resource,dtype='str')
        if (fextension == ".xslx") or (fextension == ".xsl"):
            dfOutput = pd.read_excel(resource)
        
        return dfOutput
    
    def __execute_process(self,sparqlQuery) -> str:

        path_file = os.path.join(self.__tmp_directory,f'{self.__referentiel}.ttl')
        print(path_file)
        response = cmd_subprocess().execute_update_subprocess(self.data,sparqlQuery)
        if response.stdout.__sizeof__() > 0:
            with open(path_file,"wb") as f:
                f.write(response.stdout)
        
        if response.stderr.__sizeof__() > 0:
            self.logger.warning("Le processus de enlever des uris a trouve des erreurs.")
            self.logger.warning(response.stderr)
        
        return path_file
    
    def __sparql_query(self,input:str) -> str:

        pathFile = os.path.join(self.__tmp_directory,f'sparql_integrate_{self.__referentiel}.ru')
        f = open(pathFile,'w')

        # Generate Sparql Quer
        sparql_query = """
            PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
            DELETE {
                ?s ?p ?o .
                ?otherSubject ?otherPredicate ?s .
            } INSERT {
                ?parent skos:narrower ?children .
                ?children skos:broader ?parent .                
            } WHERE {
                # supprimer tous les triplets dont l'URI est sujet
                ?s ?p ?o
                VALUES ?s { """+input+""" }
                OPTIONAL { ?s skos:narrower|^skos:broader ?children . }
                OPTIONAL { ?s skos:broader|^skos:narrower ?parent . }
                # supprimer tous les triplets dont l'URI est objet
                OPTIONAL { ?otherSubject ?otherPredicate ?s . }
            }
        """
        f.write(sparql_query)
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
                        str_path_fichier = None
                        dfPrepare = dfResource[dfResource["juguement"] == "A EXCLURE"]
                        if not dfPrepare.empty:
                            list_uri_concepts = ' '.join([f"<{concept}>" for concept in dfPrepare.Concept])
                            # Generer répositorie tmp 
                            fichier_resultat = self.__execute_process(self.__sparql_query(list_uri_concepts))

                            str_path_fichier = fichier_resultat
                            shutil.copy(fichier_resultat,self.__Referentiel_resultat)

                        else:
                            # récuperer le nom du fichier
                            str_path_fichier =self.data
                            shutil.copy(self.data,self.__Referentiel_resultat)
                         
                        self.logger.info(f'Le fichier de résultat est stoke dans le répertoire {self.__Referentiel_resultat}')
                        print(f'Le fichier de résultat est stoke dans le répertoire {self.__Referentiel_resultat}')

                        # Generer les concepts alignement et labels
                        getConcepts = concepts_referentiel.generate_concepts(str_path_fichier)
                        alignement_directory = tools.new_directory(self.__tmp_directory,"alignement")
                        getConcepts.get_alignement().to_csv(os.path.join(alignement_directory,'alignement.csv'),index=False)
                        # Generate les concepts de labels
                        labels_directory = tools.new_directory(self.__tmp_directory,"libelles")
                        getConcepts.get_labels().to_csv(os.path.join(labels_directory,'libelles.csv'),index=False)
                       
                    else:
                        self.logger.warning(f"Le resource {pFile} n'est pas une resource attendre [csv,xls,xlsx]")
                        print(f"Le resource {pFile} n'est pas une resource attendre [csv,xls,xlsx]")
                   
    def filter_referentiel(self):

        self.logger.info(f"* * * * Integration de referentiel {self.__referentiel.upper()} [Integration] * * * *")
        print(f"* * * * Integration de referentiel {self.__referentiel.upper()} [Integration] * * * *")

        print(f"Répertoire de resultat de l'étape de report: {self.__Referentiel_resultat} ")

        self.__read_csv_file()