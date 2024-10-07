from pathlib import Path
import logging
import os
import shutil
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
from isidore_referentiels.Referentiel_Information.configuration_isidore import confReferentiel

class execute_Sparql(cmd_subprocess):

    def __init__(self,WorkDirectory:str,data:str, sparql:list) -> None:

        self.WorkDir = Path(WorkDirectory).absolute()
        self.data = data
        self.sparql = sparql
        #
        self.logger = logging.getLogger(__name__)
        # Call Subprocess
        super().__init__()
    
    def execute_process_update(self) -> str:

        print(f"Sparql {Path(self.data).absolute()}")
        data_path = Path(self.data).absolute()
        path_file_tmp = None
        for root,directories,files in os.walk(data_path):
            for f in files:
                # Path resource file
                fileResource = os.path.join(root,f)
                
                print(f"Data File: {fileResource}")
                
                filename,fileExtension = os.path.splitext(f)
                # Create path Tmp File
                path_file_tmp = os.path.join(self.WorkDir,f"{filename}.ttl")
                nCount = 0
                for sparql in self.sparql:
                    path_sparql_code = Path(sparql).absolute()
                    #
                    DataResource = None
                    if nCount == 0:
                        DataResource = fileResource
                        nCount = 1
                    else:
                        DataResource = path_file_tmp
                    
                    print(f"Resource: {DataResource}")
                    self.logger.info(f"Resource: {DataResource}")
                    print(f"Sparql Query: {path_sparql_code}")
                    self.logger.info(f"Sparql Query: {path_sparql_code}")
                    #
                    response = self.execute_update_subprocess(DataResource,path_sparql_code)
                    print(f"Size result: {response.stdout.__sizeof__()}")
                    if response.stdout:                        
                        # Write in File tmp
                        with open(path_file_tmp,'wb') as newfile:
                            newfile.seek(0)
                            newfile.write(response.stdout)

        return path_file_tmp      


class cleanReferentiel:

    def __init__(self,WorkDirectory:str,OutputDirectory:str,configReferentiel):
        self.WorkDir = Path(WorkDirectory).absolute()
        self.OutputDir = Path(OutputDirectory).absolute()

        configReferentiel = confReferentiel(configReferentiel)
        self.referentiel = configReferentiel.get_Referentiel()
        self.data = configReferentiel.get_Data()
        self.sparql = configReferentiel.get_Sparql()
        #
        self.logger = logging.getLogger(__name__)

    def read_referentiel(self):

        self.logger.info(f"======================== {self.referentiel} ========================")
        print(f"======================== {self.referentiel} ========================")

        print(f"Resource : {self.data}")
        print(f"Sparql : {self.sparql}")

        #
        if self.sparql:
            print("::::::::::::::::::::::::::::::::::::::::::::::::::::")
            # Create Directory
            Referentiel_Directory = os.path.join(self.WorkDir,self.referentiel,"clean")
            if not os.path.exists(Referentiel_Directory):
                os.makedirs(Referentiel_Directory)
            # Load Sparql process
            r_sparql = execute_Sparql(Referentiel_Directory,self.data,self.sparql)
            get_result = r_sparql.execute_process_update()
            print(get_result)

            # Create Directory Etape 1
            DirectoryRoot = Path(self.WorkDir).parent.absolute()
            print(DirectoryRoot)
            Clean_Output_Directory = os.path.join(DirectoryRoot,"clean")
            if not os.path.exists(Clean_Output_Directory):
                os.makedirs(Clean_Output_Directory)
            else:
                shutil.rmtree(Clean_Output_Directory)
            
            # Save Output file
            shutil.copy(get_result,Clean_Output_Directory)