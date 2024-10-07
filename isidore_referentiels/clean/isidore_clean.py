from pathlib import Path
import os
import logging
import shutil
from isidore_referentiels.process.Tools import tools
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess

class clean_referentiel():

    def __init__(self,RefInfo) -> None:
        #print(dir(RefInfo))
        self.__Referentiel__ = RefInfo.get_Referentiel()
        self.__Referentiel_data = RefInfo.data
        self.__Referentiel_sparql = RefInfo.get_Sparql()

        # Clean Directory
        Root_Directory = Path(self.__Referentiel_data).parent.cwd()
        Clean_directory = tools.new_directory(Root_Directory,"clean")
        self.Clean_output_File = Clean_directory
        
        Tmp_Directory = tools.new_directory(Root_Directory,"tmp")
        # Clean Directory + Referentiel
        self.Clean_Referentiel_Directory = tools.new_directory(Clean_directory,self.__Referentiel__)
        # Tmp Directory + Referentiel
        self.Tmp_Dir = tools.new_directory(Tmp_Directory,self.__Referentiel__)
        # Logging
        self.logger = logging.getLogger(__name__)        

    def execute_sparql_update(self):

        self.logger.info(f"* * * * Sparql Query Process: {self.__Referentiel_sparql} * * * *")
        print(f"* * * * Sparql Query Process: {self.__Referentiel_sparql} * * * *")
        self.logger.info(f"Clean Directory: {self.Clean_output_File}")
        print(f"Clean Directory: {self.Clean_output_File}")
        
        # Tmp File
        Tmp_File = os.path.join(self.Tmp_Dir,f"{self.__Referentiel__}.ttl")
        self.logger.info(f"Temporal Directory: {self.Tmp_Dir}")
        print(f"Fichier temporale: {Tmp_File}")

        # Read sparql files
        nCount = 0
        path_tmp_file = None
        for sparql_file in self.__Referentiel_sparql:
            path_sparql = Path(sparql_file).absolute()
            self.logger.info(f"Fichier Sparql: {path_sparql}")

            src_path_File = None
            if nCount == 0:
                src_path_File = self.__Referentiel_data
                nCount += 1
            else:
                src_path_File = Tmp_File
            
            print(f"Fichier des données: {src_path_File}")
            print(f"Fichier Sparql: {path_sparql}")
            self.logger.info(f"Fichier des données: {src_path_File}")
            response = cmd_subprocess().execute_update_subprocess(src_path_File,path_sparql)
            # Write in file
            if response.stdout:
                print(f"Le requête à retourne: {response.stdout.__sizeof__()}")
                if os.path.exists(Tmp_File):
                     os.remove(Tmp_File)
                # Write Tmp File
                with open(Tmp_File,'wb') as newfile:
                    newfile.write(response.stdout)                    
                path_tmp_file = Tmp_File  
            else:
                Tmp_File = src_path_File
                path_tmp_file = src_path_File

        # Copy the result in the Clean Directory 
        self.logger.info(f"Copy {path_tmp_file} directory to {self.Clean_Referentiel_Directory} Directory output")
        shutil.copy(path_tmp_file,self.Clean_Referentiel_Directory)

        return self.Clean_output_File