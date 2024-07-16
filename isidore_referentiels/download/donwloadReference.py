from urllib.request import urlopen
from urllib.error import URLError
from urllib import request
from os.path import basename
from isidore_referentiels.download.donwloadFile import donwloadReference

import logging
import os

class downloadReferenceURL:
    
    def __init__(self, url:str,workDirectory) -> None:
        self.url = url
        self.workDirectory = workDirectory
        self.logger = logging.getLogger(__name__)    
        
    def request_file(self):
        
        try:
            # Sending a GET Request and getting back response as HTTPResponse object.
            response = urlopen(self.url)

            file_name = request.urlopen(request.Request(self.url)).info().get_filename()
            if file_name == None:
                file_name = basename(self.url)
            
            # file name of donwloaded file
            self.logger.info(f"File Name download: {file_name}")
            # Get Extension
            name, file_extension = os.path.splitext(file_name)
            # Exception when call pactols file
            if "pactols" in file_name:
                file_name = file_name.split("?")[0]
            #
            dir_resource = os.path.join(self.workDirectory,'download')
            if not os.path.exists(dir_resource):
                os.mkdir(dir_resource) # Create directory
            
            result_in_file = os.path.join(dir_resource,file_name)
            # Call decompress module and Write a new file in Directory Work/resources
            result = donwloadReference(file_name,response,result_in_file,self.url).writeResource()
            if result:
                print(f"downloaded file: {name} - Directory: {result_in_file}")
                self.logger.info(f"downloaded file: {name} - Directory: {result_in_file}")

            #resource = response.read()
            self.logger.info("Sending a GET Request and getting back response as HTTPResponse object")
        except URLError as e:
            print(f"Failed to fech {self.url}: {e.reason}")
            self.logger.warning(f"Failed to fech {self.url}: {e.reason}")

        return file_name,file_extension,response