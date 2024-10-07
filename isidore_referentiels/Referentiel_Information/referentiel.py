import logging
from isidore_referentiels.Referentiel_Information.configuration_isidore import confReferentiel
from isidore_referentiels.process.isidore_subprocess import cmd_subprocess
from pathlib import Path
import os
from isidore_referentiels.process.Tools import tools

class Information(confReferentiel,cmd_subprocess):

    def __init__(self, Data_yaml_Global):
        super().__init__(Data_yaml_Global)
        self.data = self.merge_referentiel_data()
        # Logging
        self.logger = logging.getLogger(__name__)

    def merge_referentiel_data(self):
        print(f"Merge all fichier {self.get_Data()}")
        # 
        Path_data = tools.get_path_absoluted(self.get_Data())
        
        # Créer le fichier TTL du résultat mergée 
        Parent_path = tools.get_path_Parent(self.get_Data())
        Directory_Merge = tools.new_directory(Parent_path,f"{self.get_Referentiel()}_merge")
        
        fileOutput = os.path.join(Directory_Merge,f"{self.get_Referentiel()}_full.ttl")
        Path_Result = tools.get_path_absoluted(fileOutput)
        
        response = self.merge_data(Path_data,Path_Result)
        
        return Path_Result
    
    def print_referentiel_information(self):

        self.logger.info(f"======================== {self.get_Referentiel().upper()} ========================")
        print(f"======================== {self.get_Referentiel().upper()} ========================")

        print(f"Resource : {self.data}")
        print(f"Sparql : {self.get_Sparql()}")

        #
        __Referentiel__ = self.get_Referentiel()
        __Referentie_Data__ = self.data
        __Referentie_Sparql__ = self.get_Sparql()