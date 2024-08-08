import subprocess
from subprocess import run, CalledProcessError, PIPE
import logging

class cmd_subprocess:

    def __init__(self,dataSource:str,QuerySource:str):
        self.dataSource = dataSource
        self.QuerySource = QuerySource
        # log
        self.logger = logging.getLogger(__name__)

    def execute_update_subprocess(self):

        print(f"Execute Sparql Query :\n Data : {self.dataSource}\n Query : {self.QuerySource}")
        self.logger.info(f"Execute Update :\n Data : {self.dataSource}\n Query : {self.QuerySource}")

        response = None
        try:
            response = run(["update",f"--data={self.dataSource}",f"--update={self.QuerySource}","--dump"],shell=True,stdout=PIPE)
        except CalledProcessError as e:
            print(f"Standard error was {e.output}")
            self.logger.warning(f"Standard error was {e.output}")

        return response
    
    def execute_query_subprocess(self):

        print(f"Execute Sparql Query :\n Data : {self.dataSource}\n Query : {self.QuerySource}")
        self.logger.info(f"Execute Sparql Query :\n Data : {self.dataSource}\n Query : {self.QuerySource}")

        response = None
        try:
            response = run(["sparql",f"--data={self.dataSource}",f"--query={self.QuerySource}"],shell=True,stdout=PIPE)
        except CalledProcessError as e:
            print(f"Standard error was {e.output}")
            self.logger.warning(f"Standard error was {e.output}")

        return response
