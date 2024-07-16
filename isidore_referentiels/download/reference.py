import logging
from isidore_referentiels.download import donwloadReference as donwloadReference
from isidore_referentiels import writeFiles as writeFiles
from rdflib import Graph, Dataset


encoding = 'utf-8'
failed_open = "Failed to open url: {url}"

class referentiels:

    def __init__(self, reference:str,outputDirectory:str,workDirectory:str) -> None:
        self.reference = reference
        self.output = outputDirectory
        self.workdirectory = workDirectory
        self.logger = logging.getLogger(__name__)

    def readReference(self, url:str) -> str:

        print(f"URL: {url}")
        self.logger.info(f"=============== Reference: {self.reference} ===============")
        self.logger.info(f"URL: {url}")
        # Get resource
        file_name,file_extension,response = donwloadReference.downloadReferenceURL(url, self.workdirectory).request_file()
        self.logger.info(f"File name: {file_name}")

        return file_name