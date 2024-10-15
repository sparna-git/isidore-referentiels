import argparse
from pathlib import Path
from process.geonames_resources import Geonames_RDF
from process.geonames_graph import Goenames_graph
#from process.get_resource_json import resource_json
if __name__ == "__main__":

    # Arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("--user",help="Identifier Geonames",type=Path,required=True)
    parser.add_argument("--directory",help="Dosier de travail",type=Path,required=True)
    args = parser.parse_args()
    
    # Donwload all RDF Files
    Geonames_RDF = Geonames_RDF(args.directory, args.user)
    Geonames_RDF.get_resources_geonames()
    
    # Generate Graph
    g = Goenames_graph(args.directory)
    g.graph_serialize()