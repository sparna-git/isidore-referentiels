import os
import pandas as pd
import logging
import shutil
from pathlib import Path
from .concepts.concepts_referentiel import generate_concepts
from .referentiel_alignement import getAlignement
from isidore_referentiels.report.referentiels_labels.labels import libelles
from isidore_referentiels.process.Tools import tools

"""
Génération d'un rapport d'analyse

L’objectif de cette étape est de produire un rapport d’analyse sur un référentiel, en utilisant notamment des techniques de détection de doublons par rapport aux référentiels. 
Le rapport contiendra la liste de chaque concept du référentiel

Implementation

- Lire le contenu d'un réferentiel [Fichier Turtle]
- Executer dessus une série d'analyse
    * Avec le premier réferentiel on n'a pas des données de détection de doublons.
- Producir un rapport d'analyse
"""

"""
Chercher dans le repertoire de travail, tous les fichiers csv (libellé et alignement) de l'étape d'integration pour chaque réferentiel

Arguments:
    - fichier de configuration d'un réferentiel
Returns:
    - Dataframe pour chaque algorithmes d'integration
"""
class dataset_referentiels:

    def __init__(self,RefInfo) -> None:
        # Répertoir 
        self.Workdir = Path(RefInfo.get_referentiel_directory()).parent.absolute()
        print(f'Repository {self.Workdir}' )
        self.logger = logging.getLogger(__name__)
    
    """
    Chercher dans le répertoir de travail tous les fichiers csv qui se trouve dans le répertoire d'integration
    * Dans le répertoire on va trouver seulement deux répertore cible:
        - 1. répertoire Libellé 
        - 2. répertoire Alignement
    """
    def __set_algorithms_referentiels(self) -> list:
        # 
        df_DataSet = []
        for (dirpath, dirnames, filenames) in os.walk(self.Workdir):
            if 'integrate' in dirpath and len(filenames) > 0 :
                for f in filenames:
                    if 'csv' in f:
                        path_file = os.path.join(dirpath,f)
                        if os.path.isfile(path_file):
                            print(f'lecture de fichier: {path_file}')
                            for aConfig in self.algorithms:
                                if aConfig in path_file:
                                    df = pd.read_csv(path_file,dtype=str)
                                    df_DataSet.append((aConfig,df))
        
        return df_DataSet
    
    def get_alignement_dataset(self) -> pd.DataFrame:

        list_Alignement = [ alignement[1] for alignement in self.__set_algorithms_referentiels() if alignement[0] == 'alignement' ]
        df = pd.DataFrame()
        if len(list_Alignement) > 0:
            df = pd.concat(list_Alignement)
        return df
    
    def get_libelles_dataset(self) -> pd.DataFrame:

        list_labels = [ labels[1] for labels in self.__set_algorithms_referentiels() if labels[0] == 'libelles' ]
        df = pd.DataFrame()
        if len(list_labels) > 0:
            df = pd.concat(list_labels)
        return df


