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
        self.root_directory = Path(''.join(self.conf["data"])).parent.cwd()
        print(self.root_directory)
        self.Referentiel = self.conf["id"]
        self.logger = self.create_logging()

    def create_logging(self):

        # Create directory
        Log_Directory = os.path.join(self.root_directory,"logs")
        if not os.path.exists(Log_Directory):
            os.makedirs(Log_Directory)
        else:
            shutil.rmtree(Log_Directory)

        logger = logging
        File_log = os.path.join(Log_Directory,f"{self.Referentiel}.txt")
        logger.basicConfig(filename=File_log,level=logging.DEBUG,format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')
        return logger

    def createDirectory(self,directory) -> str:

        pathDirectory = "./"+directory
        try:            
            if os.path.exists(pathDirectory):
                shutil.rmtree(pathDirectory)

            newDirectory = os.mkdir(pathDirectory)
            if newDirectory:
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
        return self.conf["sparql"]
    
    def get_Analize(self) -> str:
        return ''.join(self.conf["Analyze"])
    
    def get_Wikidata(self) -> str:
        return ''.join(self.conf["Wikidata"])
         