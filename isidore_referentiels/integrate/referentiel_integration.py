import pandas as pd
import numpy as np
import os
import logging
import shutil
from pathlib import Path
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
from isidore_referentiels.process.Tools import tools
from isidore_referentiels.report.concepts import concepts_referentiel
import time
from datetime import datetime

#
t = time.time()
fmt = time.gmtime(t)


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
        
        integration_ref = RefInfo.get_integrate()
        
        # Récupérer le fichier csv
        self.report = ''.join(integration_ref["report"])
        # Récupérer le fichier TTL du referentiel
        filename = [file for file in os.listdir(Path(''.join(integration_ref["data"])).absolute())][0] 
        self.data = os.path.join(Path(''.join(integration_ref["data"])).absolute(),filename)
        
        output_file = Path(''.join(integration_ref["output"])).absolute()
        if not os.path.exists(output_file):
            os.makedirs(output_file)
        else:
            shutil.rmtree(output_file)
            os.makedirs(output_file)
        # Répertoire du fichier final
        self.__Referentiel_resultat = output_file 
        
        self.logger = logging.getLogger(__name__)
        # Ecrir dans le log de tous les référentiels
        self.rapport = RefInfo.set_referentiels_log()

    def __generate_table(self,resource:str,fextension:str) -> pd.DataFrame:

        dfOutput = pd.DataFrame()
        if fextension == ".csv":
            dfOutput = pd.read_csv(resource,dtype='str')
        if (fextension == ".xslx") or (fextension == ".xsl"):
            dfOutput = pd.read_excel(resource)
        
        return dfOutput
    
    def __execute_process(self,sparqlQuery:list) -> str:

        path_file = os.path.join(self.__tmp_directory,f'{self.__referentiel}.ttl')
        nCount = 0
        for sparql in sparqlQuery:
                
            path_sparql = Path(sparql).absolute()
            self.logger.info(f'Requête sparql: {sparql}')
            print(f'Requête sparql: {sparql}')

            path_resource = None
            if nCount == 0:
                path_resource = self.data
                nCount += 1
            else: 
                path_resource = path_file
            #
            response = cmd_subprocess().execute_update_subprocess(path_resource,path_sparql)
            
            # Ecrir dans un fichier
            if response.stdout:
                if os.path.exists(path_file):
                    os.remove(path_file)

                with open(path_file,"wb") as f:
                    f.write(response.stdout)
                    f.close()
                self.logger.info(f'Taille du fichier: {response.stdout.__sizeof__()}')
            else:
                path_file = path_resource
            
            
            if response.stderr:
                self.logger.warning("Le processus de suppression d'URI a rencontré des erreurs.")
                self.logger.warning(response.stderr)
        
        return path_file
    
    def __execute_process_vectorize(self,sparqlQuery,path_file) -> str:
        
        print(f'Requête sparql: {sparqlQuery}')
        self.logger.info(f'Requête sparql: {sparqlQuery}')

        path_resource = None
        if "_1.ru" in sparqlQuery:
            path_resource = self.data            
        else: 
            path_resource = path_file
        #
        response = cmd_subprocess().execute_update_subprocess(path_resource,sparqlQuery)
        
        # Ecrir dans un fichier
        if response.stdout:
            if os.path.exists(path_file):
                os.remove(path_file)

            with open(path_file,"wb") as f:
                f.write(response.stdout)
                f.close()
            self.logger.info(f'Taille du fichier: {response.stdout.__sizeof__()}')
        else:
            path_file = path_resource        
        
        if response.stderr:
            self.logger.warning("Le processus de suppression d'URI a rencontré des erreurs.")
            self.logger.warning(response.stderr)
        
        return path_file
    
    def __sparql_query(self,input:list) -> list:

        path_sparql = os.path.join(self.__tmp_directory,"sparql")
        if os.path.exists(path_sparql):
            shutil.rmtree(path_sparql)
            os.makedirs(path_sparql)
        else:
            os.makedirs(path_sparql)

        path_sparql_fles = []
        list_of_concepts = []
        nCount = 0
        if len(input) > 100:
            import itertools as it
            n = 100 # Nombre de Concepts dans une requête
            list_of_concepts = list(it.batched(input,n))

            for concepts in list_of_concepts:
                list_uri_concepts = ' '.join([f"<{concept}>" for concept in concepts])
                # Nom de referentiel + un consécutif
                nCount += 1
                pathFile = os.path.join(path_sparql,f'{self.__referentiel}_{nCount}.ru')
                f = open(pathFile,'w')
                # Generate Sparql Quer
                sparql_query = """
                    PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
                    DELETE {
                        ?s ?p ?o .
                        ?otherSubject ?otherPredicate ?s .
                    } 
                    #INSERT {
                    #    ?parent skos:narrower ?children .
                    #    ?children skos:broader ?parent .                
                    #} 
                    WHERE {
                        # supprimer tous les triplets dont l'URI est sujet
                        ?s ?p ?o
                        VALUES ?s { """+list_uri_concepts+""" }
                        #OPTIONAL { ?s skos:narrower|^skos:broader ?children . }
                        #OPTIONAL { ?s skos:broader|^skos:narrower ?parent . }
                        # supprimer tous les triplets dont l'URI est objet
                        OPTIONAL { ?otherSubject ?otherPredicate ?s . }
                    }
                """
                f.write(sparql_query)
                path_sparql_fles.append(pathFile)
        else:
            pathFile = os.path.join(path_sparql,f'sparql_integrate_{self.__referentiel}_1.ru')
            f = open(pathFile,'w')
            list_uri_concepts = ' '.join([f"<{concept}>" for concept in input])
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
                        VALUES ?s { """+list_uri_concepts+""" }
                        OPTIONAL { ?s skos:narrower|^skos:broader ?children . }
                        OPTIONAL { ?s skos:broader|^skos:narrower ?parent . }
                        # supprimer tous les triplets dont l'URI est objet
                        OPTIONAL { ?otherSubject ?otherPredicate ?s . }
                    }
                """
            f.write(sparql_query)
            path_sparql_fles.append(pathFile)

        return path_sparql_fles
    
    def __read_csv_file(self) -> pd.DataFrame:        
        
        objTimeStart = datetime.now().strftime("%d/%m/%Y %H:%M")

        for root,directories,files in os.walk(self.report):
            for file in files:
                pFile = os.path.join(root,file)
                if os.path.isfile(pFile):
                    file_name, file_extension = os.path.splitext(file)
                    dfResource = self.__generate_table(pFile,file_extension)
                    if dfResource.size > 0:
                        str_path_fichier = None
                        dfPrepare = dfResource[dfResource["jugement"] == "A EXCLURE"]
                        if not dfPrepare.empty:
                            list_sparql_query = self.__sparql_query(dfPrepare.concept.drop_duplicates().to_list())

                            # Vectorize                            
                            path_file = os.path.join(self.__tmp_directory,f'{self.__referentiel}.ttl')
                            fileOutput = np.vectorize(self.__execute_process_vectorize,otypes=[list])(list_sparql_query,path_file)
                            path_output = None
                            if len(fileOutput) == 1:
                                path_output = "".join(fileOutput)
                            else:
                                unique = set(fileOutput)
                                path_output = "".join(unique)

                            str_path_fichier = path_output
                            shutil.copy(path_output,self.__Referentiel_resultat)
                        else:
                            # récuperer le nom du fichier
                            str_path_fichier =self.data
                            shutil.copy(self.data,self.__Referentiel_resultat)
                        
                        if str_path_fichier is not None:
                            self.logger.info(f'Le fichier de résultat est stocké dans le répertoire {self.__Referentiel_resultat}')
                            print(f'Le fichier de résultat est stocké dans le répertoire {self.__Referentiel_resultat}')

                            # Generer les concepts alignement et labels
                            getConcepts = concepts_referentiel.generate_concepts(str_path_fichier)
                            alignement_directory = tools.new_directory(self.__Referentiel_resultat,"alignement")
                            getConcepts.get_alignement().to_csv(os.path.join(alignement_directory,'alignement.csv'),index=False)
                            # Generate les concepts de labels
                            labels_directory = tools.new_directory(self.__Referentiel_resultat,"libelles")
                            getConcepts.get_labels().to_csv(os.path.join(labels_directory,'libelles.csv'),index=False)

                            # Long
                            file_output = Path(os.path.join(self.__Referentiel_resultat,f"{self.__referentiel}.ttl")).absolute()
                            path_Query = Path("isidore_referentiels/process/sparql_nb_Concepts.rq").absolute()
                            nbConcepts = cmd_subprocess().execute_query_concepts(file_output,path_Query,"CSV")
                            # Ecrir dans le long        
                            objTimeEnd = datetime.now().strftime("%d/%m/%Y %H:%M")
                            sLogReferentiel = f"{objTimeStart} => {objTimeEnd}|{self.__referentiel}|integrate|{self.__Referentiel_resultat}|{nbConcepts}"
                            with open(self.rapport,"a+") as fLog:
                                fLog.write("\n")
                                fLog.write(sLogReferentiel)

                        else:
                            print("Erreur lors de la génération des ressources (libellés + alignements)")
                            self.logger.warning("Erreur lors de la génération des ressources (libellés + alignements)")
                       
                    else:
                        self.logger.warning(f"La ressource {pFile} n'a pas le format attendu [csv,xls,xlsx]")
                        print(f"La ressource {pFile} n'a pas le format attendu [csv,xls,xlsx]")
                   
    def filter_referentiel(self):

        self.logger.info(f"* * * * Intégration du référentiel {self.__referentiel.upper()} [Integration] * * * *")
        print(f"* * * * Intégration du référentiel {self.__referentiel.upper()} [Integration] * * * *")

        print(f"Répertoire de résultat de l'étape de report: {self.__Referentiel_resultat} ")

        self.__read_csv_file()