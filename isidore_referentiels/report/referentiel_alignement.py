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
        return '|'.join(sConcepts)

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
    
    def __eval_doublons(self,urisAlignements:list) -> str:
        
        str_reponse = None
        dfReponse = self.__alignement_dataset[self.__alignement_dataset.uriAlignement.isin(urisAlignements)]
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


    def __dataset_referentiel(self) -> pd.DataFrame:

        dataset = pd.DataFrame()
        concepts = pd.Series(self.referentiel.Concept).drop_duplicates().to_list()
        data = []
        for concept in concepts:
            df = self.referentiel[self.referentiel["Concept"].isin([concept])]
            #
            alignements = pd.Series(df.uriAlignement).drop_duplicates().to_list()
            alignements.append(concept)

            #
            iConcept = concept
            alignement_doublons = self.__eval_doublons(alignements)
            jugement = None
            if alignement_doublons is not None: 
                jugement = 'A EXCLURE' 
            else:
                jugement =  'AUTRE'
            alignement = jugement

            data.append((iConcept,alignement,alignement_doublons))
        
        if len(data) > 0:
            dataset = pd.DataFrame(data,columns=['Concept','alignement','alignement_doublons'])
        
        return dataset

    def get_information_alignement(self):
        return self.__dataset_referentiel() #__set_referentiel()