import os
import pandas as pd
import logging
from pathlib import Path
import glob
from .concepts.concepts_referentiel import generate_concepts
from .referentiel_wikidata import getWikidata
from isidore_referentiels.report.referentiels_labels.labels import libelles
from isidore_referentiels.process.Tools import tools

class algorithms_referentiels:

    def __init__(self, RefInfo) -> None:
        self.report = RefInfo.get_Report()
        
        print(self.report)

        self.logger = logging.getLogger(__name__)
        self.__Referentiel_Directory = RefInfo.get_referentiel_directory() # Exemple: Work\lcsh

        # Répertoires de travail pour generer les reports
        self.input_data = Path(''.join(self.report["data"])).absolute()
        # Output
        self.Output_report = Path(''.join(self.report["output"])).absolute()

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

        list_wikidata = [ wikidata[1] for wikidata in self.__set_algorithms_referentiels() if wikidata[0] == 'wikidata' ]
        df = pd.DataFrame()
        if len(list_wikidata) > 0:
            df = pd.concat(list_wikidata)
            df['NumberId'] = df.URIWikidata.str.split("/",expand=True)[max]
        return df
    
    def get_Labels_dataset(self) -> pd.DataFrame:

        list_labels = [ labels[1] for labels in self.__set_algorithms_referentiels() if labels[0] == 'labels' ]
        df = pd.DataFrame()
        if len(list_labels) > 0:
            df = pd.concat(list_labels)
        return df


class report(algorithms_referentiels):

    def __init__(self, RefInfo) -> None:
        super().__init__(RefInfo)
        
        self.__Referentiel = RefInfo.get_Referentiel()
        #
        self.__Referentiel_Directory = RefInfo.get_referentiel_directory() # Exemple: Work\lcsh
        # Temp Directory
        __Tmpdir = RefInfo.get_TmpDirectory()
        self.__Tmp_Dir = tools.new_directory(__Tmpdir,"Report")
       
        # Resource du Referentiel à traiter 
        self.__getConcepts = generate_concepts(self.input_data)
        
        # Données Wikidata
        self.__Wikidata_dataset = self.get_wikidata_dataset()
        # Données Labels
        self.__lables_dataset = self.get_Labels_dataset()
        self.logger = logging.getLogger(__name__)

    def __set_doublons_Wikidata(self) -> pd.DataFrame:

        print(f"Resource Wikidata  {self.__Wikidata_dataset.size}  ")
        dfResultWikidata = pd.DataFrame()
        if self.__Wikidata_dataset.size > 0:
            dfResultWikidata = getWikidata(self.__getConcepts.get_wikidata(),self.__Wikidata_dataset).get_information_wikidata()            
        else:
            dfResultWikidata = self.__getConcepts.get_wikidata()
            dfResultWikidata.drop("URIWikidata",axis=1,inplace=True)
            dfResultWikidata["wikidata"] = "A INCLURE"
        return dfResultWikidata 
    
    def __get_doublons_Wikidata(self) -> pd.DataFrame:
        df = self.__set_doublons_Wikidata()
        return df
    
    def __set_doublons_labels(self) -> pd.DataFrame:

        print(f"Resource Labels  {self.__lables_dataset.size}  ")
        dfReferentiel_Labels = self.__getConcepts.get_labels()
        dfResultLabels = pd.DataFrame()
        if self.__lables_dataset.size > 0:
            dfReferentiel_Labels = libelles(dfReferentiel_Labels,
                                      self.__lables_dataset)
        else:
            dfReferentiel_Labels["labels_jugement"] = "A INCLURE"
        dfResultLabels = dfReferentiel_Labels.drop(["prefLabel_fr","prefLabel_en","prefLabel_es","altLabel"],axis=1)
        return dfResultLabels

    def __get_doublons_labels(self) -> pd.DataFrame:
        return self.__set_doublons_labels()
    
    def __generate_resource(self):

        dfReferentiel = self.__getConcepts.get_resource_report()
        if "wikidata" in self.algorithms:
            print("Chercher les doublons dans le concept <<wikidata>>")
            dfWikidata = self.__get_doublons_Wikidata()
            if dfWikidata.size > 0:
                dfReferentiel = pd.merge(left=dfReferentiel,
                                    right=dfWikidata,
                                    how="left",
                                    left_on="Concept",
                                    right_on="Concept"
                                    )
                
        if "labels" in self.algorithms:
            print("Chercher les doublons dans le concept <<wikidata>>")
            dfRef_labels = self.__getConcepts.get_labels()
            dfLabels = self.__get_doublons_labels() 
            if dfLabels.size > 0:
                dfReferentiel = pd.merge(left=dfReferentiel,
                                right=dfLabels,
                                how="left",
                                left_on="Concept",
                                right_on="Concept"
                                )
            else:
                dfRef_labels["labels_jugement"] = "A INCLURE"
            
            dfReferentiel.to_csv("Label.csv",index=False)


    def generer_report(self):

        self.logger.info(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")
        print(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")

        # 
        self.__generate_resource()