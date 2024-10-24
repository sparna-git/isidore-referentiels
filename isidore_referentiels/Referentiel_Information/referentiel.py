import logging
from isidore_referentiels.Referentiel_Information.configuration_isidore import confReferentiel
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
from pathlib import Path
import os
from isidore_referentiels.process.Tools import tools

class Information(confReferentiel,cmd_subprocess):

    def __init__(self, Data_yaml_Global,etape:str):
        super().__init__(Data_yaml_Global,etape)

        # Logging
        self.logger = logging.getLogger(__name__)

    def print_referentiel_information(self):

        self.logger.info(f"======================== {self.get_Referentiel().upper()} ========================")
        print(f"======================== {self.get_Referentiel().upper()} ========================")

        print(f"Répertoir de travail: {self.get_referentiel_directory()}")
        # Generate répertoire du Referentiel
        print(f"Répertoir de résultat: {self.get_Outputdirectory()}")
        