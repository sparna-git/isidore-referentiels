from pathlib import Path
import os
import logging
import shutil
from isidore_referentiels.process.Tools import tools
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess

"""
Objectif : faire diminuer la taille des référentiels 

L’objectif de cette étape est de faire diminuer de façon significative le nombre d’entrées de chaque référentiel par des requêtes de suppression. 
Les requêtes s’appuient sur une connaissance de la structure de chaque référentiel. 


L'implementation

- Lire le contenu d'un réferentiel
- Appliquer une série de requête Sparql sur le réferentiel
- Stoker le résultat dans un répertoire paramétre dans le fichier de configuraton

"""

class clean_referentiel():

    def __init__(self,RefInfo) -> None:
        # Referentiel
        self.__Referentiel__ = RefInfo.get_Referentiel()
        # Répertoire après de fusionr les données
        self.__Referentiel_data = None 
        resultat = RefInfo.get_Outputdirectory()
        
        # Récuperer tous les parametrage pour l'étape à nettoyer
        __Referentiel_Clean = RefInfo.get_Clean()
        # Répertoir des données 
        self.data = Path(''.join(__Referentiel_Clean["data"])).absolute()
        # Répertoir des requête sparql 
        self.__Referentiel_sparql = __Referentiel_Clean["sparql"]
        
        # Repertoire de travail
        self.__Referentiel_Directory = RefInfo.get_referentiel_directory()
        
        output_clean = ''.join(__Referentiel_Clean["output"])
        self.__Referentiel_resultat = tools.new_directory(resultat,output_clean)
        # Temp Directory - Exemple: Work/lcsh/clean
        self.__Tmp_Dir = tools.new_directory(self.__Referentiel_Directory,"clean")
        # Fichier temporale pour le résultat des requête sparql Tmp File
        Tmp_Sparql = tools.new_directory(self.__Tmp_Dir,"resultat_sparql")
        self.__Tmp_File = os.path.join(Tmp_Sparql,f"{self.__Referentiel__}.ttl")
        # Logging
        self.logger = logging.getLogger(__name__)

    """
    Fusion le contenu d'une répertoir dans un seule fichier
    """
    def __fusion_referentiel_data(self):

        # 
        Path_data = tools.get_path_absoluted(self.data)
        
        Directory_fusion = tools.new_directory(self.__Tmp_Dir,f"{self.__Referentiel__}_fusion")
        fileOutput = os.path.join(Directory_fusion,f"{self.__Referentiel__}_full.ttl")
        Path_Result = tools.get_path_absoluted(fileOutput)        
        response = cmd_subprocess.merge_data(self,Path_data,Path_Result)
        if response.stderr.__sizeof__()> 0:
            self.logger.warning("Error dans la fusion des fichiers")
            self.logger.warning(response.stderr)

        self.__Referentiel_data = Path_Result

    """ Stocker le résultat """
    def __set_output_clean(self, path_tmp_file:str) -> str:

        # Copy the result in the Clean Directory 
        self.logger.info(f"Copie le résultat {path_tmp_file} au repértoire {self.__Referentiel_resultat}")
        shutil.copy(path_tmp_file,self.__Referentiel_resultat)

        outptu_directory_result = self.__Referentiel_resultat
        
        return outptu_directory_result

    """ Appliquer des requêtes au réferentiel """
    def __sparql_queries(self,tmp_file:str) -> str:

        # Read sparql files
        nCount = 0
        path_tmp_file = None
        for sparql_file in self.__Referentiel_sparql:
            path_sparql = Path(sparql_file).absolute()

            src_path_File = None
            if nCount == 0:
                src_path_File = self.__Referentiel_data
                nCount += 1
            else:
                src_path_File = tmp_file
            
            self.logger.info(f"Exécuter la requête Sparql: {path_sparql}")
            print(f"Exécuter la requête Sparql: {path_sparql}")
            
            response = cmd_subprocess().execute_update_subprocess(src_path_File,path_sparql)
            
            print(f"Le requête à retourne: {response.stdout.__sizeof__()}")
            self.logger.info(f"Le requête à retourne: {response.stdout.__sizeof__()}")
            
            # Ecrir dans le log les erreures 
            if response.stderr.__sizeof__() > 0:
                self.logger.info(f"Erreurs de la requête sparql {path_sparql}")
                self.logger.info(response.stderr)

            # Ecrir dans un fichier tmp le résultat de la requete
            if response.stdout:                
                if os.path.exists(tmp_file):
                    os.remove(tmp_file)
                # Write Tmp File
                with open(tmp_file,'wb') as newfile:
                    newfile.write(response.stdout)                    
                path_tmp_file = tmp_file  
                self.logger.info(f"Le résultat est dans le fichier: {tmp_file}")
            else:
                tmp_file = src_path_File
                path_tmp_file = src_path_File

        return path_tmp_file
    
    """ Lancement du processus de nettoyage """
    def execute_sparql_update(self):

        # Fusion de tous les fichiers d'entrée
        print("Fusion des fichiers")
        self.logger.info("Fusion des fichiers")
        self.__fusion_referentiel_data()

        path_result = None
        if len(self.__Referentiel_sparql) > 0:
            print(f"Sparql Queries: {self.__Referentiel_sparql}")        
            self.logger.info("* * * * Nettoyer les données avec des requêtes Sparql [Clean] * * * *")
            print("* * * * Nettoyer les données avec des requêtes Sparql [Clean] * * * *")

            # Lancer la requêtes sparql dans une jue des données et stocke le résultat dans une fichier temporale        
            file_output = self.__sparql_queries(self.__Tmp_File)
            # Créer le répertoire de sortir output
            path_result = self.__set_output_clean(file_output)
            
        else:
            # Coller le fichier dans le répertoire correspondant
            path_result = self.__set_output_clean(self.__Referentiel_data)

        return path_result