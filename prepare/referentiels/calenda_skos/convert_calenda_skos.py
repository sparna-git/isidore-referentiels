import pandas as pd
import os
from io import StringIO
from rdflib import Graph, Namespace, URIRef, Literal
import argparse
from pathlib import Path
import shutil

# NameSpace
ns_rdf = Namespace("http://www.w3.org/1999/02/22-rdf-syntax-ns#")
ns_rdfs = Namespace("http://www.w3.org/2000/01/rdf-schema#")
ns_skos = Namespace("http://www.w3.org/2004/02/skos/core#")
ns_calenda = Namespace("https://calenda.org/categories/")


class calenda_skos:

    def __init__(self,path_file:str,output_file:str):

        # 
        self.dfResource = pd.DataFrame()
        if os.path.isfile(path_file):
            self.dfResource = pd.read_excel(path_file)
        if os.path.isdir(path_file):
            liste_df = []
            for root,directories,files in os.walk(path_file):
                for f in files:
                    path_resource = os.path.join(root,f)
                    filename,extension = os.path.splitext(f)
                    if ".csv" in extension:
                        liste_df.append(pd.read_csv(path_resource,encoding="utf-8"))
                    elif ".xlsx" in extension or ".xls" in extension:
                        liste_df.append(pd.read_excel(rf"{path_resource}",engine="openpyxl"))
                    else:
                        print(f"La ressource {path_file} n'a pas le format attendu [csv,xls,xlsx]")
            if len(liste_df) > 0:
                self.dfResource = pd.concat(liste_df)
        
        # Declaration de space de nom
        self.graph = Graph()
        self.graph.bind("rdf",ns_rdf)
        self.graph.bind("rdfs",ns_rdfs)
        self.graph.bind("calenda",ns_calenda)
        self.graph.bind("skos",ns_skos)
        
        if not os.path.exists(output_file):
            os.makedirs(output_file)
        else:
            shutil.rmtree(output_file)
            os.makedirs(output_file)
        self.output = output_file

    def convert(self):

        self.dfResource.fillna('',inplace=True)

        if self.dfResource.size > 0:
            self.graph.add((URIRef("https://calenda.org/categories"),ns_rdf.type,ns_skos.ConceptScheme))

        for index, row in self.dfResource.iterrows():

            calenda_id = row["local_id"]
            calenda_parent = row["parent_id"]
            label_fr = row["fr"]
            label_en = row["en "]
            label_pt = row["pt"]
            label_es = row["es"]
            label_it = row["it"]
            label_de = row["de"]

            subject = URIRef(ns_calenda+calenda_id)
            self.graph.add((subject,ns_rdf.type,ns_skos.Concept))

            self.graph.add((subject,ns_skos.inScheme,URIRef("https://calenda.org/categories")))
            self.graph.add((subject,ns_skos.notation,Literal(calenda_id)))

            if len(calenda_parent) > 0:
                uri_parent = URIRef(ns_calenda+calenda_parent)
                self.graph.add((subject,ns_skos.broader,uri_parent))
                self.graph.add((uri_parent,ns_skos.narrower,subject))
            
            # Labels
            if label_fr is not None or not pd.isna(label_fr):
                self.graph.add((subject,ns_skos.prefLabel,Literal(label_fr,lang="fr")))
            if label_en is not None or not pd.isna(label_en):
                self.graph.add((subject,ns_skos.prefLabel,Literal(label_en,lang="en")))
            if label_pt is not None or not pd.isna(label_pt):
                self.graph.add((subject,ns_skos.prefLabel,Literal(label_pt,lang="pt")))
            if label_es is not None or not pd.isna(label_es):
                self.graph.add((subject,ns_skos.prefLabel,Literal(label_es,lang="es")))
            if label_it is not None or not pd.isna(label_it):
                self.graph.add((subject,ns_skos.prefLabel,Literal(label_it,lang="it")))
            if label_de is not None or not pd.isna(label_de):
                self.graph.add((subject,ns_skos.prefLabel,Literal(label_de,lang="de")))
        
        path_output = None
        if len(self.graph):
            path_output = os.path.join(self.output,'calenda.ttl')
            self.graph.serialize(path_output,format="turtle")
        
        return path_output

def main():

    print("Convertir l\'information à skos")
    parser = argparse.ArgumentParser(description="Convertir 'information à SKOS",allow_abbrev=False)
    parser.add_argument("--input",help="Fichier d'information",type=Path,required=True)
    parser.add_argument("--output",help="Répértoir où stocker un fichier turtle",type=Path,required=True)

    args = parser.parse_args()

    convert_skos = calenda_skos(args.input,args.output)
    result_fichier = convert_skos.convert()
    if os.path.exists(result_fichier):
        print("Le résultat est stocker dans le répértoire: {result_fichier}")
    else:
        print("Erreur: Aucun fichier a été générer")

if __name__ == "__main__":

    main()