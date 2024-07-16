# install pyyaml in poetry
# poetry add yaml
import yaml
import os

class readConfiguration:

    def __init__(self, file):
        self.conf = file

    def readConfigYAML(self):
        with open(self.conf,"r") as f:
            return yaml.safe_load(f)
        
    def readSource(self):
        donwloadPageURL = []
        urlPage = []
        get_data_source = self.readConfigYAML()
        for readYaml in get_data_source["vocabularies"]:
            donwloadPageURL.append((readYaml["id"],readYaml["downloadPage"]))
            urlPage.append((readYaml["id"],readYaml["urls"]))
        outputDir = get_data_source["outputDir"]
        workDir = get_data_source["workDir"]
        logName = get_data_source["logFile"]
        return outputDir,workDir,logName,donwloadPageURL,urlPage

