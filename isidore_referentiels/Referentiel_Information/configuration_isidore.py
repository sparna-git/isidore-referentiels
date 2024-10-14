# install pyyaml in poetry
# poetry add yaml
import yaml
import os
import logging
import shutil
from pathlib import Path

class readConfiguration:

    def __init__(self, Data_yaml_Global):
        self.conf = yaml.safe_load(Data_yaml_Global)
        
        self.Referentiel = self.conf["id"]
        # Create directory Root
        self.WorkDir = self.conf["WorkDir"]
        self.WorkDirectory = self.__createDirectory(self.conf["WorkDir"])
        self.OutputDir = self.conf["OutputDir"]
        self.OutputDirectory = self.__createDirectory(self.conf["OutputDir"])
        # Create répertoire pour le referentiel
        self.path_referentiel = os.path.join(self.WorkDir,self.Referentiel)
        self.Referentiel_directory = self.__createDirectory(self.path_referentiel)
        # Répertoire Tmp
        self.path_referentiel_tmp = os.path.join(self.path_referentiel,"tmp")
        self.Referentiel_tmp_directory = self.__createDirectory(self.path_referentiel_tmp)

        self.loggingConfig = self.conf["logFile"]
        self.logger = self.__create_logging()
        #
        self.sparql = self.conf["clean"]["sparql"]
        self.report = self.conf["report"]

    def __create_logging(self):

        logger = logging
        File_log = os.path.join(Path(self.path_referentiel).absolute(),self.loggingConfig)
        logger.basicConfig(filename=File_log,level=logging.DEBUG,format="{asctime} - {levelname} - {message}",style="{" ,datefmt="%d-%m-%Y %H:%M")
        
        return logger

    def __createDirectory(self,directory) -> str:

        pathDirectory = "./"+directory
        try:            
            if not os.path.exists(pathDirectory):
                newDirectory = os.mkdir(pathDirectory)
                return f"Directory {pathDirectory} created successfully"
        except OSError:
            return f"Error: Failed to create directory {directory} - {OSError}"
        
        return f"{pathDirectory} Directory was created."
    
class confReferentiel(readConfiguration):

    def __init__(self, Data_yaml_Global):
        super().__init__(Data_yaml_Global)

    def get_Referentiel(self) -> str:
        return self.conf["id"]
    
    def get_Data(self) -> str:
        return ''.join(self.conf["data"])

    def get_Sparql(self) -> list:
        return self.sparql
    
    def get_Workdirectory(self) -> str:
        return self.WorkDir
    
    def get_Outputdirectory(self) -> str:
        return self.OutputDir

    def get_referentiel_directory(self) -> str:
        return self.path_referentiel

    def get_TmpDirectory(self) -> str:
        return self.path_referentiel_tmp
    
    def get_Report(self) -> list:
        return self.conf["report"]