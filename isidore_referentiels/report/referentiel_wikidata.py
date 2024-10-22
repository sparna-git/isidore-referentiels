import pandas as pd
import logging
from pathlib import Path


class getWikidata:

    def __init__(self,referentiel:pd.DataFrame,allRef:pd.DataFrame):
        self.referentiel = referentiel
        self.__dataset_wikidata = allRef

    def __get_concepts(self,df:pd.DataFrame) -> str:

        dfAgg = df.groupby(df["Concept"])[df["NumberId"]].apply(list).reset_index()
        return dfAgg["Concept"].iloc[0]

    def __eval_wikidata(self,NumberId) -> str:
        
        str_reponse = pd.Series()
        dfReponse = self.__dataset_wikidata[self.__dataset_wikidata.NumberId.isin(NumberId)]
        if dfReponse.size > 1:
            description_output = self.__get_concepts(dfReponse)
            str_reponse = pd.Series("A EXCLURE", description_output)
        if dfReponse.size == 1:
            description_output = dfReponse[dfReponse["Concept"]].iloc[0]
            str_reponse = pd.Series("A EXCLURE", description_output)
        if dfReponse.size == 0:
            str_reponse = pd.Series("NEUTRE", "")
        return str_reponse

    def __set_referentiel(self) -> pd.DataFrame:

        # 
        self.referentiel["NumberId"] = self.referentiel.URIWikidata.str.split("/",expand=True)[max]
        #
        # chercher le number Id dans le joué des données de tous les referentiel
        # récuperer les données du résultat
        self.referentiel[["wikidata","wikidata_Exception"]] = self.referentiel.NumberId.apply(self.__eval_wikidata)
        # 
        return self.referentiel
    
    def get_information_wikidata(self):
        return self.__set_referentiel()