import argparse
from pathlib import Path
from isidore_referentiels.Referentiel_Information import referentiel
from isidore_referentiels.clean.referentiel_clean import clean_referentiel
from isidore_referentiels.report.Referentiel_report import report
from isidore_referentiels.integrate.referentiel_integration import integration

def main():

    # Arguments
    List_Of_Option = ['clean','report','integrate']
    parser = argparse.ArgumentParser(allow_abbrev=False)
    parser.add_argument("--configuration",help="Fichier de configuration referentiel",type=Path,required=True)
    parser.add_argument("--etape",help="Choisir une etape à lancer",choices=List_Of_Option,required=True)
    args = parser.parse_args()


    """ Lire le fichier de configuration"""
    ref = referentiel.Information(open(args.configuration),args.etape)
    """ Afficher les données d'un referentiel """
    ref.print_referentiel_information()

    """ Les étapes à traiter
    
        - Chaque étape a une processus d'appelle a une classe. 
    """
    if args.etape == "clean":
        """
        L'étape de nettoyage:

        input: Fichier de configuration
        Output: Fichier de résultat Turtle
        """
        clean_referentiel(ref).execute_sparql_update()            
    elif args.etape == "report":
        """
        L'étape de Rapport d'analyse:

        input: Fichier de configuration
        Output: Fichier de Rapport CSV
        """
        report(ref).generer_report()            
    elif args.etape == "integrate":
            """
            L'étape d'Integration':

            input: 
                - Fichier de Rapport d'analyse CSV
                - Fichier de resulta de l'étape de nettoyage 
            Output: Fichier de résultat Turtle
            """
            integration(ref).filter_referentiel()
    else:
        print("Pour lancer le processus, il y a besoin d'une Etape......")

if __name__ == "__main__":
    main()