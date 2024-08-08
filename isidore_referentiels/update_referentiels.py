import logging
import os
from .isidore_subprocess import cmd_subprocess
from pathlib import Path

class update_resources:

    def __init__(self,WorkDir:str,OutputDir:str):
        self.WorkDir = WorkDir
        self.OutputDir = OutputDir
        
        self.reference = None
        self.logger = logging.getLogger(__name__)        
    
    def sparql_update_resource(self,DataDir:str,SparqlDir:list,WorkDirReference:str) -> str:

        print(f"Read in directory {DataDir}")
        
        Tmp_Directory = None # Creation of temporary directory
        outputFile = None
        # Get Resource
        for root,directories,files in os.walk(DataDir):
            # Get Parent path Project
            parent_Dir = Path(root).parent.absolute()
            print(f"Parent Directory: {parent_Dir}")
            if len(files) > 0:
                for f in files:
                    # Get Data file path
                    path_file = os.path.join(parent_Dir,self.reference,f) #f"{root}/{f}"
                    print(f"Process File: {path_file}")
                    self.logger.info(f"Process File: {path_file}")
                                        
                    fileName, fileExtension = os.path.splitext(f)
                    # Create directory tmp
                    dir_tmp = f"{WorkDirReference}/tmp"
                    if not os.path.exists(dir_tmp):
                        Tmp_Directory = dir_tmp
                        os.mkdir(dir_tmp)
                    
                    nCount = 0
                    path_file_tmp = f"{dir_tmp}/{self.reference}.ttl"
                    print(f"Temporary File: {path_file_tmp}")
                    self.logger.info(f"Temporary File: {path_file_tmp}")
                    
                    # Execute all Sparql Query
                    for sparql_code in SparqlDir:
                        print(f"Execute sparql query: {sparql_code}")
                        self.logger.info(f"Execute sparql query: {sparql_code}")
                        
                        fileSource = None
                        if nCount == 0:
                            fileSource = path_file
                            nCount = 1
                        else:
                            fileSource = path_file_tmp
                        
                        # Execute Subprocess
                        response = cmd_subprocess(fileSource,sparql_code).execute_update_subprocess()
                        
                        # Remove file
                        if os.path.exists(path_file_tmp):
                            os.remove(path_file_tmp)                        

                        with open(path_file_tmp,"wb") as f:
                            if response:
                                f.seek(0)
                                f.write(response.stdout)                                

                    outputFile = path_file_tmp
        return outputFile

    def delete_uris(self,file:str,deleteURI:list) -> str:

        directory_remove = f"{self.WorkDir}/{self.reference}/remove_uris"
        if not os.path.exists(directory_remove):
            os.mkdir(directory_remove)

        FileRemoveURI = f"{directory_remove}/{self.reference}.ttl"
        nCount = 0
        for sURI in deleteURI:

            print(f"Remove URI: {sURI}")
            self.logger.info(f"Remove URI: {sURI}")

            # Create Code Sparql Query
            #SparqlQuery = "DELETE { ?s ?p ?o . }  where { ?s ?p ?o { VALUES ?s {<"+sURI+">} ?s ?p ?o } UNION { VALUES ?o {<"+sURI+">} ?s ?p ?o } }"

            SparqlQuery = """
                        PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
                        DELETE {
                        ?s ?p ?o .
                        ?otherSubject ?otherPredicate ?s .
                        } INSERT {
                        # raccrocher les enfants au parent
                        ?children skos:broader ?parent .
                        ?parent skos:narrower ?children .
                        } WHERE {
                        # supprimer tous les triplets dont l'URI est sujet
                        ?s ?p ?o
                        VALUES ?s {<"""+sURI+"""> }
                            OPTIONAL { ?s skos:narrower|^skos:broader ?children . }
                            OPTIONAL { ?s skos:broader|^skos:narrower ?parent . }
                            # supprimer tous les triplets dont l'URI est objet
                            OPTIONAL { ?otherSubject ?otherPredicate ?s }
                            }"""


            # Create file
            SparqlQueryRemoveFile = f"{directory_remove}/SparqlQuery_Tmp.ru"
            with open(SparqlQueryRemoveFile,"w") as fSparqlQuery:
                fSparqlQuery.seek(0)
                fSparqlQuery.write(SparqlQuery)

            # Call function for remove URI
            fileSource = None
            if nCount == 0:
                fileSource = file
            else:
                fileSource = FileRemoveURI

            response = cmd_subprocess(fileSource,SparqlQueryRemoveFile).execute_update_subprocess()
            
            if response:
                if response.stdout:
                    with open(FileRemoveURI,"wb") as f:
                        f.seek(0)
                        f.write(response.stdout)
                        f.close()
                else:
                    FileRemoveURI = file

            # remove SparqlQuery File tmp
            if os.path.exists(SparqlQueryRemoveFile):
                os.remove(SparqlQueryRemoveFile)
        return FileRemoveURI

    def generate_resources(self, refInput:list):

        reference = refInput[0] # Get Reference
        dataDir = ''.join(refInput[1]) # Directory Source
        SparqlFiles = refInput[2] # Directory Source Sparql
        deleteUris = refInput[3] # URI's 
        
        print(f"====================== {reference} ======================")
        self.logger.info(f"====================== {reference} ======================")

        self.reference = reference
        print(f"Source Directory: {''.join(dataDir)}")
        self.logger.info(f"Source Directory: {''.join(dataDir)}")
        print(f"Sparql File: {SparqlFiles}")
        self.logger.info(f"Sparql File: {SparqlFiles}")
        print(f"Delete URIs: {deleteUris}")
        self.logger.info(f"Delete URIs: {deleteUris}")

        Output_directory = f"{self.OutputDir }/{self.reference}"
        if not os.path.exists(Output_directory):
            os.mkdir(Output_directory)

        # Create Directory
        directory_work = f"{self.WorkDir}/{self.reference}"
        if not os.path.exists(directory_work):
            os.mkdir(directory_work)

        # Sparql query Update
        get_result = None
        if SparqlFiles:
            print("Update file with Sparql Query.....")
            self.logger.info("Update file with Sparql Query.....")
            
            # for each file, execute update sparql query
            # This module return path of temporary files
            get_result = self.sparql_update_resource(dataDir,SparqlFiles,directory_work)
        
        # Remove URI's
        get_path_result = None
        if len(deleteUris) > 0:
            print(f"Remove URIs")
            self.logger.info(f"Remove URIs")
            # Get Result is a variable for get path when the preprocessing sparql queries
            if get_result:
                get_path_result = self.delete_uris(get_result,deleteUris)
            else:
                get_path_result = self.delete_uris(dataDir,deleteUris)

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
        elif get_result is None and get_path_result is None:
            # Copy Result file to Output directory
            shutil.copy(dataDir,Output_directory)
        
        print(f"Writed in Output Directory {Output_directory}")

        return True

    def read_resources(self,vocabularies:list):

        for vocReference in vocabularies:
            #if vocReference[0] == "bne":
                # For each Reference generate output file
            self.generate_resources(vocReference)