import logging
import os
from pathlib import Path
#
from isidore_referentiels.process import configuration_isidore, isidore_subprocess, tools_directory


class CleanProcess(tools_directory.directories):

    def __init__(self,WorkDir:str,OutputDir:str,configReferentiel):
        self.WorkDir = WorkDir
        self.OutputDir = OutputDir
        self.logger = logging.getLogger(__name__)
        self.configReferentiel = configuration_isidore.confReferentiel(configReferentiel)

    def sparql_update(self,root:str,f:str,DataDir:str,SparqlDir:list,WorkDirReference:str) -> str:

        print(f"Read file {os.path.join(root,f)}")
        
        Tmp_Directory = None # Creation of temporary directory
        outputFile = None
        # Get Resource
        parent_Dir = Path(root).parent.absolute()
        print(f"Parent Directory: {parent_Dir}")
            
        path_file = os.path.join(parent_Dir,self.referentiel,f)
        print(f"Process File: {path_file}")
        self.logger.info(f"Process File: {path_file}")
                            
        fileName, fileExtension = os.path.splitext(f)
        # Create directory tmp
        dir_tmp = self.tool_new_directory(WorkDirReference,'tmp')
        
        nCount = 0
        path_file_tmp = f"{dir_tmp}/{fileName}.ttl"
        print(f"Temporary File: {path_file_tmp}")
        self.logger.info(f"Temporary File: {path_file_tmp}")
        # Execute all Sparql Query
        for sparqlDir in SparqlDir:
            dir = Path(sparqlDir).parent.absolute()
            SparqlFile = Path(sparqlDir).name
            sparql_code = os.path.join(dir,SparqlFile)
            print(f"Execute sparql query: {sparql_code}")
            self.logger.info(f"Execute sparql query: {sparql_code}")

            print(f"File tmp path: {path_file_tmp} - Size: {path_file_tmp.__sizeof__()}")

            fileSource = None
            if nCount == 0:
                fileSource = path_file                
            else:
                fileSource = path_file_tmp
            nCount += 1
            print(f"File resource: {fileSource}")
            
            # Execute Subprocess
            response = isidore_subprocess.cmd_subprocess(fileSource, sparql_code).execute_update_subprocess()
            
            # Remove file
            if os.path.exists(path_file_tmp):
                os.remove(path_file_tmp)                        

            print(f"Size of result: {response.stdout.__sizeof__()}")
            if response.stdout.__sizeof__() > 0:
                with open(path_file_tmp,"wb") as nFile:
                    nFile.seek(0)
                    nFile.write(response.stdout)

                with open(f"test_{str(nCount)}.ttl","wb") as testFile:
                    testFile.seek(0)
                    testFile.write(response.stdout)


        outputFile = path_file_tmp
        return outputFile

    def delete_uris(self,file:str,deleteURI:list) -> str:

        directory_remove = f"{self.WorkDir}/{self.reference}/remove_uris"
        if not os.path.exists(directory_remove):
            os.mkdir(directory_remove)

        parent_Dir = Path(file).parent.absolute()
        print(f"Parent Directory: {parent_Dir}")
        
        fileName, fileExtension = os.path.splitext(file)

        FileRemoveURI = f"{directory_remove}/{fileName}.ttl"
        nCount = 0

        sparql_uris = ' '.join([f"<{uri}>" for uri in deleteURI])
        print(sparql_uris)

        print(f"Remove URIs: {sparql_uris}")
        self.logger.info(f"Remove URIs: {sparql_uris}")
        response = cmd_subprocess(file,self.deleteURIs).execute_update_subprocess()
        if response:
            if response.stdout:
                with open(FileRemoveURI,"wb") as f:
                    f.seek(0)
                    f.write(response.stdout)
                    f.close()
            else:
                FileRemoveURI = file


        # for sURI in deleteURI:
        #     # Create Code Sparql Query
        #     SparqlQuery = """
        #                 PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
        #                 DELETE {
        #                 ?s ?p ?o .
        #                 ?otherSubject ?otherPredicate ?s .
        #                 } INSERT {
        #                 # raccrocher les enfants au parent
        #                 ?children skos:broader ?parent .
        #                 ?parent skos:narrower ?children .
        #                 } WHERE {
        #                 # supprimer tous les triplets dont l'URI est sujet
        #                 ?s ?p ?o
        #                 VALUES ?s {<"""+sURI+"""> }
        #                     OPTIONAL { ?s skos:narrower|^skos:broader ?children . }
        #                     OPTIONAL { ?s skos:broader|^skos:narrower ?parent . }
        #                     # supprimer tous les triplets dont l'URI est objet
        #                     OPTIONAL { ?otherSubject ?otherPredicate ?s }
        #                     }"""


        #     # Create file
        #     SparqlQueryRemoveFile = f"{directory_remove}/SparqlQuery_Tmp.ru"
        #     with open(SparqlQueryRemoveFile,"w") as fSparqlQuery:
        #         fSparqlQuery.seek(0)
        #         fSparqlQuery.write(SparqlQuery)

        #     # Call function for remove URI
        #     fileSource = None
        #     if nCount == 0:
        #         fileSource = file
        #     else:
        #         fileSource = FileRemoveURI

        #     # remove SparqlQuery File tmp
        #     if os.path.exists(SparqlQueryRemoveFile):
        #         os.remove(SparqlQueryRemoveFile)
        return FileRemoveURI

    def generate_directory_work(self):
        directory_work = self.tool_new_directory(self.WorkDir,self.referentiel)
        return directory_work

    def get_referentiel_files(self):
        return self.configReferentiel.get_Data()

    def read(self):
        
        self.referentiel = self.configReferentiel.get_Referentiel()

        print(f"====================== {self.referentiel} ======================")
        self.logger.info(f"====================== {self.referentiel} ======================")

        print(f"Source Directory: {self.configReferentiel.get_Data()}")
        self.logger.info(f"Source Directory: {self.configReferentiel.get_Data()}")
        print(f"Sparql File: {self.configReferentiel.get_Sparql()}")
        self.logger.info(f"Sparql File: {self.configReferentiel.get_Sparql()}")
        #print(f"Delete URIs: {deleteUris}")
        #self.logger.info(f"Delete URIs: {deleteUris}")
        
        # Create directory referentiel
        Output_directory = self.tool_new_directory(self.OutputDir,self.referentiel)
        directory_work = self.tool_new_directory(self.WorkDir,self.referentiel)
        
        get_result = None
        get_path_result = None
        for root,directories,files in os.walk(configuration_referentiel.get_Data()):
            for f in files:

                # Sparql query Update
                if configuration_referentiel.get_Sparql().__sizeof__() > 0:
                    print("Update file with Sparql Query.....")
                    self.logger.info("Update file with Sparql Query.....")
                    
                    # for each file, execute update sparql query
                    # This module return path of temporary files
                    get_result = self.sparql_update(root,f,configuration_referentiel.get_Data(),configuration_referentiel.get_Sparql(),directory_work)
        
                # Remove URI's
                # if len(deleteUris) > 0:
                #     print(f"Remove URIs")
                #     self.logger.info(f"Remove URIs")
                #     # Get Result is a variable for get path when the preprocessing sparql queries
                #     if get_result:
                #         get_path_result = self.delete_uris(get_result,deleteUris)
                #     else:
                #         get_path_result = self.delete_uris(f,deleteUris)

        # Copy file in Output Directory
        # import the module
        import shutil
        if get_result is not None and get_path_result is None:
            # Copy Result file to Output directory
            shutil.copy(get_result,Output_directory)
        elif get_result is not None and get_path_result is not None:
            # Copy Result file to Output directory
            shutil.copy(get_path_result,Output_directory)
        elif get_result is None and get_path_result is not None:
            # Copy Result file to Output directory
            shutil.copy(get_path_result,Output_directory)
        #elif get_result is None and get_path_result is None:
            # Copy Result file to Output directory
        #    shutil.copy(dataDir,Output_directory)
        
        print(f"Writed in Output Directory {Output_directory}")

        return True


class sparql_process(CleanProcess):

    def __init__(self, WorkDir: str, OutputDir: str, configReferentiel):
        super().__init__(WorkDir, OutputDir, configReferentiel)

    def execute_sparql_queries(self):

        for root,directories,files in self.get_referentiel_files():