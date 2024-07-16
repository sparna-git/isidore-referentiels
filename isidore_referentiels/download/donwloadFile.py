from io import BytesIO
import logging
import os

encoding = 'utf-8'

class donwloadReference:

    def __init__(self,file_name:str,response, outputFile:str, url):
        self.file_name = file_name
        self.response = response # Resource object type
        self.outputFile = outputFile
        self.logger = logging.getLogger(__name__)
        self.url = url
        
    def decompress_GZ(self):
        import gzip

        print(f"Download file: {self.file_name}")
        self.logger.info(f"Download file: {self.file_name}")

        # Add exception
        dataBytes = BytesIO(self.response.read())

        try:
            # write in local directory
            with open(self.outputFile,'wb') as f:
                f.write(dataBytes.read())

            f.close()

            if self.outputFile:
                print(f"The {self.outputFile} file was Downloaded")
                self.logger.info(f"The {self.outputFile} file was Downloaded")
            
        except:
            print(f"Error writing to {self.outputFile} file")
            self.logger.warning(f"Error writing to {self.outputFile} file")

    def decompress_bz2(self):

        import bz2
        
        print(f"Download file: {self.file_name}")
        self.logger.info(f"Download file: {self.file_name}")

        # Write in file
        try:
            with open(self.outputFile,'wb') as writeFile:
                writeFile.write(self.response.read())
            writeFile.close()
            if writeFile:
                print(f"The {self.outputFile} file was Downloaded")
                self.logger.info(f"The {self.outputFile} file was Downloaded")
        except:
            print(f"Error writing to {self.outputFile} file")
            self.logger.warning(f"Error writing to {self.outputFile} file")
                
    def decompress_tar(self):
        import tarfile
        
        print(f"Donwload file: {self.file_name}")
        self.logger.info(f"Donwload file: {self.file_name}")

        try:

            with open(self.outputFile,'wb') as writeFile:
                writeFile.write(self.response.read())
            writeFile.close()
            if writeFile:
                print(f"The {self.outputFile} file was donwloaded")
                self.logger.info(f"The {self.outputFile} file was donwloaded")
        except Exception:       
            print(f"Error writing to {self.outputFile} file")
            self.logger.warning(f"Error writing to {self.outputFile} file")
    
    def load_rdf_file(self):

        import requests as reqs

        print(f"Donwload file: {self.file_name}")
        self.logger.info(f"Donwload file: {self.file_name}")

        response = reqs.get(self.url)
        if response.ok:
            # download data
            content = response.text
            # Write in file
            try:
                with open(self.outputFile,"w") as writeFile:
                    writeFile.write(content)
                if writeFile:
                    print(f"The {self.outputFile} file was donwloaded")
                    self.logger.info(f"The {self.outputFile} file was donwloaded")
            except:
                print(f"Error writing to {self.outputFile} file")
                self.logger.warning(f"Error writing to {self.outputFile} file")
    
    def writeResource(self):
        
        if ".gz" in self.file_name and not ".tar" in self.file_name:
            self.decompress_GZ()
        if ".tar.gz" in self.file_name:
            self.decompress_tar()
        if ".bz2" in self.file_name:
            self.decompress_bz2()        
        if ".rdf" in self.file_name:
            self.load_rdf_file()