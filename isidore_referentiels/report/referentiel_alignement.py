import pandas as pd
import logging
import numpy as np

class getAlignement:

    def __init__(self,referentiel:pd.DataFrame,allRef:pd.DataFrame):
        self.referentiel = referentiel
        
        # Add concept in dataset comment une URI
        
        sDataset = pd.Series(allRef["concept"].unique()).drop_duplicates()
        dict_new_row = {"concept":sDataset.to_list(),"uriAlignement":sDataset.to_list()}
        dfAux = pd.DataFrame(dict_new_row)
        
        dfDataset = pd.concat([allRef, dfAux], ignore_index = True)

        self.__alignement_dataset = dfDataset
        self.__alignement_dataset.rename({"concept":"uri"},axis=1,inplace=True)
        
        self.logger = logging.getLogger(__name__)

    def __get_concepts(self,df:pd.DataFrame) -> str:

        sConcepts = pd.Series(df["concept"]).drop_duplicates()
        
        return '|'.join(sConcepts)

    def __eval_doublons(self,urisAlignements:list) -> str:
        
        str_reponse = None
        dfReponse = self.__alignement_dataset[self.__alignement_dataset.uriAlignement.isin(urisAlignements)]
        if dfReponse.shape[0] > 1:
            description_output = self.__get_concepts(dfReponse)
            str_reponse = description_output
        if dfReponse.shape[0] == 1:
            description_output = ''.join(dfReponse["concept"].iloc[0])
            str_reponse = description_output
        return str_reponse

    def __dataset_referentiel(self) -> pd.DataFrame:

        dataset = pd.DataFrame()
        concepts = pd.Series(self.referentiel.concept).drop_duplicates().to_list()
        data = []
        for conceptId in concepts:
            df = self.referentiel[self.referentiel["concept"].isin([conceptId])]
            #
            alignements = pd.Series(df.uriAlignement).drop_duplicates().to_list()
            alignements.append(conceptId)

            #
            iConcept = conceptId
            alignement_doublons = self.__eval_doublons(alignements)
            jugement = None
            if alignement_doublons is not None: 
                jugement = 'A EXCLURE' 
            else:
                jugement =  'AUTRE'
            alignement = jugement

            data.append((iConcept,alignement,alignement_doublons))
        
        if len(data) > 0:
            dataset = pd.DataFrame(data,columns=['concept','alignement','alignement_doublons'])
        
        return dataset

    def __match_referentiel_alignement(self) -> pd.DataFrame:

        return pd.merge(self.referentiel,self.__alignement_dataset,on=["uriAlignement"],how="left")

    def __evaluate_result(self,value:str) -> str:

        if value != "AUTRE":
            return "A EXCLURE"
        else:
            return "AUTRE"
    
    def get_information_alignement(self) -> pd.DataFrame:
        
        dfExcel = self.__match_referentiel_alignement()
        #
        df = dfExcel[["concept","uri",]]
        dfOperation = df.replace(np.nan,'AUTRE',regex=True).copy()
        dfOperation["alignement_doublons"] = dfOperation["uri"]

        dfResult = dfOperation[["concept","alignement_doublons"]]

        dfAgg = dfResult.groupby("concept")["alignement_doublons"].unique().apply(list).reset_index()
        
        dfAgg["alignement_doublons"] = dfAgg["alignement_doublons"].apply(lambda x : ' '.join(x))
        dfAgg["alignement"] = dfAgg["alignement_doublons"].apply(self.__evaluate_result)
        dfAgg["alignement_doublons"] = dfAgg["alignement_doublons"].apply(lambda x : x.replace("AUTRE",""))
        dfOutput = dfAgg[["concept","alignement","alignement_doublons"]]

        return dfExcel, dfOutput