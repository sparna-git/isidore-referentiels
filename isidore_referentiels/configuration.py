# install pyyaml in poetry
# poetry add yaml
import yaml
import os

def readConfigYAML():
    fileConfiguration = os.path.join("isidore_referentiels","config.yaml")
    with open(fileConfiguration,"r") as f:
        return yaml.safe_load(f)
    
def readSource():
    donwloadPageURL = []
    urlPage = []
    get_data_source = readConfigYAML()
    for readYaml in get_data_source["vocabularies"]:
        donwloadPageURL.append((readYaml["id"],readYaml["downloadPage"]))
        urlPage.append((readYaml["id"],readYaml["urls"]))
    outputDir = get_data_source["outputDir"]
    workDir = get_data_source["workDir"]
    logName = get_data_source["logFile"]
    return outputDir,workDir,logName,donwloadPageURL,urlPage

