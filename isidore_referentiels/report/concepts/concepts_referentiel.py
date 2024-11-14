from pathlib import Path
import pandas as pd
from io import BytesIO
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess as cs
import logging
import os

class generate_concepts:

    def __init__(self, resource) -> None:

        pathResource = None
        if os.path.isfile(resource):
            pathResource = Path(resource).absolute()
        else:
            for root,directories,files in os.walk(resource):
                if len(files) == 1:
                    pathResource = os.path.join(root,files[0])
        self.referentiel = Path(pathResource).absolute()
        self.logger = logging.getLogger(__name__)

    def __get_data(self,SPARQLQuery:str) -> pd.DataFrame:

        response = cs.execute_query_subprocess(self,self.referentiel,SPARQLQuery,"CSV")
        if response:
            if response.stdout:
                df = pd.read_csv(BytesIO(response.stdout),dtype=str)
                return df
            
            # Write in log Exceptions
            if response.stderr:
                self.logger.error("Error:")
                self.logger.warning(response.stderr)
        return
    
    def __set_generate_alignement(self) -> pd.DataFrame:
        # Lire le fichier de requête pour générer une jeu de données
        sparql_alignement = Path(__file__).with_name('sparql_alignement.rq')
        # Stocker le résultat dans une dataframe 
        dfWikidata = self.__get_data(sparql_alignement)        
        
        return dfWikidata
    
    def __set_generate_labels(self) -> pd.DataFrame:
        # Lire le fichier de requête pour générer une jeu de données
        sparql_labels = Path(__file__).with_name('sparql_analyze_referentiel.rq')
        # Stocker le résultat dans une dataframe 
        dfLibelles = self.__get_data(sparql_labels)

        return dfLibelles
    
    def __set_generate_report(self) -> pd.DataFrame:
        # Lire le fichier de requête pour générer une jeu de données
        sparql_report = Path(__file__).with_name('sparql_report.rq')
        # Stocker le résultat dans une dataframe 
        dfReport = self.__get_data(sparql_report)

        return dfReport
    
    def get_report(self) -> pd.DataFrame:
        return self.__set_generate_labels()
    
    def get_report_referentiel(self) -> pd.DataFrame:
        return self.__set_generate_report()

    def get_labels(self) -> pd.DataFrame:
        dfLabels = self.__set_generate_labels()
        df = dfLabels[["Concept","prefLabel_fr","prefLabel_en","prefLabel_es","altLabel"]]
        return df
    
    def get_alignement(self) -> pd.DataFrame:
        return self.__set_generate_alignement()