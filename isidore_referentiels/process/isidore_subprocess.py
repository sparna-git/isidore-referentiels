import subprocess
from subprocess import run, CalledProcessError, PIPE, STDOUT

import logging

class cmd_subprocess:

    def __init__(self):
        # log
        self.logger = logging.getLogger(__name__)

    def merge_data(self,ResourceData:str,DataTmp:str):

        arguments = ["riot",f"{ResourceData}/*",">",f"{DataTmp}"]
        print(f"Execute Command with arguments :\n {' '.join(arguments)}")
        #self.logger.info(f"Execute Command with arguments :\n {' '.join(arguments)}")
        response = None
        try:
            response = run(' '.join(arguments),shell=True,stdout=PIPE, stderr=PIPE)
        except CalledProcessError as e:
            print(f"Standard error was {e.output}")
            self.logger.warning(f"Standard error was {e.output}")

        return response

    def execute_update_subprocess(self,dataSource:str,QuerySource:str):

        arguments = ["update",f"--data={dataSource}",f"--update={QuerySource}","--dump"]

        print(f"Execute Command with arguments :\n {' '.join(arguments)}")
        self.logger.info(f"Execute Command with arguments :\n {' '.join(arguments)}")

        response = None
        try:
            response = run(' '.join(arguments),shell=True,stdout=PIPE, stderr=PIPE)
        except CalledProcessError as e:
            print(f"Standard error was {e.output}")
            self.logger.warning(f"Standard error was {e.output}")

        return response
    
    def execute_query_subprocess(self,dataSource:str,QuerySource:str,format:str):

        arguments = ["sparql",f"--data={dataSource}",f"--query={QuerySource}",f"--results={format}"]

        print(f"Execute Command with arguments :\n {' '.join(arguments)}")
        self.logger.info(f"Execute Command with arguments :\n {' '.join(arguments)}")

        response = None
        try:
            response = run(' '.join(arguments),shell=True,stdout=PIPE,stderr=PIPE)            
        except CalledProcessError as e:
            print(f"Standard error was {e.output}")
            self.logger.warning(f"Standard error was {e.output}")

        return response