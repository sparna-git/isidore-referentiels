from isidore_referentiels import configuration as conf
#from .download import reference as dr
from isidore_referentiels.download import reference as ref
from isidore_referentiels.writeFiles import writeFiles
import os
import logging
import sys

def createDirectory(directory) -> str:

    # Remove directory root
    level = None
    message = None

    pathDirectory = "./"+directory

    
    try:
        newDirectory = os.mkdir(pathDirectory)
        if newDirectory:
            level = "INFO"
            message = f"Directory created: {pathDirectory}"
    except OSError:
        level = "WARNING"
        message = f"{directory} - {OSError}"
    
    return level,message

def logging_instance(logName,workDir):

    # Create directory
    directoryLog = os.path.join(workDir,logName)
    logger = logging
    logger.basicConfig(filename=directoryLog,level=logging.DEBUG,format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')

    return logger

def main():

    getconfigurationFile = sys.argv[1]
    if getconfigurationFile.__sizeof__ == 0:
       print("The file of configurarion is necessary for executer this process....")
       sys.exit() 

    readConfig = conf.readConfiguration(getconfigurationFile)
    # read the configuration file
    outputDir,workDir,logName,donwloadPageURL,urlPage = readConfig.readSource()
    # Create Directories
    level,message = createDirectory(outputDir)    
    levelWork,messageWork = createDirectory(workDir)
    # Create Logging
    logger = logging_instance(logName,workDir)

    # Log
    logger.debug(f"Directory created: {level} - {message}")
    logger.debug(f"Directory created: {levelWork} - {messageWork}")
    logger.info(f"Log: {logName} - Directory: {workDir}")
    

    # Read all reference with resource to download
    print("1. Donwload resources")
    logger.info("1. Donwload resources")
    listReference = []
    for i in donwloadPageURL:
        reference = i[0] #
        print(f"=============== Reference: {reference}  ===============")
        # Download Instance
        directory_output = os.path.join(outputDir,reference+'.ttl')
        download_data = ref.referentiels(reference,directory_output, workDir)
        for url in i[1]:
            # Call download function
            file = download_data.readReference(url)
            listReference.append((reference,file))

    print("\nStep 2. Load in Graph")
    logger.info("\nStep 2. Load in Graph")
    # Directory 
    directory_download = os.path.join(workDir,"download")
    #    
    for root, directories, files in os.walk(directory_download):
        for file in files:
            # Get reference name
            reference_load = None
            for data in listReference:
                if file == data[1]:
                    reference_load = data[0]

            # Create directory
            directory_file = os.path.join(root,file)
            # Load in Graph
            print(f"============== Load in Graph: {reference_load} ==============")
            logger.info(f"============== Load in Graph: {reference_load} ==============")
            directory_output = os.path.join(outputDir,str(reference_load)+'.ttl')
            writeFiles(file,directory_file,reference_load,directory_output).writeResource()
    logger.info("End  process")


if __name__ == "__main__":
    # execute the process
    main()
