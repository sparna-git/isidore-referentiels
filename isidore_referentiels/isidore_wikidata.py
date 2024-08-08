import logging
from pathlib import Path, PurePath
import os
from .isidore_subprocess import cmd_subprocess
from pathlib import Path

base_dir = Path(__file__).parent.absolute()

class filterWikidata():

    def __init__(self,src:str, WorkDir:str):
        self.src_directory = src
        self.work_directory = WorkDir
        self.filterWikidata = "sparql\\wikidata\\wikidata.ru"

        # Write in log
        self.logger = logging.getLogger(__name__)

    def filter_source(self):

        print(f"Directory base: {base_dir}")

        for root,directories,files in os.walk(self.src_directory):
            # Get Parent path Project
            parent_Dir = Path(root).parent.absolute()
            for file in files:

                reference = os.path.split(root)[-1]
                # Get path
                data_source = os.path.join(parent_Dir,reference,file)
                filename = os.path.basename(data_source)
                # Create Directory
                wikidata_dir = f"{self.work_directory}/{reference}/wikidata"
                if not os.path.exists(wikidata_dir):
                    os.mkdir(wikidata_dir)


                if os.path.exists(data_source):
                    print("Data file")

                if os.path.exists(self.filterWikidata):
                    print("Wikidata file")

                print(f"====================== Filter {reference.upper()} Reference ======================")
                self.logger.info(f"====================== Filter {reference.upper()} Reference ======================")

                print("Execute process for filter WIKIDATA uri")
                self.logger.info("Execute process for filter WIKIDATA uri")
                response = cmd_subprocess(data_source,self.filterWikidata).execute_query_subprocess()
                if response.stdout:
                    file_Wikidata = f"{wikidata_dir}/{filename}"
                    with open(file_Wikidata,"wb") as f:
                        f.seek(0)
                        f.write(response.stdout)
                        f.close()
                    print(f"the {file_Wikidata} file was generated")
                    self.logger.info(f"the {file_Wikidata} file was generated")
                else:
                    print(f"The {reference} reference, not cannot was found the WIKIDATA reference")
                    self.logger.info(f"The {reference} reference, not cannot was found the WIKIDATA reference")