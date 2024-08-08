# install pyyaml in poetry
# poetry add yaml
import yaml
import os
import logging
import shutil

class readConfiguration:

    def __init__(self, file):
        self.conf = file
        self.logger = None

    def readConfigYAML(self):
        print(self.conf)
        with open(self.conf,"r") as f:
            return yaml.safe_load(f)
        
    """
        Instance for Log
    """
    def logging_instance(self,logName,workDir) -> logging:
        
        # Create directory
        directoryLog = os.path.join(workDir,logName)
        self.logger = logging
        self.logger.basicConfig(filename=directoryLog,level=logging.DEBUG,format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')

    def createDirectory(self,directory) -> str:

        pathDirectory = "./"+directory        
        try:            
            if os.path.exists(pathDirectory):
                #os.removedirs(pathDirectory)
                shutil.rmtree(pathDirectory)

            newDirectory = os.mkdir(pathDirectory)
            if newDirectory:
                return f"Directory {pathDirectory} created successfully"
        except OSError:
            return f"Error: Failed to create directory {directory} - {OSError}"

    def readSource(self):
        vocabularies = []
        get_data_source = self.readConfigYAML()

        # Directories
        strMessageWorkDir = self.createDirectory(get_data_source["workDir"])        
        strMessageOutputDir = self.createDirectory(get_data_source["outputDir"])
        
        #Log
        self.logging_instance(get_data_source["logFile"],get_data_source["workDir"])
        self.logger.info(f"Generate Log file: {get_data_source["logFile"]} ")

        self.logger.debug(strMessageWorkDir)
        self.logger.debug(strMessageOutputDir)

        # Get all data for each reference
        for readYaml in get_data_source["vocabularies"]:
            
            # Get Vocabularies
            vocabularies.append((readYaml["id"],
                                    readYaml["data"], # Path Resource 
                                    readYaml["sparql"], # Path Sparql
                                    readYaml["delete-uris"] # IRI
                                    )
                                    )            

        return get_data_source["outputDir"],get_data_source["workDir"],self.logger,vocabularies, get_data_source["vocabularies"]