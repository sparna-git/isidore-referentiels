import logging
import subprocess
from subprocess import call,CalledProcessError,PIPE,run, Popen
import os
from rdflib import Graph, URIRef
from rdflib.exceptions import Error, ParserError 
import time
import sys

class update_resources:

    def __init__(self,WorkDir:str,OutputDir:str) -> None:
        self.WorkDir = WorkDir
        self.OutputDir = OutputDir
        
        self.logger = logging.getLogger(__name__)
        self.graph = Graph()
    
    """
        Sparql Code
        - Execute the command Sparql if exist
    """
    def sparql_update_resource(self,DataDir:str,SparqlDir:list,WorkDirReference:str) -> str:

        print(f"Read in directory {DataDir}")
        
        # Graph
        Tmp_Directory = None # Creation of temporary directory
        # Get Resource
        for root,directories,files in os.walk(DataDir):
            if len(files) > 0:
                for f in files:
                    # Generate Directory 
                    path_file = f"{root}/{f}"
                    print(f"File: {path_file}")
                    self.logger.info(f"File: {path_file}")
                                        
                    fileName, fileExtension = os.path.splitext(f)
                    # Create directory tmp
                    dir_tmp = f"{WorkDirReference}/tmp"
                    if not os.path.exists(dir_tmp):
                        Tmp_Directory = dir_tmp
                        os.mkdir(dir_tmp)
                    
                    nCount = 0
                    path_file_tmp = f"{dir_tmp}/{fileName}_tmp.ttl"
                    print(f"Temporary File: {path_file_tmp}")
                    self.logger.info(f"Temporary File: {path_file_tmp}")
                    
                    # Execute all Sparql Query
                    for sparql_code in SparqlDir:
                        print(f"Execute sparql query: {sparql_code}")
                        self.logger.info(f"Execute sparql query: {sparql_code}")

                        proc = None        
                        try:
                            if nCount == 0:
                                proc = run(["update",
                                    f"--data={path_file}",
                                    f"--update={sparql_code}",
                                    "--dump"
                                    ],
                                    shell=True,
                                    stdout=PIPE
                                )
                                nCount += 1
                            else:
                                proc = run(["update",
                                    f"--data={path_file_tmp}",
                                    f"--update={sparql_code}",
                                    "--dump"
                                    ],
                                    shell=True,
                                    stdout=PIPE
                                )
                        except CalledProcessError as exc:
                            print(f"Standard error was {exc.stderr}")
                            self.logger.warning(f"Standard error was {exc.stderr}")

                        # Remove file
                        if os.path.exists(path_file_tmp):
                            os.remove(path_file_tmp)
                        # Write in temporary file
                        with open(path_file_tmp,"wb") as f:
                            if proc:
                                f.seek(0)
                                f.write(proc.stdout)
                                # free memory
                                subprocess._USE_VFORK=False

        return  Tmp_Directory

    def delete_in_graph(self,file:str,deleteURI:list) -> Graph:

        g = Graph()
        # Open file
        f = open(file,"r") 

        # Load in Graph
        try:
            g.parse(f)            
        except ParserError as p:
            self.logger.warning(f"Error when ")
        
        nGraph = len(g)
        if len(g) > 0:
            print(f"the {file} was loaded in graph ")
            self.logger.info(f"the {file} was loaded in graph ")
        
        # Remove URIs
        if deleteURI:
            for r in deleteURI:
                print(f"Remove URI: {r}")
                reference = URIRef(r)
                # Remove Subject
                g.remove((reference,None,None))
                # Remove Predicate
                g.remove((None,reference,None))
                # Remove Object
                g.remove((None,None,reference))

            print(f"Remove Triples: {r} .")
            self.logger.info(f"Remove Triples: {r} .")
         
        return g

    def load_in_graph(self,getResource:str,deleteURI:list):
        for root,directories,files in os.walk(getResource):
            for file in files:
                path_file = f"{root}/{file}"
                print(f"File: {path_file}")
                # 
                try:
                    self.graph = self.delete_in_graph(path_file,deleteURI)
                except Exception as e:
                    self.logger.warning(f"Error - Load in Graph: {e}")
        
        return True
    
    def write_in_file(self, File_Output, reference:str):

        if len(self.graph) > 0:
            try:
                self.graph.serialize(File_Output,format="turtle")
                
                if len(self.graph) > 0:
                
                    # Serialize
                    # Section of statistic 
                    print(f"Number of triples loaded in Graph: {len(self.graph)}")
                    self.logger.info(f"Number of triples loaded in Graph: {len(self.graph)}")
                    print(f"Number of subjects in Graph: {self.graph.subjects.__sizeof__()}")
                    self.logger.info(f"Number of subjects in Graph: {self.graph.subjects.__sizeof__()}")


                    # Number of concepts
                    from rdflib import RDF
                    gt = list(self.graph.triples((None, RDF.type,None)))
                    print(f"Number of Concepts: {len(gt)}")
                    self.logger.info(f"Number of Concepts: {len(gt)}")
                    
                    # 
                    print(f"the {reference} file was created in the directory {File_Output}.\n")
                    self.logger.info(f"the {reference} file was created in the directory {File_Output}.\n")

                    # Remove memory in graph
                    del self.graph


            except Exception as e:
                print(f"Error serialize: {e.__str__()}")
                self.logger.warning(f"Error serialize: {e.__str__()}")

        return True
    
    def generate_resources(self, refInput:list):

        reference = refInput[0] # Get Reference
        dataDir = ''.join(refInput[1]) # Directory Source
        SparqlFiles = refInput[2] # Directory Source Sparql
        deleteUris = refInput[3] # URI's 
        
        print(f"====================== {reference} ======================")
        self.logger.info(f"====================== {reference} ======================")

        print(f"Source Directory: {''.join(dataDir)}")
        self.logger.info(f"Source Directory: {''.join(dataDir)}")
        print(f"Sparql File: {SparqlFiles}")
        self.logger.info(f"Sparql File: {SparqlFiles}")
        print(f"Delete URIs: {deleteUris}")
        self.logger.info(f"Delete URIs: {deleteUris}")

        Output_directory = f"{self.OutputDir }/{reference}"
        if not os.path.exists(Output_directory):
            os.mkdir(Output_directory)

        # Create Directory
        directory_work = f"{self.WorkDir}/{reference}"
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
        
        if get_result is not None:
            print(f"Load in Graph: {get_result} file.")
            self.logger.info(f"Load in Graph: {get_result} file.")
            # Load in Graph
            self.load_in_graph(get_result,deleteUris)
        else:
            print(f"Load in Graph: {dataDir} file.")
            self.logger.info(f"Load in Graph: {dataDir} file.")
            self.load_in_graph(dataDir,deleteUris)

        if len(self.graph) > 0:
            FileOutput_Final = f"{Output_directory}/{reference}.ttl"
            self.write_in_file(FileOutput_Final, reference)

        return True

    def read_resources(self,vocabularies:list):

        for vocReference in vocabularies:
            #if vocReference[0] != "rameau":
                #print(vocReference[0])
            self.generate_resources(vocReference)