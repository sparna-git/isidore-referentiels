import argparse
from pathlib import Path
from isidore_referentiels.Referentiel_Information import referentiel
from isidore_referentiels.clean.referentiel_clean import clean_referentiel
from isidore_referentiels.report.Referentiel_report import report
from isidore_referentiels.integrate.referentiel_integration import integration

def main():

    # Arguments
    List_Of_Option = ['clean','report','integrate','merge']
    parser = argparse.ArgumentParser()
    parser.add_argument("--configuration",help="Fichier de configuration referentiel",type=Path,required=False)
    parser.add_argument("--etape",help="Choisir une etape à lancer",choices=List_Of_Option,required=True)
    args = parser.parse_args()

    if (args.configuration) and args.etape:

        ref = referentiel.Information(open(args.configuration),args.etape)
        ref.print_referentiel_information()

        if args.etape == "clean":
            clean_referentiel(ref).execute_sparql_update()            
        elif args.etape == "report":
            report(ref).generer_report()            
        elif args.etape == "integrate":
            integration(ref).filter_referentiel()
            print("integration")
        else:
            print("Pour lancer le processus, il y a besoin d'une Etape......")



if __name__ == "__main__":
    main()