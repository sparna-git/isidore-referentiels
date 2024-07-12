from isidore_referentiels import configuration as conf
#from .download import reference as dr
from isidore_referentiels.download import reference as ref
import os
import logging

def createDirectory(directory) -> str:

    level = None
    message = None

    try:
        pathDirectory = "./"+directory
        if os.path.exists(pathDirectory):
            os.rmdir(pathDirectory)
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
    logger.basicConfig(filename=directoryLog,level=logging.DEBUG)

    return logger

def main():

    # read the configuration file
    outputDir,workDir,logName,donwloadPageURL,urlPage = conf.readSource()
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
    print("Read all reference")
    for i in donwloadPageURL:
        reference = i[0] #
        print(f"=============== Reference: {reference}  ===============")
        # Download Instance
        directory_output = os.path.join(outputDir,reference+'.ttl')
        download_data = ref.referentiels(reference,directory_output)
        for url in i[1]:
            # Call download function
            download_data.readReference(url)
    logger.info("End  process")


if __name__ == "__main__":
    # execute the process
    main()