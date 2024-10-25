import pandas as pd
import logging

class getAlignement:

    def __init__(self,referentiel:pd.DataFrame,allRef:pd.DataFrame):
        self.referentiel = referentiel
        self.__alignement_dataset = allRef
        self.logger = logging.getLogger(__name__)

    def __get_concepts(self,df:pd.DataFrame) -> str:
        dfAgg = df.groupby(df["Concept"])[df["NumberId"]].apply(list).reset_index()
        return dfAgg["Concept"].iloc[0]

    def __eval_alignement(self,NumberId) -> str:
        
        str_reponse = None
        dfReponse = self.__alignement_dataset[self.__alignement_dataset.NumberId.isin([NumberId])]
        if dfReponse.shape[0] > 1:
            print('cas 1')
            description_output = ''.join(self.__get_concepts(dfReponse))
            str_reponse = description_output
        if dfReponse.shape[0] == 1:
            description_output = ''.join(dfReponse["Concept"].iloc[0])
            str_reponse = description_output
        return str_reponse

    def __set_referentiel(self) -> pd.DataFrame:

        # 
        self.referentiel["NumberId"] = self.referentiel.uriAlignement.apply(lambda x : str(x).split('/')[-1] )
        #
        # chercher le number Id dans le joué des données de tous les referentiel
        # récuperer les données du résultat
        self.referentiel["alignement_doublons"] = self.referentiel.NumberId.apply(self.__eval_alignement)
        self.referentiel["alignement"] = self.referentiel["alignement_doublons"].apply(lambda x : 'AUTRE' if x is None else 'A EXCLURE')

        dfOutput = self.referentiel[["Concept","alignement","alignement_doublons"]].drop_duplicates()

        return dfOutput
    
    def get_information_alignement(self):
        return self.__set_referentiel()