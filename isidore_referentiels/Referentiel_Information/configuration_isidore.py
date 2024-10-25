# install pyyaml in poetry
# poetry add yaml
import yaml
import os
import logging
import shutil
from pathlib import Path

class readConfiguration:

    def __init__(self, Data_yaml_Global,etape:str):
        self.conf = yaml.safe_load(Data_yaml_Global)
        #print(f'Configuration: {self.conf}')
        self.Referentiel = self.conf["id"]
        #print(f'Referentiel: {self.Referentiel}')
        # Create directory Root
        ParentDirectory = Path().parent.cwd()
        self.WorkDir = os.path.join(ParentDirectory,self.conf["workDir"])
        self.WorkDirectory = self.__createDirectory(self.WorkDir)
        #print(f'Work Directory: {self.WorkDirectory}')
        self.OutputDir = os.path.join(ParentDirectory,self.conf["outputDir"])
        self.OutputDirectory = self.__createDirectory(self.OutputDir)
        #print(f'Output Directory: {self.OutputDirectory}')

        # Create répertoire de travail
        self.path_referentiel = os.path.join(self.WorkDir,self.Referentiel)
        self.__remove_all(etape)
        self.Referentiel_directory = self.__createDirectoryReferentiel(self.path_referentiel,etape)
        #print(f'Work Referentiel Directory: {self.WorkDirectory}')
        # Créer le répertoire des résultat
        self.referentiel_result = os.path.join(self.OutputDir,self.Referentiel)
        self.Output_referentiel = self.__createDirectoryReferentiel(self.referentiel_result,etape)
        #print(f'Work Referentiel Directory: {self.WorkDirectory}')
        # Créer Logging
        self.logger = self.__create_logging(etape)
        #
        self.clean = self.conf["clean"]
        self.report = self.conf["report"]
        self.integrate = self.conf["integrate"]

    def __remove_all(self,etape:str):
        if "clean" == etape:
            if os.path.exists(self.path_referentiel):
                shutil.rmtree(self.path_referentiel)

    def __create_logging(self,etape:str):
        
        logger = logging
        File_log = os.path.join(Path(self.path_referentiel).absolute(),self.conf["logFile"])
        logger.basicConfig(filename=File_log,level=logging.DEBUG,format="{asctime} - {levelname} - {message}",style="{" ,datefmt="%d-%m-%Y %H:%M")
        return logger
        
    def __createDirectory(self,directory) -> str:

        try:            
            if not os.path.exists(directory):
                os.mkdir(directory)
                return f"Directory {directory} created successfully"            

        except OSError:
            return f"Error: Failed to create directory {directory} - {OSError}"
        
        return f"{directory} Directory was created."
    
    def __createDirectoryReferentiel(self,directoryReferentielWork:str,etape:str) -> str:

        if "clean" == etape:
            if os.path.exists(directoryReferentielWork):
                shutil.rmtree(directoryReferentielWork)
            else:
                os.mkdir(directoryReferentielWork)            
        return directoryReferentielWork

class confReferentiel(readConfiguration):

    def __init__(self, Data_yaml_Global,etape:str):
        super().__init__(Data_yaml_Global,etape)

    def get_Referentiel(self) -> str:
        return self.conf["id"]
    
    def get_Outputdirectory(self) -> str:
        return self.referentiel_result

    def get_referentiel_directory(self) -> str:
        return self.path_referentiel

    def get_Clean(self) -> list:
        return self.conf["clean"]
    
    def get_Report(self) -> list:
        return self.conf["report"]
    
    def get_integrate(self) -> list:
        return self.conf["integrate"]