import os
import pandas as pd
import logging
from io import BytesIO
from pathlib import Path
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess as cs

class Rapport():

    def __init__(self,Clean_Directory:str,ReferentielInformation) -> None:
        self.src_directory = Clean_Directory
        self.Referentiel = ReferentielInformation.get_Referentiel()
        self.Analize = Path(ReferentielInformation.get_Analize()).absolute()
        self.Wikidata = Path(ReferentielInformation.get_Wikidata()).absolute()
        self.logger = logging.getLogger(__name__)

    def get_data(self,SPARQLQuery:str) -> pd.DataFrame:

        response = cs.execute_query_subprocess(self,self.src_directory,SPARQLQuery,"CSV")
        if response:
            if response.stdout:
                print("Generate information of rapport")
                self.logger.info("Generate information of rapport")
                df = pd.read_csv(BytesIO(response.stdout))
                #df.to_csv(path_file_analize,index=False)
            
            # Write in log Exceptions
            if response.stderr:
                r = open(response.stderr,'rb')
                self.logger.warning(f"Exception: {r}")
        return df
    
    def generate_rapport(self):

        print(f"********** Generate Rapport {self.Referentiel} **********")

        # Analize
        dfAnalize_Pivot = pd.DataFrame()
        if self.Analize:
            dfAnalize_Pivot = self.get_data(self.Analize)
            print(f"Generer le rapport de {self.Referentiel}")
            self.logger.info(f"Generer le rapport de {self.Referentiel}")
        
        dfWikidata = pd.DataFrame()
        if self.Wikidata:
            dfWikidata = self.get_data(self.Wikidata)
            print(f"Generer le rapport de Wikidata por le Referentiel: {self.Referentiel}")
            self.logger.info(f"Generer le rapport de Wikidata por le Referentiel: {self.Referentiel}")

        # Get all uris match and not match
        dfMerge = dfAnalize_Pivot.merge(right=dfWikidata,how='left', left_on='uriRef',right_on='uriRef')
        dfMerge.to_csv(f"Rapport_{self.Referentiel}.csv",index=False)