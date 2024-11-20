import os
from rdflib import Graph
from pathlib import Path
import logging

class Goenames_graph:

    def __init__(self,ResourcesDir:str) -> None:
        self.resources_rdf = ResourcesDir
        #self.logger = logging.getLogger(__name__)
    
    def parser_graph(self) -> Graph:

        print('Load in Graph ........')
        g = Graph()
        for root,directories,files in os.walk(self.resources_rdf):
            for f in files:
                # Get path file
                path_file = os.path.join(root,f)

                #parse in Graph
                g.parse(path_file,format="application/rdf+xml")

        if len(g) > 0:
            #self.logger.info(f"Number of triples: {len(g)}")
            print(f"Number of triples: {len(g)}")

        return g

    def graph_serialize(self):

        g = self.parser_graph()
        if len(g) > 0:
            Parent = Path(self.resources_rdf).parent.absolute()
            print(Parent)
            Graph_output_directory = os.path.join(self.resources_rdf,"Geonames_data")
            if not os.path.exists(Graph_output_directory):
                os.makedirs(Graph_output_directory)
            else:
                import shutil
                shutil.rmtree(Graph_output_directory)
            
            file_output_name = os.path.join(Graph_output_directory,"geonames_data.rdf")
            g.serialize(file_output_name,format="application/rdf+xml")
            print(f"The output file: {file_output_name}")
        else:
            #self.logger.warning("Error: The graph is empty")
            print("Error: The graph is empty")



