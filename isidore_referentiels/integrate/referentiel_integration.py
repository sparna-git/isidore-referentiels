import pandas as pd
import os
import logging
import shutil
from pathlib import Path
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
from isidore_referentiels.report.concepts import concepts_referentiel
import tempfile as tf

class integration:

    def __init__(self,RefInfo) -> None:
        
        self.__referentiel = RefInfo.get_Referentiel()
        self.ref_directory = RefInfo.get_referentiel_directory()
        
        tmp_directory = Path(RefInfo.get_TmpDirectory()).absolute()
        dir_tmp = os.path.join(tmp_directory,"integrate")
        if not os.path.exists(dir_tmp):
            os.mkdir(dir_tmp)
        else:
            shutil.rmtree(dir_tmp)
            os.mkdir(dir_tmp)
        self.__tmp_directory = dir_tmp

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
            dfOutput = pd.read_csv(resource,dtype='str')
        if (fextension == ".xslx") or (fextension == ".xsl"):
            dfOutput = pd.read_excel(resource)
        
        return dfOutput
    
    def __filter(self,enlever_concepts:str):

        filter_directory = os.path.join(self.__tmp_directory,"result")
        if not os.path.exists(filter_directory):
            os.mkdir(filter_directory)
        else:
            shutil.rmtree(filter_directory)
            os.mkdir(filter_directory)

        tmp_file = os.path.join(filter_directory,f'{self.__referentiel}.ttl')
        for root,directories,files in os.walk(enlever_concepts):
            nCount = 0
            print(files)
            for f in files:
                sparqlQuery = os.path.join(root,f)
                print(f"Requête Sparql: {sparqlQuery}")                
                #
                input_resource = ""
                if nCount == 0:
                    input_resource = self.resource
                    nCount += 1
                else:
                    input_resource = tmp_file
                
                # 
                response = cmd_subprocess().execute_update_subprocess(input_resource,sparqlQuery)
                print(f'taille de résultat {response.stdout.__sizeof__()}')
                if response.stdout.__sizeof__() > 0:                    
                    if os.path.exists(tmp_file):
                        os.remove(tmp_file)

                    with open(tmp_file,"wb") as f:
                        f.write(response.stdout) 
                
                if response.stderr.__sizeof__() > 0:
                    self.logger.warning("Le processus de enlever des uris a trouve des erreurs.")
                    self.logger.warning(response.stderr)
        return tmp_file   
             
    def __sparql_files(self,filename:str,uriResource:str,uriUpdate:str):
        # Generate Sparql Quer
        sparql_query = """
            PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
            DELETE {
                ?s ?p ?o .
                ?otherSubject ?otherPredicate ?s .
            } INSERT {
                ?parent skos:narrower <"""+uriUpdate+"""> .
                ?children skos:broader <"""+uriUpdate+"""> .
                <"""+uriUpdate+"""> skos:related ?related .
            } WHERE {
                # supprimer tous les triplets dont l'URI est sujet
                ?s ?p ?o
                VALUES ?s { <"""+uriResource+"""> }
                OPTIONAL { ?s skos:narrower|^skos:broader ?children . }
                OPTIONAL { ?s skos:broader|^skos:narrower ?parent . }
                OPTIONAL { ?s skos:related ?related . }
                OPTIONAL { ?related_incomming skos:related ?s . }
                # supprimer tous les triplets dont l'URI est objet
                OPTIONAL { ?otherSubject ?otherPredicate ?s . }
            }
        """
        file_sparql_query = open(filename,'w')
        file_sparql_query.write(sparql_query)
        file_sparql_query.close()

    def __generate_sparql_concept(self,df:pd.DataFrame) -> str:
        
        sparql_remove_path = os.path.join(self.__tmp_directory,'sparql_remove')
        if not os.path.exists(sparql_remove_path):
            os.makedirs(sparql_remove_path)
        else:
            shutil.rmtree(sparql_remove_path)
            os.makedirs(sparql_remove_path)

        for index,line in df.iterrows():
            
            URIConcept = line["Concept"]
            alignement = line["alignement_doublons"]
            libelles = line["libelles_doublons"]

            l_alignement = []
            if not pd.isna(alignement):
                str_concept = str(alignement).replace('[','').replace('],','').replace(' ','').replace('\'','')
                concepts_uris = str_concept.split(",")
                for i in concepts_uris:
                    l_alignement.append((URIConcept,i))

            l_libelles = []
            if not pd.isna(libelles):
                str_concept = str(libelles).replace('[','').replace('],','').replace(' ','').replace('\'','')
                concepts = str_concept.split(",")
                for i in concepts:
                    l_libelles.append((URIConcept,i))
                
                libelles_concepts = list(dict.fromkeys(l_libelles))
                for concept,uri in libelles_concepts:
                    sparql_file_name = os.path.join(sparql_remove_path,f'libelles_{index}.ru')
                    self.__sparql_files(sparql_file_name,concept,uri)
        

        self.logger.info(f"Répertoire de-s requête-s sparql {sparql_remove_path}")
        print(f"Répertoire de-s requête-s sparql {sparql_remove_path}")
        return sparql_remove_path
    
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
                        path_sparql = self.__generate_sparql_concept(dfPrepare)
                        #
                        # Lancemente des requêtes sparql
                        output_file = self.__filter(path_sparql)
                        # Copie le résultat dans le répertoire final
                        shutil.copy(output_file,self.output_integrate)
                        # Generer répositorie tmp 
                        
                        path_integrate = os.path.join(self.ref_directory,"integrate")
                        if os.path.exists(path_integrate):
                            shutil.rmtree(path_integrate)
                            os.makedirs(path_integrate)
                        else:
                            os.makedirs(path_integrate)

                        # Generer les concepts alignement et labels
                        getConcepts = concepts_referentiel.generate_concepts(output_file)
                        alignement_directory = os.path.join(path_integrate,"alignement")
                        if not os.path.exists(alignement_directory):
                            os.mkdir(alignement_directory)
                        getConcepts.get_alignement().to_csv(os.path.join(alignement_directory,'alignement.csv'),index=False)
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