"""
Produir le rapport d'analyse 

Arguments:
    - fichier de configuration d'un réferentiel
Returns:
    - Rapport csv avec la suivin structure
    ===================================================================================
    Concept: Concept du réferentiel
    prefLabel_fr: preflabel en français
    prefLabel_en: preflabel en anglais
    prefLabel_es: preflabel en espagnol
    altLabel: 
    definition:
    ParentLabel:
    alignement: juguement d'alignement
    alignement_doublons: concept au concepts où se trouve le doublon
    libelles: juguement de libellés
    libelles_doublons: concept au concepts où se trouve le doublon
    juguement: decision finale
    ===================================================================================
"""
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
        self.__alignement_referentile = self.__getConcepts.get_alignement()
        self.__libelle_referentile = self.__getConcepts.get_labels()
        self.__report = self.__getConcepts.get_report_referentiel()


        # Données Alignement
        self.__alignement_dataset = self.get_alignement_dataset()
        print(f'Dataset alignement: {self.__alignement_dataset.size}')
        # Données Labels
        self.__libelles_dataset = self.get_libelles_dataset()
        print(f'Dataset libelles: {self.__alignement_dataset.size}')
        
        # log
        self.logger = logging.getLogger(__name__)

    """ Evaluer les alignement du réferentiel vs réferentiel déjà intégrés """
    def __set_doublons_alignement(self) -> pd.DataFrame:

        dfResultAlignement = pd.DataFrame()
        if self.__alignement_dataset.size > 0:
            #
            filename_alignement = os.path.join(self.__report_directory,f"alignement_{self.__Referentiel}_doublons.xslx")
            self.__alignement_referentile.to_csv(filename_alignement,index=False)
            dfResultAlignement = getAlignement(self.__alignement_referentile,self.__alignement_dataset).get_information_alignement()
        return dfResultAlignement 
    
    def __get_doublons_alignement(self) -> pd.DataFrame:
        return self.__set_doublons_alignement()
    
    """ Evaluer les libellé du réferentiel vs réferentiel déjà intégrés
        - Pour chaque concept on va récuperer les prefLabel avec la langue et le altLabel et on va comparer avec les réferentiels déjà intégrés
    """
    def __set_doublons_labels(self) -> pd.DataFrame:

        print(f"Resource Libelles  {self.__libelles_dataset.size}  ")
        dfResultLabels = pd.DataFrame()
        if self.__libelles_dataset.size > 0:
            filename_libelle = os.path.join(self.__report_directory,f"libelles_{self.__Referentiel}_doublons.xslx")
            self.__libelle_referentile.to_csv(filename_libelle,index=False)
            dfResultLabels = libelles(self.__libelle_referentile,self.__libelles_dataset).libelles_referentiel()
        return dfResultLabels

    def __get_doublons_labels(self) -> pd.DataFrame:
        return self.__set_doublons_labels()
    
    """ fonction pour remplir la column jugement avec le résultat finale """
    def __evaluation(self,row):

        Alignement = row["alignement"]
        Libelles = row["libelles"]
        
        reponse = "NEUTRE"
        if (Alignement == "A EXCLURE") or (Libelles == "A EXCLURE"):
            reponse = "A EXCLURE"
        return reponse

    def __generate_resource(self):

        dfReferentiel = self.__report
        #   
        print("Chercher les doublons dans le concept <<Alignement>>")
        self.logger.info("Chercher les doublons dans le concept <<Alignement>>")  
        
        if "alignement" in self.algorithms:
            dfAlignement = self.__get_doublons_alignement()
            if dfAlignement.size > 0:
                # Creer le fichier de résultat après de trouve les alignement entre tous les referentiels
                result_alignement = os.path.join(self.__report_directory,"alignement_doublons.xslx")
                dfAlignement.to_csv(result_alignement,index=False)
                #
                #dfDoublonsAlignement = dfAlignement[["Concept","alignement","alignement_doublons"]].drop_duplicates() 
                self.logger.info(f'Stoker le resultat de doublons de alignements dans le répertoire: {result_alignement}')
                # Intégrer le résultat dans le referentiel
                dfReferentiel = pd.merge(left=dfReferentiel,
                                    right=dfAlignement,
                                    how="left",
                                    left_on="Concept",
                                    right_on="Concept"
                                    )
            else:
                dfReferentiel["alignement"] = "AUTRE"
                print(f"ne se trouve pas information pour analizer <<Doublons d'Alignement>> avec le referentiel {self.__Referentiel}")
                self.logger.info(f"ne se trouve pas information pour analizer <<Doublons d'Alignement>> avec le referentiel {self.__Referentiel}")                
        
        print("Chercher les doublons dans le concept <<Libellés>>")
        self.logger.info("Chercher les doublons dans le concept <<Libellés>>")
        if "libelles" in self.algorithms:
            dfLabels = self.__get_doublons_labels() 
            if dfLabels.size > 0:
                # Creer le fichier de résultat après de trouve les alignement entre tous les referentiels
                result_libelle = os.path.join(self.__report_directory,"libelles_doublons.xslx")
                dfLabels.to_csv(result_libelle,index=False)
                #
                dfDoublonsLibelles = dfLabels[["Concept","libelles","libelles_doublons"]]
                self.logger.info(f'Stoker le resultat de doublons de libellés dans le répertoire: {result_libelle}')
                # Intégrer le résultat dans le referentiel             
                dfReferentiel = pd.merge(left=dfReferentiel,
                                right=dfDoublonsLibelles,
                                how="left",
                                left_on="Concept",
                                right_on="Concept"
                                )
            else:
                dfReferentiel["libelles"] = "AUTRE"
                print(f"ne se trouve pas information pour analizer <<doublon de libellés>> avec le referentiel {self.__Referentiel}")
                self.logger.info(f"ne se trouve pas information pour analizer <<doublons de libellés>> avec le referentiel {self.__Referentiel}")
        
        #
        dfReferentiel["jugement"] = dfReferentiel.apply(self.__evaluation,axis=1)

        # Stoker le résultat dans le répertoir output
        output_result = os.path.join(self.__Referentiel_resultat,f'Report_{self.__Referentiel}.csv')
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