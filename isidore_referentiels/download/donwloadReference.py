from urllib.request import urlopen
from urllib.error import URLError
from urllib import request
from os.path import basename

import logging
import os

class downloadReferenceURL:
    
    def __init__(self, url) -> None:
        self.url = url
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

            #resource = response.read()
            self.logger.info("Sending a GET Request and getting back response as HTTPResponse object")
        except URLError as e:
            print(f"Failed to fech {self.url}: {e.reason}")
            self.logger.warning(f"Failed to fech {self.url}: {e.reason}")

        return file_name,file_extension,response