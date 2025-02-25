import argparse
from pathlib import Path
from .process.geonames_resources import Geonames_RDF

def main():
    # Arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("--user",help="Identifier Geonames",type=Path,required=True)
    parser.add_argument("--output",help="Dosier de travail",type=Path,required=True)
    parser.add_argument("--maxrdf",help="Nombre de rdf à télécharger",type=int,required=False)
    args = parser.parse_args()
    
    if args.maxrdf == None:
        args.maxrdf = 0

    # Donwload all RDF Files
    Geonames_rdf = Geonames_RDF(args.output, args.user, args.maxrdf)
    Geonames_rdf.get_resources_geonames()    
    

if __name__ == "__main__":
    main()