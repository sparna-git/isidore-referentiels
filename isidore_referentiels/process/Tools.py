import os
from pathlib import Path
import shutil
import logging

class tools:

    logging.getLogger(__name__)

    def get_path_absoluted(getPathAbsolute:str) -> str:
        return Path(getPathAbsolute).absolute()
    
    def get_path_Parent(getPathAbsolute:str) -> str:
        return Path(getPathAbsolute).parent.absolute()

    def new_directory(directory:str,directoryname:str) -> str:

        path_full = Path(directory).absolute()
        new_dir = os.path.join(path_full,directoryname)
        if os.path.exists(new_dir):
            shutil.rmtree(new_dir)
        else:
            os.makedirs(new_dir)

        logging.info(f"Created directory: {new_dir}")

        return new_dir