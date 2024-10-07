import argparse
from pathlib import Path
import logging
import os
import sys
from isidore_referentiels.Referentiel_Information import referentiel
from isidore_referentiels.clean.isidore_clean import clean_referentiel
from isidore_referentiels.Rapport.Referentiel_Rapport import Rapport

if __name__ == "__main__":

    # Arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("--Configuration",help="Fichier de configuration referentiel",type=Path,required=False)
    parser.add_argument("--Referentiel",help="Fichier des données",type=Path,required=False)
    parser.add_argument("--Etape",help=f"Etapes a traiter \n 1 [nettoyage d'un référentiel] 2 [analyse d'un référentiel] 3 [intégration d'un référentiel] ",type=int,required=True)
    args = parser.parse_args()

    if (args.Configuration) and args.Referentiel and args.Etape:

        ref = referentiel.Information(open(args.Configuration))
        ref.print_referentiel_information()
        if args.Etape == 1:
            # Créer les dossier de travail
            logger = logging.getLogger(__name__)
            
            #src_clean_output = None
            #if len(ref.get_Sparql()) > 0:
                # Call process for execute sparql Query
            #    src_clean_output = clean_referentiel(ref).execute_sparql_update()
            
            # Rapport
            #  
            print(ref)
            src_clean_output = r"C:\tmp\isidore-referentiel\tmp\pactols\pactols.ttl"
            if src_clean_output:
                Rapport(src_clean_output,ref).generate_rapport()

        
        # Analyser le fichier de referentiel 
        elif args.Etape == 2:
            print("Etape 2")

        else:
            print("Pour lancer le processus, il y a besoin d'une Etape......")

 