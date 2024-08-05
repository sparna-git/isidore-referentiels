from rdflib import Graph,RDF, Literal,URIRef, SKOS
import logging
from pathlib import Path, PurePath
import os
from subprocess import run

class compare_graph():

    def __init__(self,vocabularies, src:str, WorkDir:str):
        self.vocabularies = vocabularies
        self.src_directory = src
        self.work_directory = WorkDir
        
        self.gPivot = Graph()
        self.gComparator = Graph()
        # Write in log
        self.logger = logging.getLogger(__name__)

    """
        Load in Graph
    """
    def load_in_grap(self,src) -> Graph:
        
        print(f"Load in Graph {src}")
        g = Graph()
        try:
            g.parse(src)
        except Exception as e:
            self.logger.warning(f"Error - Load in Graph: {e}")

        return g
    
    """
        Filter
    """
    def filter(self, g:Graph, filterConcept:str) -> Graph:

        gFilter = Graph()
        print("Filter .....")

        for s,p,o in g.triples((None,RDF.type,None)):
            for sub,pre,obj in g.triples((s,None,None)):
                if type(obj) == URIRef:
                    if "wikidata" in obj:
                        gFilter.add((sub,pre,obj))
        return gFilter
    
    """
        Configuration
    """
    def filter_reference(self,ReferencePivot:str,srcPivot,ReferenceCompare:str,srcCompare,filterCode:str):

        # Load in Graph
        gSrcPivot = self.load_in_grap(srcPivot)

        print("Filter")
        # Create new file with the filter
        gFilterPivot = self.filter(gSrcPivot,filterCode)
        if len(gFilterPivot) > 0:
            try:
                pivot_dir = f"{self.work_directory}/{ReferencePivot}_Filter.ttl"
                print(f"Serialier result: {srcPivot}")
                gFilterPivot.serialize(pivot_dir,format="turtle")
            except Exception as e:
                self.logger.warning(f"Error in serialize of result: {srcPivot} Error: {e.__str__()}")

        # Load in Graph
        gSrcCompare = self.load_in_grap(srcCompare)
        # Create new file with the filter
        gFilterCompare = self.filter(gSrcCompare,filterCode)
        if len(gFilterCompare) > 0:
            try:
                compare_dir = f"{self.work_directory}/{ReferenceCompare}_Filter.ttl"
                print(f"Serialier result: {compare_dir}")
                gFilterCompare.serialize(compare_dir,format="turtle")
            except Exception as e:
                self.logger.warning(f"Error in serialize of result: {compare_dir} Error: {e.__str__()}")   


        # Remove in Graph
        #g = self.remove_triples(gFilterPivot, gSrcCompare)

    #def remove_triples(self, gSrcFilter:Graph, gRemove:Graph):

        # Get all triples in Filter 
        #for s,p,o in gSrcFilter:
            #fin 





    def get_file_name(self,src):

        for root,directories,files in os.walk(src):

            if len(files) == 1:
                return ''.join(files )
            else:
                print("Error in {src} directory")
                self.logger.warning("Error in {src} directory")
                break

    def filter_source(self):

        print("====================== Filter Reference ======================")
        self.logger.info("====================== Filter Reference ======================")
        for ref in self.vocabularies:
            reference = ref["id"]
            filterKey = ref["filter"]
            compare = ''.join(ref["compare"])

            if compare:

                # Create directory
                filter_dir = f"{self.work_directory}/filter"
                if not os.path.exists(filter_dir):
                    os.mkdir(filter_dir)

                references_directory = f"{filter_dir}/{reference}_{compare}"
                if not os.path.exists(references_directory):
                    os.mkdir(references_directory)

                # set new directory 
                self.work_directory = references_directory


                print(f"====================== {reference} ======================")
                self.logger.info(f"====================== {reference} ======================")

                print(f"Reference: {reference}")
                print(f"Filter: {filterKey}")
                print(f"Compare File: {compare}")

                pathSrc = Path(self.src_directory)
                srcPivot = f"{pathSrc}/{reference}"
                srcCompare = f"{pathSrc}/{compare}"
                path_pivot = f"{srcPivot}/{self.get_file_name(srcPivot)}"
                path_compare = f"{srcCompare}/{self.get_file_name(srcCompare)}"

                print(f"Directory Pivot: {path_pivot}")
                self.logger.info(f"Directory Pivot: {path_pivot}")
                print(f"Directory Compare: {path_compare}")
                self.logger.info(f"Directory Compare: {path_compare}")

                self.filter_reference(reference,path_pivot,compare,path_compare,filterKey)