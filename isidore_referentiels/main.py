from .configuration import readConfiguration
# Modul for download and preprocessing reference file
from .update_referentiels import update_resources
from .isidore_wikidata import filterWikidata
import sys

def main():
    """
        Read configuration for identifier the reference
    """
    getconfigurationFile = sys.argv[1]
    if getconfigurationFile.__sizeof__ == 0:
       print("The file of configurarion is necessary for executer this process....")
       sys.exit() 

    """
        Read configuration file
        - Get Directory Root for Download source for each reference
        - Create log resource
        - Create Directories Work and  Output
    """
    readConfig = readConfiguration(getconfigurationFile)
    # read the configuration file
    OutputDir,WorkDir,logger,Vocabularies, wikidataFilter, vocabulariesObj = readConfig.readSource()
    
    """
    Update References with Sparql Query
        - Execute a code Sparql query for each Reference
        - Load in Grahp 
        - Remove URI's
        - Write output file in TURTLE
    """
    
    # logger.info("============================ Preprocessing Resources ============================")
    print("============================ Preprocessing Resources ============================")
    #preprocessing = update_resources(WorkDir,OutputDir)
    #preprocessing.read_resources(Vocabularies)
    
    """
        Phase 2 - Filter all reference    
    """
    if wikidataFilter:
        logger.info("============================ Wikidata References ============================")
        filter = filterWikidata(OutputDir, WorkDir, vocabulariesObj)
        filter.filter_wikidata() # Create wikidata files
        # Remove Wikidata URI in all referentiels
        filter.wikidata_uris() # Evaluate and remove 

    print("End process")
    logger.info("End process")

if __name__ == "__main__":

    main()