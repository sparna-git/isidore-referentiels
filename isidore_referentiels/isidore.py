import argparse
from pathlib import Path
from isidore_referentiels.Referentiel_Information import referentiel
from isidore_referentiels.Clean.referentiel_clean import clean_referentiel
from isidore_referentiels.Report.Referentiel_report import report

def main():

    # Arguments
    List_Of_Option = ['clean','report','integrate','merge']
    parser = argparse.ArgumentParser()
    parser.add_argument("--configuration",help="Fichier de configuration referentiel",type=Path,required=False)
    parser.add_argument("--referentiel",help="Fichier des données",type=Path,required=False)
    parser.add_argument("--etape",help=f"Choisir une etape à lancer",choices=List_Of_Option,required=True)
    args = parser.parse_args()

    if (args.configuration) and args.referentiel and args.etape:

        ref = referentiel.Information(open(args.configuration))
        ref.print_referentiel_information()

        if args.etape == "clean":
            clean_referentiel(ref).execute_sparql_update()
        elif args.etape == "report":
            report(ref).generer_report()
            
        else:
            print("Pour lancer le processus, il y a besoin d'une Etape......")



if __name__ == "__main__":
    main()