import pandas as pd
import logging

class getAlignement:

    def __init__(self,referentiel:pd.DataFrame,allRef:pd.DataFrame):
        self.referentiel = referentiel
        self.__alignement_dataset = allRef
        self.logger = logging.getLogger(__name__)

    def __get_concepts(self,df:pd.DataFrame) -> str:

        sConcepts = pd.Series(df["Concept"]).drop_duplicates()
        
        """
        dfAgg = df.groupby(df["Concept"])[df["uriAlignement"]].apply(list).reset_index()
        getConcepts = ""
        if dfAgg.shape[0] > 1:
            getConcepts = ''.join(dfAgg["Concept"].to_list())
        else:
            getConcepts = ''.join(dfAgg["Concept"].iloc[0])
            """
        return ''.join(sConcepts)

    def __eval_alignement(self,uriAlignement) -> str:
        
        str_reponse = None
        dfReponse = self.__alignement_dataset[self.__alignement_dataset.uriAlignement.isin([uriAlignement])]
        if dfReponse.shape[0] > 1:
            description_output = self.__get_concepts(dfReponse)
            str_reponse = description_output
        if dfReponse.shape[0] == 1:
            description_output = ''.join(dfReponse["Concept"].iloc[0])
            str_reponse = description_output
        return str_reponse

    def __set_referentiel(self) -> pd.DataFrame:

        # chercher le number Id dans le joué des données de tous les referentiel
        # récuperer les données du résultat
        self.referentiel["alignement_doublons"] = self.referentiel.apply(lambda row : self.__eval_alignement(row["uriAlignement"]),axis=1)
        self.referentiel["alignement"] = self.referentiel["alignement_doublons"].apply(lambda x : 'AUTRE' if x is None else 'A EXCLURE')

        return self.referentiel
    
    def get_information_alignement(self):
        return self.__set_referentiel()