from .configuration import readConfiguration
# Modul for download and preprocessing reference file
from .update_resources import update_resources
from .diff_graphs import compare_graph
import os
import sys
import time

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
    OutputDir,WorkDir,logger,Vocabularies, vocabularyObj = readConfig.readSource()
    
    """
    Update References with Sparql Query
        - Execute a code Sparql query for each Reference
        - Load in Grahp 
        - Remove URI's
        - Write output file in TURTLE
    """
    
    logger.info("============================ Preprocessing resources ============================")
    print("============================ Preprocessing resources ============================")
    start_preprocessing = time.time()
    preprocessing = update_resources(WorkDir,OutputDir)
    preprocessing.read_resources(Vocabularies)
    end_preprocessing = time.time()
    time_preprocessing = end_preprocessing - start_preprocessing
    logger.info(f"End preprocessing all resources {time_preprocessing}")

    """
        Fase 2 - Filter all reference    
    """
    print("Compare Sources")
    logger.info("============================ Filter References ============================")
    start_preprocessing = time.time()
    compare = compare_graph(vocabularyObj, OutputDir, WorkDir)
    compare.filter_source()
    time_preprocessing = end_preprocessing - start_preprocessing
    logger.info(f"End filter references {time_preprocessing}")


if __name__ == "__main__":

    main()