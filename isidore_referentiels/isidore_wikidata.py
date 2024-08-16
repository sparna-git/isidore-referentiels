import logging
import os
from .isidore_subprocess import cmd_subprocess
from pathlib import Path
from rdflib import Graph, exceptions
import pandas as pd

base_dir = Path(__file__).parent.absolute()

class filterWikidata():

    def __init__(self,src:str, WorkDir:str, Vocabularies:list):
        self.reference = None
        self.src_directory = src
        self.work_directory = WorkDir
        self.vocabularies = Vocabularies
        self.filterWikidata = "sparql\\wikidata\\wikidata.ru"

        directory_wikidata = os.path.join(WorkDir,"wikidata")
        if not os.path.exists(directory_wikidata):
            os.mkdir(directory_wikidata)
        self.wikidata_dir = directory_wikidata

        # Write in log
        self.logger = logging.getLogger(__name__)

    def filter_wikidata(self):

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

                print(f"====================== Filter {reference.upper()} Reference ======================")
                self.logger.info(f"====================== Filter {reference.upper()} Reference ======================")

                if reference == "lcsh":
                    import shutil
                    shutil.copy("data/lcsh/externallinks.only-wikidata.nt",wikidata_dir)
                else:
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
    
    def remove_uris(self,source:pd.DataFrame):

        # File tmp
        Directory = os.path.join(self.wikidata_dir,self.reference)
        File_Tmp = os.path.join(Directory, )

        # Read dataframe
        for index, row in source.iterrows():
            
            uriSource = row[0]
            uriUpdate = row[1]

            # Generate Sparql Quer
            sparql_query = """
                        PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
                        DELETE {
                            ?s ?p ?o .
                            ?otherSubject ?otherPredicate ?s .
                        } INSERT {
                            ?parent skos:narrower <"""+uriUpdate+""">
                            ?children skos:broader <"""+uriUpdate+""">
                            <"""+uriUpdate+"""> skos:related ?related .
                        } WHERE {
                            # supprimer tous les triplets dont l'URI est sujet
                            ?s ?p ?o
                            VALUES ?s { <"""+uriSource+"""> }
                            OPTIONAL { ?s skos:narrower|^skos:broader ?children . }
                            OPTIONAL { ?s skos:broader|^skos:narrower ?parent . }
                            OPTIONAL { ?s skos:related ?related . }
                            OPTIONAL { ?related_incomming skos:related ?s . }
                            # supprimer tous les triplets dont l'URI est objet
                            OPTIONAL { ?otherSubject ?otherPredicate ?s . }
                        }
                        """
            file_sparql_query = open(self.wikidata_dir+"query.ru",'w')
            file_sparql_query.write(sparql_query)

            # Get file source
            #response = self.find_path_resource()

            #response = cmd_subprocess()
            #if response:
        
        return 1


    def load_in_graph(self,source:str) -> Graph:

        print(f"Load in Graph {source}")
        self.logger.info("Load in Graph {source}")
        g = Graph()
        try:
            g.parse(source)
        except exceptions as e:
            print(f"Error - Load in Graph {e}")
            self.logger.info(f"Error - Load in Graph {e}")

        return g

    def generate_dataframe(self,g:Graph, ColName:str) -> pd.DataFrame:

        # Generate DataFrame        
        df = pd.DataFrame(g.triples((None,None,None)),columns=["subject","predicate","object"])
        # Add Code reference of wikidata
        df["code"] = df.object.str.split("/",expand=True)[max]
        
        # Drop and Rename column
        df = df.drop(columns=["predicate","object"])
        #
        df = df.rename(columns={"subject":f"{ColName}_subject"})

        return df
    
    def filter_data_(self,dfreference:pd.DataFrame,dfReferencesCompare:pd.DataFrame,strReferences:str) ->  str:

        # Get all uris match and not match
        dfMerge = dfreference.merge(right=dfReferencesCompare,how='left', left_on='code',right_on='code')
        # Drop column
        dfMerge = dfMerge.drop(columns=["code"])

        # Create directory
        reference_directory = os.path.join(self.wikidata_dir,self.reference)
        if not os.path.exists(reference_directory):
            os.mkdir(reference_directory)

        # Save resource
        path_files = os.path.join(reference_directory,self.reference) 
        dfMerge.to_csv(path_files+"_match.csv",index=False)
        
        dfreference.to_csv(path_files+".csv",index=False) 
        directory_strReferences = os.path.join(reference_directory,strReferences+".csv")
        dfReferencesCompare.to_csv(directory_strReferences,index=False)

        return reference_directory
   
    def populate_resource(self,source:list,strReferences:str):
        
        # Get source wikidata file in reference
        path_resource_reference = self.find_path_resource(self.reference)
        print(f"Directory Resource: {path_resource_reference}")
        # Generate Graph Reference
        reference_graph = self.load_in_graph(path_resource_reference)
        if len(reference_graph) == 0:
            print(f"Error - Cannot load data in Graph {path_resource_reference}")
            self.logger.warning(f"Error - Cannot load data in Graph {path_resource_reference}")

        s_graph = Graph()
        for r in source:
            path_resource_wikidata = self.find_path_resource(r)
            # Generate Graph
            s_graph += self.load_in_graph(path_resource_wikidata)
        if len(s_graph) == 0:
            print(f"Error - Cannot load data in Graph {path_resource_reference}")
            self.logger.warning(f"Error - Cannot load data in Graph {path_resource_reference}")

        if len(reference_graph) > 0 and len(s_graph) > 0:
            dfReference = self.generate_dataframe(reference_graph,self.reference)
            dfReferencesWikidata = self.generate_dataframe(s_graph,strReferences)
            self.filter_data_(dfReference,dfReferencesWikidata,strReferences)
        

        return True

    def find_path_resource(self,reference:str) -> str:

        path_resource = None
        for root,directories,files in os.walk(os.path.join(self.work_directory,reference,"wikidata")):
            for ref_files in files:
                path_resource = os.path.join(root,ref_files)
        
        print(path_resource)
        return path_resource

    def wikidata_uris(self):

        # Generate Wikidata data for each reference
        #self.filter_wikidata()
        #
        for vocabulary in self.vocabularies:
            reference = vocabulary["id"]
            wikidata = vocabulary["wikidata-oper"]

            self.reference = reference
            print(f" ======================= {reference.upper()} =======================")
            if len(wikidata) > 0:
                #if reference == "bne":
                print(f"References to compare: {"_".join(wikidata)}")
                self.populate_resource(wikidata,"_".join(wikidata))

