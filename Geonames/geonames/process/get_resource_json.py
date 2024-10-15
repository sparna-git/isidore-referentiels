import os
import pandas as pd
import logging
import shutil
import json
from urllib3 import request,exceptions, HTTPHeaderDict

#
headers = HTTPHeaderDict()

class resource_json:

    def __init__(self,WorkDirectory:str,GeonamesUser:str) -> None:
        self.Work_Dir = WorkDirectory
        self.GeonamesUser = GeonamesUser
        self.geonames = pd.DataFrame
        # Create directory
        directoryLog = os.path.join(self.Work_Dir,"geonames.log")
        logger = logging
        logger.basicConfig(filename=directoryLog,level=logging.DEBUG,format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')
        self.logger = logger
    
    def download_json_resource(self,geonameId,GeonamesUser:str):
        
        headers.add("Accept", "application/json;charset=UTF-8")

        try:
            url = f"http://api.geonames.org/childrenJSON?geonameId={geonameId}&username={GeonamesUser}"
            resp = request("GET",url)
            #print(f"URL: {url}")
            self.logger.info(f"URL: {url}")
        except exceptions.ResponseError as e:
            print(f"Error: {e}")
            self.logger.warning(f"Error: {e}")

        return resp
    
    def get_geonames_id(self, jsonData) -> list:

        geonamesId = []
        if "geonames" in jsonData:
            jsonData = jsonData["geonames"]
            [geonamesId.append((g['name'],g['geonameId'])) for g in jsonData]
        return geonamesId
    
    # Get Resources
    def geonames_continent_json(self):

        get_geonames_id_continent = None
        # Continent
        # http://api.geonames.org/childrenJSON?geonameId=6295630&username=thomasfrancart
        resp_continent = self.download_json_resource("6295630",self.GeonamesUser)
        if resp_continent:
            # Get Name and GeionameId
            get_geonames_id_continent = self.get_geonames_id(resp_continent.json())
            # Generate csv file
            df = pd.DataFrame(get_geonames_id_continent, columns=["Continent","GeonameId"])
            # Column Status 
            df['Status'] = ""
            path_resource = os.path.join(self.Work_Dir,"1_continents.csv")
            df.to_csv(path_resource,index=False)
        return get_geonames_id_continent, df.count()
    
    def geonames_continent_country_json(self,list_of_Continents:list):

        resource = []
        for Continent_Name,Continent_GeonameId in list_of_Continents:

            self.logger.info(f"Continent {Continent_Name} GeonamesId {Continent_GeonameId}")
            resp_countries = self.download_json_resource(Continent_GeonameId,self.GeonamesUser)
            if resp_countries:
                # Get Name and GeionameId
                get_geonames_id_country = self.get_geonames_id(resp_countries.json())
                if len(get_geonames_id_country) > 0:
                    for name, geonameId in get_geonames_id_country:
                        resource.append([Continent_Name,Continent_GeonameId,name, geonameId])
                else:
                    resource.append([Continent_Name,Continent_GeonameId,json.dumps(resp_countries.json()),"Error"])
        
        # Generate csv file
        df = pd.DataFrame(resource, columns=["Continent","Continent_GeonameId","Country","GeonameId"])
        df['Status'] = ""
        path_resource = os.path.join(self.Work_Dir,"2_countries.csv")
        df.to_csv(path_resource,index=False)

        return df, df.Country.count()
    
    def geonames_continent_country_cities(self,dfCountries:pd.DataFrame):

        resource = []
        for index,row in dfCountries.iterrows():
            Continent = row["Continent"]
            Country = row["Country"]
            GeonameId = row["GeonameId"]

            self.logger.info(f"Continent: {Continent} Country: {Country} GeonameId: {GeonameId}")
            resp_cities = self.download_json_resource(GeonameId,self.GeonamesUser)
            if resp_cities:
                # Get Name and GeionameId
                get_geonames_id_pays = self.get_geonames_id(resp_cities.json())
                self.logger.info(f"Countries Id's: {get_geonames_id_pays}")
                if len(get_geonames_id_pays) > 0:
                    for name, geonameId in get_geonames_id_pays:
                        resource.append([Continent,Country,GeonameId,name, geonameId])
                else:
                    resource.append([Continent,Country,GeonameId,json.dumps(resp_cities.json()),"Error"])

        
        # Generate csv file
        df = pd.DataFrame(resource, columns=["Continent","Country","Country_GeonameId","Cities","GeonameId"])
        df['Status'] = ""
        path_resource = os.path.join(self.Work_Dir,"3_cities.csv")
        df.to_csv(path_resource,index=False)
        
        # Statistic 
        dfOk = df[df["GeonameId"]!="Error"]
        dfOk.drop(['Country_GeonameId','Cities','Status'], axis=1)
        dfTotalOk = dfOk.groupby(["Continent","Country"]).count()
        
        dfFailed = df[df["GeonameId"]=="Error"]
        dfOk.drop(['Country_GeonameId','Cities','Status'], axis=1)
        dfTotalFailed = dfFailed.groupby(["Continent","Country"]).count()        

        return dfTotalOk, dfTotalFailed
    
    def generate_resources(self):

        print(f"============== Donwload resource json ==============")
        self.logger.info(f"============== Donwload resource json ==============")

        # Continent
        list_of_Continent,numberOfContinent = self.geonames_continent_json()
        if len(list_of_Continent) > 0:
            print(f"**************** Number of Continents: {numberOfContinent} ****************")
            self.logger.info(f"**************** Number of Continents: {numberOfContinent} ****************")
        else:
            print(f"Error: Cannot found Continent informations ....... ")
            exit()
        # Continent + Country
        if len(list_of_Continent) > 0:
            
            df_country, numberOfCountries = self.geonames_continent_country_json(list_of_Continent)
            print(f"**************** Number of Countries: {numberOfCountries} ****************")
            self.logger.info(f"**************** Number of Countries: {numberOfCountries} ****************")

            # Continent + Country + Cities
            CitiesOk, CitiesFailed = self.geonames_continent_country_cities(df_country)
            print(f"**************** Cities: ****************")
            self.logger.info(f"**************** Number of  Cities: {CitiesOk}, Number of cities failed: {CitiesFailed} ****************")
            print(f"**************** Number of  Cities: ****************")
            print(CitiesOk)
            self.logger.info(f"**************** Number of  Cities **************** \n {CitiesOk}")
            print(f"**************** Number of cities failed: {CitiesFailed} ****************")
