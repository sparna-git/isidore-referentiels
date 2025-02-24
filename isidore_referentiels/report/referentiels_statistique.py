import pandas as pd


class generateStatistique:

    def __init__(self, referentiel:pd.DataFrame,statistique:pd.DataFrame):
        self.referentiel = referentiel
        self.statistique = statistique
    
    def __evalue_concepts(self) -> pd.DataFrame:
        #
        result = pd.DataFrame()
        match_uris = pd.merge(self.statistique,self.referentiel,on="concept",how="left")
        match_uris.rename({"count":"statistique"},axis=1,inplace=True)
        if match_uris.size > 0:
            result = match_uris[["concept","statistique"]]

        return result

    def get_information_statistique(self) -> pd.DataFrame:
        return self.__evalue_concepts()