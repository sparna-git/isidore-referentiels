# Use Poetry for add libraries
# install pyyaml
import yaml
import downloadSource as ds

def readConfigYAML():
    with open("config.yaml","r") as f:
        source = yaml.safe_load(f)
        return source

def readSource() -> list:

    listOfURLS = []
    for y in readConfigYAML()["vocabularies"]:
        listOfURLS.append((y["ref"],y["urls"]))
        outputDir = readConfigYAML()["outputDir"]
        workDir = readConfigYAML()["workDir"]
    return outputDir,workDir,listOfURLS

if __name__ == "__main__":

    print("Start.....")
    # Get all information resource
    OutputDir,WorkDir, listOfUrlSource = readSource()
    # Download
    dataset = []
    for s in listOfUrlSource:  
       reference = s[0]
       url = s[1]

       print(reference,url)
       # Download source data
       if (isinstance(url,str)):
           dataset.append((reference,ds.downloadReferentiels(reference,url).read()))
    
    # Write in directory

    #print(dataset)