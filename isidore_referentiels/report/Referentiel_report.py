import os
import pandas as pd
import numpy as np
import logging
import shutil
from datetime import datetime
from pathlib import Path
from .concepts.concepts_referentiel import generate_concepts
from .referentiel_alignement import getAlignement
from isidore_referentiels.report.referentiels_labels.libelles import libelles_doublons
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
        self.CSVdir = Path(RefInfo.get_Outputdirectory()).parent.absolute()
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
        for (dirpath, dirnames, filenames) in os.walk(self.CSVdir):
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
        
        output_report = ''.join(self.report["output"])
        if not os.path.exists(output_report):
            os.mkdir(output_report)
        else:
            shutil.rmtree(output_report)
            os.mkdir(output_report)
        self.__Referentiel_resultat = output_report
        
        self.logger.info(f"Resource: {self.input_data}")
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
        # Ecrir dans le log de tous les référentiels
        self.rapport = RefInfo.set_referentiels_log()

    """ Evaluer les alignement du réferentiel vs réferentiel déjà intégrés """
    def __set_doublons_alignement(self) -> pd.DataFrame:

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

        dfResultLabels = pd.DataFrame()
        filename_libelle = os.path.join(self.__report_directory,f"libelles_{self.__Referentiel}_doublons.xslx")
        self.__libelle_referentile.to_csv(filename_libelle,index=False)
        dfResultLabels = libelles_doublons(self.__libelle_referentile,self.__libelles_dataset).resources_libelles()
        return dfResultLabels

    def __get_doublons_labels(self) -> pd.DataFrame:
        return self.__set_doublons_labels()
   
    
    """ fonction pour remplir la column jugement avec le résultat finale """
    def __evaluation(self,row):

        Alignement = row["alignement"]
        Libelles = row["libelles"]
        
        reponse = ""
        if Alignement == "A EXCLURE":
            reponse = "A EXCLURE"
        if Libelles == "A EXCLURE":
            reponse = "A EXCLURE"
        if (Alignement == "RIEN") and (Libelles == "RIEN"):
            reponse = "RIEN"
        if (Alignement == "AUTRE") and (Libelles == "AUTRE"):
            reponse = "AUTRE"
        if (Alignement == "RIEN") and (Libelles == "AUTRE"):
            reponse = "AUTRE"
        if (Alignement == "AUTRE") and (Libelles == "RIEN"):
            reponse = "AUTRE"
        return reponse

    def __generate_resource(self):

        dfReferentiel = self.__report
        #   
        print("Chercher les doublons de concepts <<Alignement>>")
        self.logger.info("Chercher les doublons de concepts <<Alignement>>")  
        
        if "alignement" in self.algorithms and self.__alignement_dataset.size > 0 and self.__alignement_referentile.size > 0:
            dfAlignement,dfResult = self.__get_doublons_alignement()
            if dfResult.size > 0:
                result_alignement = os.path.join(self.__report_directory,"alignement_doublons.xslx")
                dfAlignement.to_csv(result_alignement,index=False)
                #
                #dfDoublonsAlignement = dfAlignement[["Concept","alignement","alignement_doublons"]].drop_duplicates() 
                self.logger.info(f'Stocker le résultat de l\'analyse des alignements dans le répertoire: {result_alignement}')
                # Intégrer le résultat dans le referentiel
                dfReferentiel = pd.merge(left=dfReferentiel,
                                    right=dfResult,
                                    how="left",
                                    left_on="concept",
                                    right_on="concept"
                                    )

                dfReferentiel["alignement"] = dfReferentiel["alignement"].fillna("RIEN")
            else:
                dfReferentiel["alignement"] = "RIEN"
                print(f"Aucun alignement pour analiser <<Doublons d'Alignement>> avec le referentiel {self.__Referentiel}")
                self.logger.info(f"Aucun alignement pour analizer <<Doublons d'Alignement>> avec le referentiel {self.__Referentiel}")                
        else:
            dfReferentiel["alignement"] = "RIEN"

        print("Chercher les doublons de concepts <<Libellés>>")
        self.logger.info("Chercher les doublons de concepts <<Libellés>>")
        if "libelles" in self.algorithms and self.__libelles_dataset.size > 0 and self.__libelle_referentile.size > 0:
            dfLibelles,dfResult = self.__get_doublons_labels() 
            if dfResult.size > 0:
                # Creer le fichier de résultat après de trouve les alignement entre tous les referentiels
                result_libelle = os.path.join(self.__report_directory,"libelles_doublons.xslx")
                dfLibelles.to_csv(result_libelle,index=False)
                #
                self.logger.info(f'Stocker le resultat de l\'analyse des libellés dans le répertoire: {result_libelle}')
                # Intégrer le résultat dans le referentiel             
                dfReferentiel = pd.merge(left=dfReferentiel,
                                right=dfResult,
                                how="left",
                                left_on="concept",
                                right_on="concept"
                                )
                
                dfReferentiel["libelles"] = dfReferentiel["libelles"].fillna("RIEN")
            else:
                dfReferentiel["libelles"] = "RIEN"
                print(f"Aucun libellé pour analiser <<doublon de libellés>> avec le referentiel {self.__Referentiel}")
                self.logger.info(f"Aucun libellé pour analiser <<doublons de libellés>> avec le referentiel {self.__Referentiel}")
        else:
            dfReferentiel["libelles"] = "RIEN"

        #
        dfReferentiel["jugement"] = dfReferentiel.apply(self.__evaluation,axis=1)
        

        # Stoker le résultat dans le répertoir output
        output_result = os.path.join(self.__Referentiel_resultat,f'Report_{self.__Referentiel}.csv')
        dfReferentiel.to_csv(output_result,index=False)
        
        print(f"Fichier de sortie: {output_result}")
        self.logger.info(f"Fichier de sortie: {output_result}")

        # Long
        # Ecrir dans le long        
        objTime = datetime.now().strftime("%d/%m/%Y %H:%M")
        sLogReferentiel = f"{objTime}|{self.__Referentiel}|report|{output_result}|0"
        with open(self.rapport,"a+") as fLog:
            fLog.write("\n")
            fLog.write(sLogReferentiel)

    def generer_report(self):

        self.logger.info(f"* * * * Créer le rapport de {self.__Referentiel.upper()} [Report] * * * *")
        print(f"* * * * Créer le rapport de {self.__Referentiel.upper()} [Report] * * * *")

        print(f"Répertoire de resultat de l'étape de report: {self.__Referentiel_resultat}")
        self.logger.info(f"Répertoire de resultat de l'étape de report: {self.__Referentiel_resultat}")

        # 
        self.__generate_resource()