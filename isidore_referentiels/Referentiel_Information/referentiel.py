import logging
from isidore_referentiels.Referentiel_Information.configuration_isidore import confReferentiel
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
import os
from pathlib import Path

class Information(confReferentiel,cmd_subprocess):

    def __init__(self, Data_yaml_Global,etape:str):
        super().__init__(Data_yaml_Global,etape)
        self.etape = etape

        # Logging
        self.logger = logging.getLogger(__name__)

        self.referentiel_report = logging
        path_referentiel_report = os.path.join(Path().parent.absolute(),"referentiel_rapport.log")
        self.referentiel_report.basicConfig(filename=path_referentiel_report,level=logging.DEBUG,format="{asctime} - {levelname} - {message}",style="{" ,datefmt="%d-%m-%Y %H:%M")
        

    def print_referentiel_information(self):

        self.logger.info(f"======================== {self.get_Referentiel().upper()} ========================")
        print(f"======================== {self.get_Referentiel().upper()} ========================")

        print(f"Répertoir de travail: {self.get_referentiel_directory()}")
        # Generate répertoire du Referentiel
        #print(f"Répertoir de résultat: {self.get_Outputdirectory()}")
       