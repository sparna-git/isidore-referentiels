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

class dataset_referentiels:

    def __init__(self,RefInfo) -> None:
        # Répertoir 
        self.Workdir = Path(RefInfo.get_referentiel_directory()).parent.absolute()
        print(f'Repository {self.Workdir}' )
        self.logger = logging.getLogger(__name__)
        
    def __set_algorithms_referentiels(self) -> list:
        # 
        df_DataSet = []
        for resource in glob.glob(f'{self.Workdir}/**/*.csv', recursive=True):
            for aConfig in self.algorithms:
                if aConfig in resource:
                    df = pd.read_csv(resource,dtype=str)
                    df_DataSet.append((aConfig,df))
        return df_DataSet
    
    def get_alignement_dataset(self) -> pd.DataFrame:

        list_Alignement = [ alignement[1] for alignement in self.__set_algorithms_referentiels() if alignement[0] == 'alignement' ]
        df = pd.DataFrame()
        if len(list_Alignement) > 0:
            df = pd.concat(list_Alignement)
            df['NumberId'] = df.uriAlignement.str.split("/",expand=True)[max]            
        return df
    
    def get_libelles_dataset(self) -> pd.DataFrame:

        list_labels = [ labels[1] for labels in self.__set_algorithms_referentiels() if labels[0] == 'libelles' ]
        df = pd.DataFrame()
        if len(list_labels) > 0:
            df = pd.concat(list_labels)
        return df

class report(dataset_referentiels):

    def __init__(self, RefInfo) -> None:
        super().__init__(RefInfo)
        
        self.__Referentiel = RefInfo.get_Referentiel()
        # Répertoire de travail
        self.__Referentiel_Directory = RefInfo.get_referentiel_directory() # Exemple: Work\lcsh
        # Répertoire de resultat
        report_output = RefInfo.get_Outputdirectory()
        

        self.report = RefInfo.get_Report()
        # Répertoires de travail pour generer les reports
        self.input_data = Path(''.join(self.report["data"])).absolute()
        self.algorithms = self.report["algorithms"]

        # Créer le répertoire de l"étape
        directory_report = os.path.join(self.__Referentiel_Directory,"report")
        if not os.path.exists(directory_report):
            os.mkdir(directory_report)
        else:
            shutil.rmtree(directory_report)
            os.mkdir(directory_report)
        self.__report_directory = directory_report   #        
        
        output_report = os.path.join(report_output,''.join(self.report["output"]))
        if not os.path.exists(output_report):
            os.mkdir(output_report)
        else:
            shutil.rmtree(output_report)
            os.mkdir(output_report)
        self.__Referentiel_resultat = output_report
        
        # Resource du Referentiel à traiter 
        self.__getConcepts = generate_concepts(self.input_data)
        
        # Données Alignement
        self.__alignement_dataset = self.get_alignement_dataset()
        print(f'Dataset alignement: {self.__alignement_dataset.size}')
        # Données Labels
        self.__libelles_dataset = self.get_libelles_dataset()
        print(f'Dataset libelles: {self.__alignement_dataset.size}')
        
        # log
        self.logger = logging.getLogger(__name__)

    def __set_doublons_alignement(self) -> pd.DataFrame:

        dfResultAlignement = pd.DataFrame()
        if self.__alignement_dataset.size > 0:
            dfResultAlignement = getAlignement(self.__getConcepts.get_alignement(),self.__alignement_dataset).get_information_alignement()
        return dfResultAlignement 
    
    def __get_doublons_alignement(self) -> pd.DataFrame:
        return self.__set_doublons_alignement()
    
    def __set_doublons_labels(self) -> pd.DataFrame:

        print(f"Resource Labels  {self.__libelles_dataset.size}  ")
        dfReferentiel_Labels = self.__getConcepts.get_labels()
        dfResultLabels = pd.DataFrame()
        if self.__libelles_dataset.size > 0:
            dfResultLabels = libelles(dfReferentiel_Labels,self.__libelles_dataset).libelles_referentiel(self.__report_directory)
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

        dfReferentiel = self.__getConcepts.get_report()
        #   
        print("Chercher les doublons dans le concept <<Alignement>>")
        self.logger.info("Chercher les doublons dans le concept <<Alignement>>")  
        
        if "alignement" in self.algorithms:
            dfAlignement = self.__get_doublons_alignement()
            if dfAlignement.size > 0:
                # Creer le fichier de résultat après de trouve les alignement entre tous les referentiels
                filename_alignement = os.path.join(self.__report_directory,"alignement_doublons.csv")
                dfAlignement.to_csv(filename_alignement,index=False)
                self.logger.info(f'Stoker le resultat de doublons de alignements dans le répertoire: {filename_alignement}')
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
        
        print("Chercher les doublons dans le concept <<Libellés>>")
        self.logger.info("Chercher les doublons dans le concept <<Libellés>>")
        if "libelles" in self.algorithms:
            dfLabels = self.__get_doublons_labels() 
            if dfLabels.size > 0:
                # Creer le fichier de résultat après de trouve les alignement entre tous les referentiels
                filename_labels = os.path.join(self.__report_directory,"libelles_doublons.csv")
                dfLabels.to_csv(filename_labels,index=False)
                self.logger.info(f'Stoker le resultat de doublons de libellés dans le répertoire: {filename_labels}')
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
       
        if self.__alignement_dataset.size + self.__libelles_dataset.size == 0:
            dfReferentiel["juguement"] = "Autre"
        else:
            dfReferentiel["juguement"] = dfReferentiel.apply(self.__evaluation,axis=1)

        # Stoker le résultat dans le répertoir output
        output_file_name = f'Report_{self.__Referentiel}.csv'
        output_result = os.path.join(self.__Referentiel_resultat,output_file_name)
        dfReferentiel.to_csv(output_result,index=False)
        print(f"Fichier de sortir: {output_result}")
        self.logger.info(f"Fichier de sortir: {output_result}")

    def generer_report(self):

        self.logger.info(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")
        print(f"* * * * Créer le report de {self.__Referentiel.upper()} [Report] * * * *")

        print(f"Répertoire de resultat de l'étape de report: {self.__Referentiel_resultat}")
        self.logger.info(f"Répertoire de resultat de l'étape de report: {self.__Referentiel_resultat}")

        # 
        self.__generate_resource()