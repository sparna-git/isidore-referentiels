import pandas as pd
import numpy as np
import logging

class libelles_doublons:

    def __init__(self,dfReferentiel:pd.DataFrame,dfDataset:pd.DataFrame):
        dfReferentiel.fillna('',inplace=True)
        dfDataset.fillna('',inplace=True)

        self.referentiel = dfReferentiel
        self.referentiel["label"] = self.referentiel["label"].apply(lambda x:x.strip())

        self.dataset = dfDataset
        self.dataset["label"] = self.dataset["label"].apply(lambda x:x.strip())        
        self.dataset.rename({"concept":"uri"},axis=1,inplace=True)
        
        self.logger = logging.getLogger(__name__)

    def __evaluate_result(self,value:str) -> str:

        if value != "AUTRE":
            return "A EXCLURE"
        else:
            return "AUTRE"

    def chercher_libelle(self) -> pd.DataFrame:
        
        # Merge les données
        return pd.merge(self.referentiel,self.dataset,how="left",left_on=["label","langue"],right_on=["label","langue"])

    def resources_libelles(self) -> pd.DataFrame:

        dfExcel = self.chercher_libelle()
        
        dfExcel.drop(labels=["typeLabel_y"],axis=1,inplace=True)
        dfExcel.rename({"typeLabel_x":"typeLabel"},axis=1,inplace=True)
        #
        df = dfExcel[["concept","uri",]]
        dfOperation = df.replace(np.nan,'AUTRE',regex=True).copy()
        dfOperation["libelles_doublons"] = dfOperation["uri"]

        dfResult = dfOperation[["concept","libelles_doublons"]]
        dfAgg = dfResult.groupby("concept")["libelles_doublons"].unique().apply(list).reset_index()
        dfAgg["libelles_doublons"] = dfAgg["libelles_doublons"].apply(lambda x: ' '.join(x))        

        dfAgg["libelles"] = dfAgg["libelles_doublons"].apply(self.__evaluate_result)
        dfAgg["libelles_doublons"] = dfAgg["libelles_doublons"].apply(lambda x : x.replace("AUTRE",""))
        
        dfOutput = dfAgg[["concept","libelles","libelles_doublons"]]

        return dfExcel, dfOutput