import pandas as pd
import spacy
from spacy.tokens import Doc

# 
#spacy.cli.download("en_core_web_lg")
nlp_referentiel = spacy.load("en_core_web_lg")
nlp_others_referentiel = spacy.load("en_core_web_lg")

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

class semantique(dataset):

    def __init__(self) -> None:
        super().__init__()
    
    def __set_languisticque_documentation_refrentiel(sel,liste_mots:list) -> list:
        return Doc(nlp_referentiel.vocab,words=liste_mots)        

    def __list_mots(self,mots_list:list) -> list:

        document = Doc(nlp_others_referentiel.vocab,words=mots_list)
        return [mots for mots in document]

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
                description_output = pd.Series("A EXCLURE",self.__get_concepts(dffind_concepts))
            if dffind_concepts.size == 1:
                description_output = pd.Series("A EXCLURE",dffind_concepts[dffind_concepts.columns[0]].iloc[0])
            if dffind_concepts.size == 0:
               description_output = pd.Series("NEUTRE","")
        return description_output
    
    def get_relation(self,column_name:str,label:str,jugement:str) -> pd.DataFrame:
        
        self.datasetPivot[[label,jugement]] =  self.datasetPivot[column_name].apply(self.__evaluate_linguistique)
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
                df = val.get_relation("prefLabel_fr","Label_fr_jugement","Label_fr_comment")
        return df
            
    def __generate_prefLabel_en(self) -> pd.DataFrame:
        df = None
        if len(self.get_preflabel_en_dataset()) > 0:
            dfInput = self.referentiel[["Concept","prefLabel_en"]]
            dfOper = dfInput[~dfInput["prefLabel_en"].isna()].copy()
            if dfOper.size > 0:
                val = validate_referentiel(dfOper,self.dataset[["Concept","prefLabel_en"]],self.get_preflabel_en_dataset())
                df = val.get_relation("prefLabel_en","Label_en_jugement","Label_en_comment")
        return df

    def __generate_prefLabel_es(self) -> pd.DataFrame:
        df = pd.DataFrame()
        if len(self.get_preflabel_es_dataset()) > 0:
            dfInput = self.referentiel[["Concept","prefLabel_es"]]
            dfOper = dfInput[~dfInput["prefLabel_en"].isna()].copy()
            if dfOper.size > 0:
                val = validate_referentiel(dfOper,self.dataset[["Concept","prefLabel_es"]],self.get_preflabel_es_dataset())
                df = val.get_relation("prefLabel_es","Label_es_jugement","Label_es_comment")
        return df
    
    def __generate_altLabel(self) -> pd.DataFrame:
        df = pd.DataFrame()
        if len(self.get_altlabel_dataset()) > 0:
            dfInput = self.referentiel[["Concept","altLabel"]]
            dfOper = dfInput[~dfInput["altLabel"].isna()].copy()
            if dfOper.size > 0:
                val = validate_referentiel(dfOper,self.dataset[["Concept","altLabel"]],self.get_altlabel_dataset())
                df = val.get_relation("altLabel","altLabel_jugement","altLabel_comment")                                 
        return df
        
    def libelles_referentiel(self) -> pd.DataFrame:

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
        if not df_fr.empty:
            print(f"Résultat des labes en Français {df_fr.size}")
            df_fr.drop("prefLabel_fr",axis=1,inplace=True)
            #dfReferentiel = dfReferentiel.join(df_fr.set_index("Concept"),on="Concept")
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_fr,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")
        else:
            dfReferentiel["label_jugement_fr"] = "A INCLURE"
            print(f"On n'a trouve pas des information dans la langue Français.")
        # Anglais    
        if not df_en.empty:
            print(f"Résultat des labes en Anglais {df_en.size}")
            df_en.drop("prefLabel_en", axis=1,inplace=True)
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_en,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")
        else:
            dfReferentiel["label_jugement_en"] = "A INCLURE"
            print(f"On n'a trouve pas des information dans la langue Anglais.")
        # Espagnol
        if not df_es.empty:
            print(f"Résultat des labes en Français {df_fr.size}")
            df_fr.drop("prefLabel_es",axis=1,inplace=True)
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_es,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")         
        else:
            dfReferentiel["label_jugement_es"] = "A INCLURE"
            print(f"On n'a trouve pas des information dans la langue Espagnol.") 
        # alt Label
        if not df_altLabel.empty:
            print(f"Résultat des synonymes {df_altLabel.size}")
            df_altLabel.drop("altLabel",axis=1,inplace=True)
            dfReferentiel = pd.merge(left=dfReferentiel,
                                right=df_altLabel,
                                how="left",
                                left_on="Concept",
                                right_on="Concept")
        else:
            dfReferentiel["label_jugement_fr"] = "A INCLURE"

        #dfReferentiel.to_csv('Result_libelles.csv',index=False)
        return dfReferentiel