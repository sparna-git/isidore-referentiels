from io import BytesIO
import logging
from rdflib import Graph, Dataset 
from rdflib.exceptions import Error, ParserError 
import os

encoding = 'utf-8'

class file_decompress:

    def __init__(self,reference:str,file_name:str, response, url:str):
        self.reference = reference
        self.file_name = file_name
        self.response = response # Resource object type
        self.url = url

        self.logger = logging.getLogger(__name__)
        self.graph = Graph()
    
    def decompress_GZ(self):
        import gzip

        print(f"Decompress file: {self.file_name}")
        self.logger.info(f"Decompress file: {self.file_name}")

        gd = Dataset()
        # Add exception
        dataBytes = BytesIO(self.response.read())
        # Decompress file
        data = gzip.GzipFile(fileobj=dataBytes)

        try:
            print(f"RDF parsing for: {self.file_name}")
            self.logger.info(f"RDF parsing for: {self.file_name}")
            self.graph.parse(data)       
        except Exception as e:
            # Catch Error when load in Graph
            self.logger.warning(f"{e.__str__()}")
            

    def decompress_bz2(self):

        import bz2
        
        print(f"Decompress file: {self.file_name}")
        self.logger.info(f"Decompress file: {self.file_name}")

        # Decompress 
        CHUNK = 16 * 1024
        decompressor = bz2.BZ2Decompressor()
        while True:
            chunk = self.response.read(CHUNK)  #response.read(CHUNK)
            if not chunk:
                break
            # Unpack file 
            decomp = decompressor.decompress(chunk)
            if decomp:
                try:
                    print(f"RDF parsing for: {self.file_name}")
                    self.logger.info(f"RDF parsing for: {self.file_name}")
                    self.graph.parse(decomp,format="nt")
                except Exception as e:
                    # Catch Error when load in Graph
                    self.logger.warning(f"{e.__str__()}")
                    continue
                
    def decompress_tar(self) -> Graph:
        import tarfile
        from rdflib.util import guess_format
        
        print(f"Decompress file: {self.file_name}")
        self.logger.info(f"Decompress file: {self.file_name}")
        
        with tarfile.open(fileobj=BytesIO(self.response.read()),encoding='utf-8', mode="r:gz") as tar:
            for member in tar.getmembers():
                graphLocal = Graph()
                # Extract file
                f = tar.extractfile(member).read()
                if member.isfile:
                    print(f"File name: {member.name} - Size: {member.size} bytes in size")
                    self.logger.info(f"File name: {member.name} - Size: {member.size} bytes in size")
                    try:
                        graphLocal.parse(f,format="application/rdf+xml")                        
                    except Exception as e:
                        self.logger.warning(f"{self.file_name} - {e.__str__()}")

                if len(graphLocal) > 0:
                    self.graph += graphLocal
    
    def load_rdf_file(self) -> Graph:

        import requests as reqs

        print(f"Download file: {self.url}")
        self.logger.info(f"Donwload file: {self.url}")

        response = reqs.get(self.url)
        if response.ok:
            # download data
            content = response.text            
            # Load in Graph
            try:
                self.graph.parse(data=content,format='xml')
            except Exception as e:
                # Catch Error when load in Graph
                self.logger.warning(f"{e.__str__()}")
    
    def writeResource(self, outputDirectory) -> Graph:
        
        if ".gz" in self.file_name and not ".tar" in self.file_name:
            self.decompress_GZ()
        if ".tar.gz_____" in self.file_name:
            self.decompress_tar()
        if ".bz2_____" in self.file_name:
            self.decompress_bz2()        
        if ".rdf__" in self.file_name:
            self.load_rdf_file()

        # Serialize
        if len(self.graph) > 0:
            # Section of statistic 
            print(f"Number of triples loaded in Graph: {len(self.graph)}")
            self.logger.info(f"Number of triples loaded in Graph: {len(self.graph)}")
            print(f"Number of subjects in Graph: {self.graph.subjects.__sizeof__()}")
            self.logger.info(f"Number of subjects in Graph: {self.graph.subjects.__sizeof__()}")
            
            # Serialize graph in turtle file output
            print(f"Write in file {outputDirectory}")
            self.logger.debug(f"Write in file {outputDirectory}")
            self.graph.serialize(outputDirectory,format="turtle")

            # 
            print(f"the {self.reference} file was created in the directory {outputDirectory}.")
            self.logger.info(f"the {self.reference} file was created in the directory {outputDirectory}.")
