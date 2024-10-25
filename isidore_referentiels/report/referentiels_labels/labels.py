import pandas as pd
import os

'''
Créer les dataset du Referentiel et le dataset de tous les referentiels 
'''
class dataset:

    def __init__(self,referentiel:pd.DataFrame,dfallReferentiel:pd.DataFrame) -> None:
        self.__df_allReferentiel = dfallReferentiel #pd.read_csv(r"C:\Users\thoma\Documents\04_Test\Python\Referentiel_lcsh.csv",dtype='string',delimiter=',')
        self.__df_Referentiel = referentiel #pd.read_csv(r"C:\Users\thoma\Documents\04_Test\Python\Referentiel_bne.csv",dtype='string',delimiter=',')

    def __set_preflabel_fr(self,df:pd.DataFrame) -> list:
        return df[~df['prefLabel_fr'].isna()]['prefLabel_fr'].to_list()

    def __set_preflabel_en(self,df:pd.DataFrame) -> list:
        return df[~df['prefLabel_en'].isna()]['prefLabel_en'].to_list()
    
    def __set_preflabel_es(self,df:pd.DataFrame) -> list:
        return df[~df['prefLabel_es'].isna()]['prefLabel_es'].to_list()
    
    def __set_altlabel(self,df:pd.DataFrame) -> list:
        return df[~df['altLabel'].isna()]['altLabel'].to_list()
    
    def get_preflabel_fr_dataset(self) -> list:
        return self.__set_preflabel_fr(self.__df_allReferentiel)
    
    def get_preflabel_en_dataset(self) -> list:
        return self.__set_preflabel_en(self.__df_allReferentiel)
    
    def get_preflabel_es_dataset(self) -> list:
        return self.__set_preflabel_es(self.__df_allReferentiel)
    
    def get_altlabel_dataset(self) -> list:
        return self.__set_altlabel(self.__df_allReferentiel)
    
    def get_Referentiel(self) -> pd.DataFrame:
        return self.__df_Referentiel

    def get_dataset_referentiels(self) -> pd.DataFrame:
        return self.__df_allReferentiel

class validate_referentiel:

    def __init__(self,datasetPivot:pd.DataFrame,dataset:pd.DataFrame,dataset_source:list):
        self.datasetPivot = datasetPivot
        self.dataset = dataset
        self.source = dataset_source

    def __get_concepts(self,df:pd.DataFrame) -> str:

        dfAgg = df.groupby(df.columns[1])[df.columns[0]].apply(list).reset_index()
        return dfAgg[dfAgg.columns[1]].iloc[0]

    def __evaluate_linguistique(self,input:str):

        description_output = None
        qa_input = input.lstrip("  ")
        if qa_input in self.source:
            #description_output = input
            dffind_concepts = self.dataset[self.dataset[self.dataset.columns[1]].isin([qa_input])]
            if dffind_concepts.size > 1:
                description_output = ''.join(self.__get_concepts(dffind_concepts))
            if dffind_concepts.size == 1:
                description_output = ''.join(dffind_concepts[dffind_concepts.columns[0]].iloc[0])
            if dffind_concepts.empty:
                description_output = "Autre"
        return description_output
    
    def get_relation(self,column_name:str,label:str) -> pd.DataFrame:
        
        self.datasetPivot[label] =  self.datasetPivot[column_name].apply(self.__evaluate_linguistique)
        return self.datasetPivot

