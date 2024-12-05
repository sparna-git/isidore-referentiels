from urllib3 import request,exceptions, HTTPHeaderDict
import argparse
from pathlib import Path
import os
import shutil

url = "http://sparql.archives-ouvertes.fr/sparql?default-graph-uri=&query=CONSTRUCT+%7B%3Fs+%3Fp+%3Fo%7D%0D%0AWHERE+%7B%0D%0A++%3Fs+a+skos%3AConcept+.%0D%0A++%3Fs+skos%3Abroader*+%3Chttps%3A%2F%2Fdata.archives-ouvertes.fr%2Fsubject%2Fshs%3E+.%0D%0A++%3Fs+%3Fp+%3Fo%0D%0A%7D&format=text%2Fturtle&timeout=0&debug=on&run=+Run+Query+"

def telecharger():
    resp = None
    try:
        resp = request("GET",url)
    except exceptions.HTTPError as e:
        print(f"Error: {e}")

    return resp

def stocker_fichier(filename:str,data):

    try:
        with open(filename,'wb') as f:
            f.write(data)
            print(f"The {filename} file was created ")
    except os.error as e:
        print(f"Error: The {filename} file was created. {e}")

def main():

    parser = argparse.ArgumentParser(allow_abbrev=False)
    parser.add_argument("--output",help="Répértoire pour stocker le fichier",type=Path,required=True)
    args = parser.parse_args()

    print(args.output)

    response = telecharger()
    if response.status == 200:
        path_output_file = Path(args.output).absolute()
        if os.path.exists(path_output_file):
            shutil.rmtree(path_output_file)
        os.makedirs(path_output_file)
        output_file = os.path.join(path_output_file,'hal_shs.ttl')
        stocker_fichier(output_file,response.data)
    else:
        print(f"Erreur: Le lien de téléchargement à presente une erreur {response}")
        print("Aucun fichier a été générer.")

if __name__ == "__main__":
    main()