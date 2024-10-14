import os
import pandas as pd
import logging
from io import BytesIO
from pathlib import Path
import glob
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess as cs
from isidore_referentiels.process.Tools import tools

class algorithms_referentiels:

    def __init__(self, RefInfo) -> None:
        self.report = RefInfo.get_Report()
        
        self.logger = logging.getLogger(__name__)
        self.__Referentiel_Directory = RefInfo.get_referentiel_directory() # Exemple: Work\lcsh
        self.algorithms = self.report["algorithms"]

    def __set_algorithms_referentiels(self) -> list:

        # 
        df_DataSet = []
        Directory_Work = Path(self.__Referentiel_Directory).parent.absolute()
        for resource in glob.glob(f'{Directory_Work}/**/*.csv', recursive=True):
            for aConfig in self.algorithms:
                if aConfig in resource:
                    df = pd.read_csv(resource)
                    df_DataSet.append((aConfig,df))
        return df_DataSet
    
    def get_wikidata_dataset(self) -> pd.DataFrame:

        list_wikidata = [ wikidata[1] for wikidata in self.__set_algorithms_referentiels() if wikidata[0] == 'Wikidata' ]
        dfWikidata_Referentiels = pd.concat(list_wikidata)
        dfWikidata_Referentiels['NumberId'] = dfWikidata_Referentiels.URIWikidata.str.split("/",expand=True)[max]

        #dfWikidata_Referentiels.drop("URIWikidata", inplace=True, axis=1)

        return dfWikidata_Referentiels
    
    def get_Labels_dataset(self) -> pd.DataFrame:

        list_labels = [ labels[1] for labels in self.__set_algorithms_referentiels() if labels[0] == 'Labels' ]
        dflabels_Referentiels = pd.concat(list_labels)

        return dflabels_Referentiels

                
