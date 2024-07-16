from io import BytesIO
import logging
from rdflib import Graph, Dataset 
from rdflib.exceptions import Error, ParserError 
import os

encoding = 'utf-8'

class writeFiles:

    def __init__(self,fileName:str,fileInput:str,reference:str,output:str):
        self.file_name = fileName
        self.input = fileInput
        self.reference = reference
        self.directoryOutput = output

        self.logger = logging.getLogger(__name__)
        self.graph = Graph()
    
    def decompress_GZ(self):
        import gzip

        print(f"Load {self.file_name} file.")
        self.logger.info(f"Load {self.file_name} file.")

        name, file_extension = os.path.splitext(self.input)
        newFile = open(name,"wb")
        # Open
        try:
            # Unzip file
            print(f"decompress file: {self.file_name} - new file : {newFile.name}")
            with gzip.open(self.input,mode="rb",) as f:
                newFile.write(f.read())
            f.close()
            newFile.close()
            # Read and convert in Bytes
            rFile = open(newFile.name,'rb')
            # Parse in Graph
            self.graph.parse(rFile.read())
        except Exception as e:
            # Catch Error when load in Graph
            self.logger.warning(f"{e.__str__()}")
  
    def decompress_bz2(self):

        import bz2

        print(f"Decompress file: {self.file_name}")
        self.logger.info(f"Decompress file: {self.file_name}")

        # Get name of file
        name, file_extension = os.path.splitext(self.input)
        fileResult = open(name,"wb")

        # Decompress 
        CHUNK = 16 * 1024
        decompressor = bz2.BZ2Decompressor()
        fileInput = open(self.input,'rb')
        while True:
            chunk = fileInput.read(CHUNK)  #response.read(CHUNK)
            if not chunk:
                break
            # Unpack file 
            decomp = decompressor.decompress(chunk)
            if decomp:
                fileResult.write(decomp)
                

        # Load in Graph
        file_Resource = open(fileResult.name,'rb')
        print(f"RDF parsing for: {fileResult.name}")
        self.logger.info(f"RDF parsing for: {fileResult.name}")
        for line in file_Resource.readlines():
            try:
                self.graph.parse(line,format="nt")
            except Exception as e:
                # Catch Error when load in Graph
                self.logger.warning(f"{e.__str__()}")            
                continue

    def decompress_tar(self) -> Graph:
        import tarfile
        from rdflib.util import guess_format
        
        print(f"Decompress file: {self.file_name}")
        self.logger.info(f"Decompress file: {self.file_name}")
        
        fileInput = open(self.input,'rb')
        with tarfile.open(fileobj=BytesIO(fileInput.read()),encoding='utf-8', mode="r:gz") as tar:
            for member in tar.getmembers():
                # Extract file
                f = tar.extractfile(member).read()
                if member.isfile:
                    print(f"File name: {member.name} - Size: {member.size} bytes in size")
                    self.logger.info(f"File name: {member.name} - Size: {member.size} bytes in size")
                    try:
                        self.graph.parse(f,format="application/rdf+xml")
                    except Exception as e:
                        self.logger.warning(f"{self.file_name} - {e.__str__()}")
    
    def load_rdf_file(self) -> Graph:

        print(f"Load file: {self.file_name}")
        self.logger.info(f"Load file: {self.file_name}")
        # Load in Graph
        try:
            self.graph.parse(location=self.input,format='xml')
        except Exception as e:
            # Catch Error when load in Graph
            self.logger.warning(f"{e.__str__()}")
    
    def writeResource(self) -> Graph:

        if ".gz" in self.file_name and not ".tar" in self.file_name:
            self.decompress_GZ()
        if ".tar.gz" in self.file_name:
            self.decompress_tar()
        if ".bz2" in self.file_name:
            self.decompress_bz2()        
        if ".rdf" in self.file_name:
            self.load_rdf_file()

        # Serialize
        if len(self.graph) > 0:
            # Section of statistic 
            print(f"Number of triples loaded in Graph: {len(self.graph)}")
            self.logger.info(f"Number of triples loaded in Graph: {len(self.graph)}")
            print(f"Number of subjects in Graph: {self.graph.subjects.__sizeof__()}")
            self.logger.info(f"Number of subjects in Graph: {self.graph.subjects.__sizeof__()}")


            # Number of concepts
            from rdflib import RDF
            gt = list(self.graph.triples((None, RDF.type,None)))
            print(f"Number of Concepts: {len(gt)}")
            self.logger.info(f"Number of Concepts: {len(gt)}")
            
            # Serialize graph in turtle file output
            print(f"Write in file {self.directoryOutput}")
            self.logger.debug(f"Write in file {self.directoryOutput}")
            try:
                self.graph.serialize(self.directoryOutput,format="turtle")
            except Exception as e:
                self.logger.warning(e.__str__())
                self.graph.serialize(self.directoryOutput,format="application/rdf+xml")


            # 
            print(f"the {self.reference} file was created in the directory {self.directoryOutput}.\n")
            self.logger.info(f"the {self.reference} file was created in the directory {self.directoryOutput}.\n")

            # Remove memory in graph
            del self.graph
