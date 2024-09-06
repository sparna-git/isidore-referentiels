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

        arguments = ["update",f"--data={self.dataSource}",f"--update={self.QuerySource}","--dump"]

        print(f"Execute Command with arguments :\n {' '.join(arguments)}")
        self.logger.info(f"Execute Command with arguments :\n {' '.join(arguments)}")

        response = None
        try:
            response = run(arguments,shell=False,stdout=PIPE)
        except CalledProcessError as e:
            print(f"Standard error was {e.output}")
            self.logger.warning(f"Standard error was {e.output}")

        return response
    
    def execute_query_subprocess(self):

        arguments = ["sparql",f"--data={self.dataSource}",f"--query={self.QuerySource}"]

        print(f"Execute Command with arguments :\n {' '.join(arguments)}")
        self.logger.info(f"Execute Command with arguments :\n {' '.join(arguments)}")

        response = None
        try:
            response = run(arguments,shell=False,stdout=PIPE)
        except CalledProcessError as e:
            print(f"Standard error was {e.output}")
            self.logger.warning(f"Standard error was {e.output}")

        return response