class report(algorithms_referentiels):

    def __init__(self, RefInfo) -> None:
        super().__init__(RefInfo)
        self.__Referentiel = RefInfo.get_Referentiel()
        #
        self.__Referentiel_Directory = RefInfo.get_referentiel_directory() # Exemple: Work\lcsh
        # Temp Directory
        __Tmpdir = RefInfo.get_TmpDirectory()
        self.__Tmp_Dir = tools.new_directory(__Tmpdir,"Report")
       #
        self.__resource = Path(os.path.join(self.__Referentiel_Directory,self.report["data"])).absolute()
        
        # Données Wikidata
        self.__dfWikidata = self.get_wikidata_dataset()
        # Données Labels
        self.__dfLabels = self.get_Labels_dataset()
        self.__column_Labels = self.__dfLabels[["prefLabel_fr","prefLabel_en","prefLabel_es","altLabel"]]
        self.__dfLabels.to_csv('Referentiels.csv',index=False)
        self.logger = logging.getLogger(__name__)

    """ 
    Processus pour recuperer les données à partir d'une requête SPARQL
    Le résultat sera stocke dans une fichier dataframe
    Le méthode es private
    """
    def __get_data(self,SPARQLQuery:str) -> pd.DataFrame:

        response = cs.execute_query_subprocess(self,self.__resource,SPARQLQuery,"CSV")
        if response:
            if response.stdout:
                df = pd.read_csv(BytesIO(response.stdout))
                return df
            
            # Write in log Exceptions
            if response.stderr:
                self.logger.error("Error:")
                self.logger.warning(response.stderr)
        return
    
    def __get_concepts(self) -> pd.DataFrame:
        # Lire le fichier de requête pour générer une jeu de données
        sparql_concepts = Path(__file__).with_name('sparql_concept.rq')
        # Stocker le résultat dans une dataframe 
        dfConcepts = self.__get_data(sparql_concepts)

        return dfConcepts
    
    def __set_wikidata(self) -> pd.DataFrame:

        # Lire le fichier de requête pour générer une jeu de données
        sparql_wikidata = Path(__file__).with_name('sparql_wikidata.rq')
        # Stocker le résultat dans une dataframe 
        dfWikidata = self.__get_data(sparql_wikidata)        
        
        return dfWikidata
        
    def __set_libelles(self) -> pd.DataFrame:

        # Lire le fichier de requête pour générer une jeu de données
        sparql_libelles = Path(__file__).with_name('sparql_analyze_referentiel.rq')
        # Stocker le résultat dans une dataframe 
        dfLibelles = self.__get_data(sparql_libelles)

        return dfLibelles

    def __get_labelles(self) -> pd.DataFrame:
        return self.__set_libelles()    
    #[dfReferentiel["prefLabel_fr","prefLabel_en","prefLabel_es","altLabel"]]
    #in_prefLabel_fr:str,in_prefLabel_en:str,in_prefLabel_es:str,in_altLabel:str
    def __eval_labels(self,row) -> str:

        str_reponse = 'NEUTRE'
        in_prefLabel_fr = row["prefLabel_fr"]
        in_prefLabel_en = row["prefLabel_en"]
        in_prefLabel_es = row["prefLabel_es"]
        in_altLabel = row["altLabel"] 

        s = [in_prefLabel_fr,in_prefLabel_en,in_prefLabel_es,in_altLabel]
        if ~self.__column_Labels.isin(s):
            str_reponse = "A EXCLURE"
        return str_reponse

    def __set_doublons_labels(self) -> pd.DataFrame:

        # Récuperer tous les labels du Referentiel
        dfReferentiel = self.__get_labelles()
        dfReferentiel.to_csv('Referentiel.csv',index=False)
        # Récuperer tous les lables des Referentiels déjà intégrés
        dfReferentiel["Libelles"] = dfReferentiel.apply(self.__eval_labels,axis=1)
        #
        dfReferentiel.to_csv("Labels.csv",index=False)
    
    def __get_doublons_labels(self) -> pd.DataFrame:
        return self.__set_doublons_labels()

    def __eval_wikidata(self,NumberId) -> str:
        
        str_reponse = 'NEUTRE'
        response = self.__dfWikidata[self.__dfWikidata.NumberId.eq(NumberId).any()][]
        if response:
            str_reponse = 'A EXCLURE'
        
        return str_reponse

    def __set_doublons_Wikidata(self) -> pd.DataFrame:

        # Récupérer les données du referentiel
        dfWikidata = self.__set_wikidata()
        dfWikidata["NumberId"] = dfWikidata.URIWikidata.str.split("/",expand=True)[max]
        dfWikidata[["Wikidata","Wikidata_Exception"]] = dfWikidata.NumberId.apply(self.__eval_wikidata)
        dfWikidata = dfWikidata.drop(['URIWikidata','NumberId'],axis=1)
        
        return dfWikidata
    
    def __get_doublons_Wikidata(self) -> pd.DataFrame:
        return self.__set_doublons_Wikidata()
    
    def __get_file_referentiel(self) -> str:

        resource = None
        for root,directories,files in os.walk(self.__resource):
            if len(files) == 1:
                resource = os.path.join(root,''.join(files))
                break        
        return resource

    def __generate_resource(self):

        # Récuperer le nom du fichier
        self.__resource = self.__get_file_referentiel()
        print(f"Fichier: {self.__resource}")
        self.logger.info(f"Fichier: {self.__resource}")

        # 
        self.logger.info("Concepts du Referentiel")
        print("Concepts du Referentiel")
        #dfReferentiel = self.__get_concepts()

        # if "Wikidata" in self.algorithms:
        #     self.logger.info("Wikidata")
        #     print("Wikidata")
        #     dfWikidata = self.__get_doublons_Wikidata()
        #     if dfWikidata.size > 0:
        #         dfReferentiel["Wikidata"] = dfWikidata[dfWikidata["Concept"].isin(dfWikidata.Concept)]["Wikidata"]
        
        if "Labels" in self.algorithms:
            self.logger.info("Libelles")
            print("Libelles")
            self.__get_doublons_labels()

    
    def generer_report(self):

        self.logger.info(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")
        print(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")

        # 
        self.__generate_resource()