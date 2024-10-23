import os
import pandas as pd
import logging
import shutil
from pathlib import Path
import glob
from .concepts.concepts_referentiel import generate_concepts
from .referentiel_alignement import getAlignement
from isidore_referentiels.report.referentiels_labels.labels import libelles
from isidore_referentiels.process.Tools import tools

class algorithms_referentiels:

    def __init__(self, RefInfo) -> None:

        # Répertoir 
        self.Workdir = Path(RefInfo.get_Workdirectory()).absolute()

        self.report = RefInfo.get_Report()
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
        for resource in glob.glob(f'{self.Workdir}/**/*.csv', recursive=True):
            for aConfig in self.algorithms:
                if aConfig in resource:
                    df = pd.read_csv(resource)
                    df_DataSet.append((aConfig,df))
        return df_DataSet
    
    def get_alignement_dataset(self) -> pd.DataFrame:

        list_Alignement = [ alignement[1] for alignement in self.__set_algorithms_referentiels() if alignement[0] == 'alignement' ]
        df = pd.DataFrame()
        if len(list_Alignement) > 0:
            df = pd.concat(list_Alignement)
            df['NumberId'] = df.uriAlignement.str.split("/",expand=True)[max]
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
        self.__Tmpdir = RefInfo.get_TmpDirectory()
        self.__Tmp_Dir = None
        # Resource du Referentiel à traiter 
        self.__getConcepts = generate_concepts(self.input_data)
        
        # Données Alignement
        self.__alignement_dataset = self.get_alignement_dataset()
        # Données Labels
        self.__lables_dataset = self.get_Labels_dataset()
        self.logger = logging.getLogger(__name__)

    def __set_doublons_alignement(self) -> pd.DataFrame:

        print(f"Resource Alignement  {self.__alignement_dataset.size}  ")
        dfResultAlignement = pd.DataFrame()
        if self.__alignement_dataset.size > 0:
            dfResultAlignement = getAlignement(self.__getConcepts.get_alignement(),self.__alignement_dataset).get_information_alignement()
        return dfResultAlignement 
    
    def __get_doublons_alignement(self) -> pd.DataFrame:
        return self.__set_doublons_alignement()
    
    def __set_doublons_labels(self) -> pd.DataFrame:

        print(f"Resource Labels  {self.__lables_dataset.size}  ")
        dfReferentiel_Labels = self.__getConcepts.get_labels()
        dfResultLabels = pd.DataFrame()
        if self.__lables_dataset.size > 0:
            dfResultLabels = libelles(dfReferentiel_Labels,self.__lables_dataset).libelles_referentiel(self.__Tmp_Dir)
        return dfResultLabels

    def __get_doublons_labels(self) -> pd.DataFrame:
        return self.__set_doublons_labels()
    
    def __evaluation(self,row):

        Alignement = row["alignement"]
        Libelles = row["libelles"]
        
        reponse = "NEUTRE"
        if (Alignement == "A EXCLURE") or (Libelles == "A EXCLURE"):
            reponse = "A EXCLURE"
        


        return reponse

    def __generate_resource(self):

        tmp_report_directory = os.path.join(self.__Tmpdir,"Report")
        if os.path.exists(tmp_report_directory):
            shutil.rmtree(tmp_report_directory)
            os.mkdir(tmp_report_directory)
        else:
            os.mkdir(tmp_report_directory)
        self.__Tmp_Dir = tmp_report_directory

        dfReferentiel = self.__getConcepts.get_report()
        #   
        print("Chercher les doublons dans le concept <<Alignement>>")
        self.logger.info("Chercher les doublons dans le concept <<Alignement>>")  
        if "alignement" in self.algorithms:
            dfAlignement = self.__get_doublons_alignement()
            print(f"Number de lignes trouve dans les autres referentiels {dfAlignement.size}")
            self.logger.info(f"Number de lignes trouve dans les autres referentiels {dfAlignement.size}")
            if dfAlignement.size > 0:
                # Creer le fichier de résultat après de trouve les alignement entre tous les referentiels
                filename_alignement = os.path.join(self.__Tmp_Dir,"alignement_doublons.csv")
                dfAlignement.to_csv(filename_alignement,index=False)
                # Intégrer le résultat dans le referentiel
                dfReferentiel = pd.merge(left=dfReferentiel,
                                    right=dfAlignement,
                                    how="left",
                                    left_on="Concept",
                                    right_on="Concept"
                                    )
            else:
                print(f"ne se trouve pas information pour analizer <<Doublons d'Alignement>> avec le referentiel {self.__Referentiel}")
                self.logger.info(f"ne se trouve pas information pour analizer <<Doublons d'Alignement>> avec le referentiel {self.__Referentiel}")
                dfReferentiel["alignement"] = ""
        
        if "labels" in self.algorithms:
            print("Chercher les doublons dans le concept <<Labels>>")            
            dfLabels = self.__get_doublons_labels() 
            if dfLabels.size > 0:
                # Creer le fichier de résultat après de trouve les alignement entre tous les referentiels
                filename_labels = os.path.join(self.__Tmp_Dir,"libelles_doublons.csv")
                dfLabels.to_csv(filename_labels,index=False)
                # Intégrer le résultat dans le referentiel             
                dfReferentiel = pd.merge(left=dfReferentiel,
                                right=dfLabels,
                                how="left",
                                left_on="Concept",
                                right_on="Concept"
                                )
            else:
                print(f"ne se trouve pas information pour analizer <<doublon de libellés>> avec le referentiel {self.__Referentiel}")
                self.logger.info(f"ne se trouve pas information pour analizer <<doublons de libellés>> avec le referentiel {self.__Referentiel}")
                dfReferentiel["libelles"] = ""
       
        if self.__alignement_dataset.size + self.__lables_dataset.size == 0:
            dfReferentiel["juguement"] = "Autre"
        else:
            dfReferentiel["juguement"] = dfReferentiel.apply(self.__evaluation,axis=1)


        if not os.path.exists(self.Output_report):
            path_full = Path(self.Output_report).absolute()
            os.mkdir(path_full)
        else:
            shutil.rmtree(self.Output_report)
            os.makedirs(self.Output_report)
            
        # Stoker le résultat dans le répertoir output
        output_file_name = f'Report_{self.__Referentiel}.csv'
        output_result = os.path.join(self.Output_report,output_file_name)
        dfReferentiel.to_csv(output_result,index=False)
        print(f"Fichier de sortir: {output_result}")
        self.logger.info(f"Fichier de sortir: {output_result}")

    def generer_report(self):

        self.logger.info(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")
        print(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")

        # 
        self.__generate_resource()