"""
Generate les doublons du Referentiel 
Add les suivi colonnes:

"""
class libelles(dataset):

    def __init__(self, referentiel: pd.DataFrame, dfallReferentiel: pd.DataFrame) -> None:
        super().__init__(referentiel, dfallReferentiel)
        self.referentiel = self.get_Referentiel()
        self.dataset = self.get_dataset_referentiels()

    def __generate_prefLabel_fr(self) -> pd.DataFrame:
        df = pd.DataFrame()
        if len(self.get_preflabel_fr_dataset()) > 0:
            dfInput = self.referentiel[["Concept","prefLabel_fr"]]
            dfOper = dfInput[~dfInput["prefLabel_fr"].isna()].copy()
            if dfOper.size > 0:

                val = validate_referentiel(dfOper,self.dataset[["Concept","prefLabel_fr"]],self.get_preflabel_fr_dataset())
                df = val.get_relation("prefLabel_fr","Label_fr")
        return df
            
    def __generate_prefLabel_en(self) -> pd.DataFrame:
        df = None
        if len(self.get_preflabel_en_dataset()) > 0:
            dfInput = self.referentiel[["Concept","prefLabel_en"]]
            dfOper = dfInput[~dfInput["prefLabel_en"].isna()].copy()
            if dfOper.size > 0:
                val = validate_referentiel(dfOper,self.dataset[["Concept","prefLabel_en"]],self.get_preflabel_en_dataset())
                df = val.get_relation("prefLabel_en","Label_en")
        return df

    def __generate_prefLabel_es(self) -> pd.DataFrame:
        df = pd.DataFrame()
        if len(self.get_preflabel_es_dataset()) > 0:
            dfInput = self.referentiel[["Concept","prefLabel_es"]]
            dfOper = dfInput[~dfInput["prefLabel_es"].isna()].copy()
            if dfOper.size > 0:
                val = validate_referentiel(dfOper,self.dataset[["Concept","prefLabel_es"]],self.get_preflabel_es_dataset())
                df = val.get_relation("prefLabel_es","Label_es")
        return df
    
    def __generate_altLabel(self) -> pd.DataFrame:
        df = pd.DataFrame()
        if len(self.get_altlabel_dataset()) > 0:
            dfInput = self.referentiel[["Concept","altLabel"]]
            dfOper = dfInput[~dfInput["altLabel"].isna()].copy()
            if dfOper.size > 0:
                val = validate_referentiel(dfOper,self.dataset[["Concept","altLabel"]],self.get_altlabel_dataset())
                df = val.get_relation("altLabel","alt_Label")                                 
        return df
        
    def __eval_result(self,r) -> str:

        label_fr = r["Label_fr"]
        label_en = r["Label_en"]
        label_es = r["Label_es"]
        label = r["alt_Label"]

        response = "Autre"
        if (label_fr != "Autre") and (not pd.isna(label_fr)):
            response = 'A EXCLURE'
        
        if label_en != "Autre" and (not pd.isna(label_en)):
            response = 'A EXCLURE'
        
        if label_es is not None:
            if label_es != "Autre":
                response = 'A EXCLURE'
            
        if label != "Autre" and (not pd.isna(label)):
            response = 'A EXCLURE'

        return response
    
    def __eval_comment(self,r) -> str:

        label_fr = r["Label_fr"]
        label_en = r["Label_en"]
        label_es = r["Label_es"]
        label = r["alt_Label"]

        fr = ""
        en = ""
        es = ""
        l = ""
        
        if (label_fr != "Autre") and (not pd.isna(label_fr)):
            fr = str(label_fr)+','
        else:
            fr = ""
        
        if label_en != "Autre" and (not pd.isna(label_en)):
            en = str(label_en)+','
        else:
            en = ""

        if label_es != "Autre" and label_es is not None:
            es = str(label_es)+','
        else:
            es = ""
            
        if label != "Autre" and (not pd.isna(label)):
            l = es + str(label)
        else:
            l = ""
        
        return fr + en + es + l

    def libelles_referentiel(self,directoryTmp:str) -> pd.DataFrame:

        print("Start process.............")
        print("Chercher information par chaque langue ['fr','en','es'] et synonymes .......")
        print("Créer information en Français")
        df_fr = self.__generate_prefLabel_fr()
        print("Créer information en Anglais")
        df_en = self.__generate_prefLabel_en()
        print("Créer information en langue Espagnol")
        df_es = self.__generate_prefLabel_es()
        print("Créer information des synonymes")
        df_altLabel = self.__generate_altLabel()

        # 
        dfReferentiel = self.referentiel
        # Français
        print(f"Résultat des labes en Français {df_fr.size}")
        if not df_fr.empty:
            df_fr.drop("prefLabel_fr",axis=1,inplace=True)
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_fr,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")
            dfReferentiel
        else:
            dfReferentiel["Label_fr"] = "Autre"
            print(f"On n'a trouve pas des information dans la langue Français.")
        # Anglais   
        print(f"Résultat des labes en Anglais {df_en.size}")
        if not df_en.empty:
            df_en.drop("prefLabel_en", axis=1,inplace=True)
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_en,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")
        else:
            dfReferentiel["Label_en"] = "Autre"
            print(f"On n'a trouve pas des information dans la langue Anglais.")
        # Espagnol
        print(f"Résultat des labes en Français {df_fr.size}")
        if not df_es.empty:
            df_es.drop("prefLabel_es",axis=1,inplace=True)
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_es,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")         
        else:
            dfReferentiel["Label_es"] = "Autre"
            print(f"On n'a trouve pas des information dans la langue Espagnol.") 
        # alt Label 
        print(f"Résultat des synonymes {df_altLabel.size}")
        if not df_altLabel.empty:
            df_altLabel.drop("altLabel",axis=1,inplace=True)
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_altLabel,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")
        else:
            dfReferentiel["alt_Label"] = "Autre"

        # 
        dfReferentiel["libelles"] = dfReferentiel.apply(self.__eval_result,axis=1)
        dfReferentiel["libelles_doublons"] = dfReferentiel.apply(self.__eval_comment,axis=1)
        #dfReferentiel.to_csv(os.path.join(directoryTmp,'libelles_match.csv'),index=False)

        dfOutput = dfReferentiel[["Concept","libelles","libelles_doublons"]].drop_duplicates()

        # Créer le fichier de travaille
        # Enlever les colonnes que ne seront pas à utiliser
        return dfOutput