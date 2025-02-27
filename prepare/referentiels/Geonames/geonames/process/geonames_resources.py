import os
from pathlib import Path
import shutil
import logging
from urllib3 import request,exceptions, HTTPHeaderDict, PoolManager
import time
import json
import logging
#
import sys

headers = HTTPHeaderDict()

def create_directory(DirectoryResource:str):
    
    pathDir = DirectoryResource
    if not os.path.exists(pathDir):
        os.makedirs(pathDir)

    return pathDir

class Tools:

    nCount = 0

    def __init__(self, directory:str) -> None:

        directory_work = Path(directory).absolute()
        self.directory = create_directory(directory_work)
        
        # Create log
        self.logger = logging
        self.logger.basicConfig(filename="geonames.log",level=logging.DEBUG,format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')

    def download_json_resource(self,geonameId,GeonamesUser:str):        
        headers.add("Accept", "application/json;charset=UTF-8")
        resp = None
        try:
            url = f"http://api.geonames.org/childrenJSON?geonameId={geonameId}&username={GeonamesUser}"
            self.logger.info(f"{self.nCount} Appel de l'API depuis : {url} ...")
            resp = request("GET",url)
            time.sleep(10) 
        except exceptions.ResponseError as e:
            self.logger.info(f"Error: {e}")            
        return resp

    def download_rdf_resource(self,geonameId,delay:int):
        headers.add("Accept", "application/rdf+xml;charset=UTF-8")        
        resp = None

        self.nCount += 1

        try:
            url = f"https://sws.geonames.org/{geonameId}/about.rdf"
            self.logger.info(f"{self.nCount} Téléchargement du RDF depuis : {url} ...")
            resp = request("GET",url) 
            time.sleep(delay)           
        except exceptions.HTTPError as e:
            self.logger.info(f"Error: {e}")
            resp = None
        return resp

    def save_file(self,filename:str,data) -> str:
        
        try:
            with open(filename,'wb') as f:
                f.write(data)
                self.logger.info(f"The {filename} file was created ")
        except os.error as e:
            self.logger.info(e)
            self.logger.info(f"The {filename} file was created ")

class Geonames_RDF(Tools):

    nDonwload = 0

    def __init__(self,WorkDirectory:str,GeonamesUser:str, maxDownload:int, delay:int) -> None:
        super().__init__(WorkDirectory)
        
        self.Work_Dir = Path(self.directory).absolute()
        self.GeonamesUser = GeonamesUser
        self.__list_of_continent = self.__continent()
        self.__continent_countries = {}

        self.MaxDownload = maxDownload
        self.delay = delay

        self.logger = logging.getLogger(__name__)
        self.logger.info("========================= GEONAMES =========================")


    def stopDownload(self):
        if self.MaxDownload > 0:
            if self.MaxDownload == self.nDonwload:
                sys.exit(f"Le processus à telecharger le totale demande: {self.MaxDownload}")
    
    """
        Recuperer les cles pour chaque Geonames
    """
    def __get_geonames_id(self, jsonData) -> list:
        geonamesId = []
        if "geonames" in jsonData:
            jsonData = jsonData["geonames"]
            [geonamesId.append((g['name'],g['geonameId'])) for g in jsonData]
        return geonamesId    
    
    """
        Télécharger tous les continents 
    """
    def __continent(self) -> list:
        
        resp_OK = self.download_json_resource("6295630",self.GeonamesUser)
        self.logger.info(resp_OK)
        if resp_OK:
            return self.__get_geonames_id(resp_OK.json())
                
    """
        Télécharger la notice RDF de "Mother Earth" qui est la racine avec l'ID 6295630
    """
    def __download_mother_earth_rdf(self):
        
        resp_OK = self.download_rdf_resource("6295630",self.delay)
        if resp_OK and (resp_OK.headers["Content-Type"] == "application/rdf+xml;charset=UTF-8"):
            print("Donwload RDF File: Mother Earth")
            self.logger.info("Donwload RDF File: Mother Earth")
            # Directory File
            FileOutput = os.path.join(self.Work_Dir,"mother_earth.rdf")
            self.save_file(FileOutput,resp_OK.data)
        else:
            self.logger.warning(f"Error: La notice RDF de Mother Earth: {resp_OK.data}")

    """
        Télécharger le RDF de la notice de chaque Continent
    """    
    def __download_continents(self):

        self.logger.info("*************** Download Continents *************** ")
        print("*************** Download Continents  ***************")
        self.logger.info(f"List of continent: {self.__list_of_continent}")

        for Continent_Name, geonamesId in self.__list_of_continent:

            #
            self.nDonwload += 1
            self.stopDownload()
            #
            resp_OK = self.download_rdf_resource(geonamesId,self.delay)
            if resp_OK and (resp_OK.headers["Content-Type"] == "application/rdf+xml;charset=UTF-8"):
                print(f"===== {Continent_Name}")
                self.logger.info(f"Donwload RDF File: {Continent_Name}")
                FileOutput = os.path.join(self.Work_Dir,f"{Continent_Name}_{geonamesId}.rdf")
                self.save_file(FileOutput,resp_OK.data)
            else:
                self.logger.warning(f"Error: La notice RDF du Continent: {Continent_Name}, Geoname Id: {geonamesId} Error: {resp_OK.data}")
            
        return True

    """
        Télécharger le RDF de la notice de chaque Pays  
    """
    def __download_countries(self):

        self.logger.info("*************** Download Countries *************** ")
        print("*************** Download Countries  ***************")

        self.logger.info(f"List of continent: {self.__list_of_continent}")
        
        for Continent_Name,Continent_geonamesID in self.__list_of_continent:
            Countries = []
            # Lister les children de chaque continent pour obtenir les pays
            resp_OK = self.download_json_resource(Continent_geonamesID,self.GeonamesUser)
            if resp_OK and (resp_OK.headers["Content-Type"] == "application/json;charset=UTF-8"):
                # Récupérer tous les Id's de chaque pays
                GeonamesId_Country = self.__get_geonames_id(resp_OK.json())                
                for County_name,County_geonamesID in GeonamesId_Country:
                    self.logger.info(f"- Continent: {Continent_Name}/Pays {County_name}/Geonames Id {County_geonamesID}")
                    print(f"- Continent: {Continent_Name}/Pays {County_name}/Geonames Id {County_geonamesID}")
                
                    response_country_ok = self.download_rdf_resource(County_geonamesID,self.delay)
                    
                    self.nDonwload += 1
                    self.stopDownload()
                    
                    if response_country_ok and (response_country_ok.headers["Content-Type"] == "application/rdf+xml;charset=UTF-8"):
                        output_dir = os.path.join(self.Work_Dir,f"{Continent_Name}_{County_name}_{County_geonamesID}.rdf")
                        self.save_file(output_dir,response_country_ok.data)
                        # Set in list pays and geonamesId
                        Countries.append((County_name,County_geonamesID))
                    else:
                        self.logger.warning(f"Error: La notice RDF du Continent: {Continent_Name}, Pays {County_name} Geoname Id: {County_geonamesID} Error: {response_country_ok.headers}")
                    
            else:
                self.logger.warning(f"Error: Continent: {Continent_Name}, Geoname Id: {Continent_geonamesID} Error: {json.dumps(resp_OK.json())}")
            
            self.__continent_countries[f"{Continent_Name}"] = Countries        

    """
    """
    def __download_division(self):

        self.logger.info("*************** Download Division  ***************")
        print("*************** Download Division  ***************")

        self.logger.info(f"List of counetries: {self.__continent_countries.items()}")
        
        for Continent,Pays in self.__continent_countries.items():
           for NameOfPays, geonameId in Pays:
                try:
                    resp_OK = self.download_json_resource(geonameId, self.GeonamesUser)
                    if resp_OK:
                        # Récupérer la list de Id's pour chaque division de chaque Pays
                        GeonamesId_division = self.__get_geonames_id(resp_OK.json())
                        for Division_name,Division_GeonamesId in GeonamesId_division:            
                            start_get_response_rdf = time.time()
                            resp_Division_OK = self.download_rdf_resource(Division_GeonamesId,self.delay)

                            self.nDonwload += 1
                            self.stopDownload()

                            end_get_response_rdf = time.time()
                            if resp_Division_OK and (resp_Division_OK.headers["Content-Type"] == "application/rdf+xml;charset=UTF-8"):
                                elapse_time = end_get_response_rdf - start_get_response_rdf
                                output_dir = os.path.join(self.Work_Dir,f"{Continent}_{NameOfPays}_{Division_name}_{Division_GeonamesId}.rdf")

                                self.logger.info(f"- Time take {elapse_time} secons, Continent: {Continent}/Pays {NameOfPays}/Division {Division_name}/File: {output_dir}")
                                print(f"- Time take {elapse_time} secons, Continent: {Continent}/Pays {NameOfPays}/Division {Division_name}/File: {output_dir}")
                                self.save_file(output_dir,resp_Division_OK.data)                                
                            else:
                                self.logger.warning(f"Error: Continent: {Continent}/Country {NameOfPays}/Division {Division_name}/Error: {resp_Division_OK.data}")
                            
                    else:
                        self.logger.warning(f"Continent: {Continent} Pay: {NameOfPays} Geoname Id: {geonameId} Error: {json.dumps(resp_OK.json())}")
                    
                except exceptions.HTTPError as e:
                    continue
        
    """
    Fonction principal pour télécharger toues les fichiers RDF
    """
    def get_resources_geonames(self):

        self.__download_mother_earth_rdf()
        self.__download_continents()
        self.__download_countries()
        self.__download_division()