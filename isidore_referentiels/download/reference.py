import logging
from isidore_referentiels.download import donwloadReference as donwloadReference
from isidore_referentiels import writeFiles as writeFiles
from isidore_referentiels.load_graph import isidore_graph as Ig
from rdflib import Graph, Dataset


encoding = 'utf-8'
failed_open = "Failed to open url: {url}"

class referentiels:

    def __init__(self, reference:str,outputDirectory:str) -> None:
        self.reference = reference
        self.output = outputDirectory
        self.logger = logging.getLogger(__name__)

    def load_graph(self, data) -> Graph:

        g = Graph()
        graph = g.parse(data=data)
        return graph
    
    def readReference(self, url:str):

        print(f"Download URL: {url}")
        self.logger.info(f"=============== Reference: {self.reference} ===============")
        self.logger.info(f"Download URL: {url}")
        # Get resource
        file_name,file_extension,response = donwloadReference.downloadReferenceURL(url).request_file()
        self.logger.info(f"File name: {file_name}")

        # Decompress file tar.gzip,gzip,bz2
        writeFiles.file_decompress(self.reference,file_name,response,url).writeResource(self.output)
        