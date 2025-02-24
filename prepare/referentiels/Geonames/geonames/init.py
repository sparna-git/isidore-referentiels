import argparse
from pathlib import Path
from .process.geonames_resources import Geonames_RDF
from .process.geonames_graph import Goenames_graph
#from process.get_resource_json import resource_json

def main():
    # Arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("--user",help="Identifier Geonames",type=Path,required=True)
    parser.add_argument("--output",help="Dosier de travail",type=Path,required=True)
    args = parser.parse_args()
    
    # Donwload all RDF Files
    Geonames_rdf = Geonames_RDF(args.output, args.user)
    Geonames_rdf.get_resources_geonames()    
    # Generate Graph
    #g = Goenames_graph(args.directory)
    #g.graph_serialize()


if __name__ == "__main__":
    main()