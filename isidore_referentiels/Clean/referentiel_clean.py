from pathlib import Path
import os
import logging
import shutil
from isidore_referentiels.process.Tools import tools
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess

class clean_referentiel():

    def __init__(self,RefInfo) -> None:
        self.__Referentiel__ = RefInfo.get_Referentiel()
        self.data = RefInfo.get_Data()
        self.__Referentiel_data = self.__merge_referentiel_data()
        self.__Referentiel_sparql = RefInfo.get_Sparql()
        #
        self.__Referentiel_Directory = RefInfo.get_referentiel_directory() # Exemple: Work\lcsh
        # Temp Directory
        __Tmpdir = RefInfo.get_TmpDirectory()
        self.__Tmp_Dir = tools.new_directory(__Tmpdir,"Clean")        
        # Tmp File
        self.__Tmp_File = os.path.join(self.__Tmp_Dir,f"{self.__Referentiel__}.ttl")
        # Logging
        self.logger = logging.getLogger(__name__)

    def __merge_referentiel_data(self):

        # 
        Path_data = tools.get_path_absoluted(self.data)
        
        # Créer le fichier TTL du résultat mergée 
        Parent_path = tools.get_path_Parent(self.data)
        Directory_Merge = tools.new_directory(Parent_path,f"{self.__Referentiel__}_merge")
        
        fileOutput = os.path.join(Directory_Merge,f"{self.__Referentiel__}_full.ttl")
        Path_Result = tools.get_path_absoluted(fileOutput)
        
        response = cmd_subprocess.merge_data(self,Path_data,Path_Result)
        return Path_Result

    def __set_output_clean(self, path_tmp_file:str) -> str:

        # Créer le repértoire pour stocker le résultat
        output_result = tools.new_directory(self.__Referentiel_Directory,"output_clean")
        self.logger.info(f"Repértoir de résultat: {output_result}")
        print(f"Repértoir de résultat: {output_result}")

        # Copy the result in the Clean Directory 
        self.logger.info(f"Copie le résultat {path_tmp_file} au repértoire {output_result}")
        shutil.copy(path_tmp_file,output_result)

        outptu_directory_result = output_result
        
        return outptu_directory_result

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
            # Write in file
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

            # Stocker les erreurs dans le log
            if response.stderr:
                self.logger.warning(f"Erreurs de la requête sparql {path_sparql}")
                self.logger.warning(response.stderr)
        return path_tmp_file
    
    def execute_sparql_update(self):

        if len(self.__Referentiel_sparql) > 0:
            print(f"Sparql Queries: {self.__Referentiel_sparql}")
        
            self.logger.info(f"* * * * Nettoyer les données avec des requêtes Sparql [Clean] * * * *")
            print(f"* * * * Nettoyer les données avec des requêtes Sparql [Clean] * * * *")
            
            # Lancer la requêtes sparql dans une jue des données et stocke le résultat dans une fichier temporale        
            __file_output = self.__sparql_queries(self.__Tmp_File)
            # Créer le répertoire de sortir output+etape (output_clean)
            path_result = self.__set_output_clean(__file_output)
            # Enlever le fichier a mergé
            print(f"Répositoir à enléver: {self.__Referentiel_data}")
            shutil.rmtree(Path(self.__Referentiel_data).parent.absolute())
        else:
            # Coller le fichier dans le répertoire correspondant
            self.__set_output_clean(self.__Referentiel_data)

        return path_result