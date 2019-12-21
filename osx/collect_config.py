import pandas as pd
import os
from pathlib import PosixPath
from shutil import copy2, copytree, rmtree


# Config
config_dest = "./configurations"
config_index = "./config_index.csv"

# Read file list
config_list = pd.read_csv(config_index)

# For all config files
for index, row in config_list.iterrows():
    # Get row data
    path = PosixPath(row['path'])
    private = row['is_private'] == 1
    # Destination resolving
    expendad_path = path.expanduser()
    if path.is_absolute():
        dest = config_dest + "/" + str(path)
    elif path.parts[0] == "~":
        dest = config_dest + "/HOME/" + str(path.relative_to("~"))
    else:
        dest = config_dest + expendad_path
    dest_dir = os.path.dirname(dest)
    # Backup
    if expendad_path.exists():
        # Make parent dir if necessary
        os.makedirs(dest_dir, exist_ok=True)
        # Make dummy placeholders for private files
        if private:
            dest = dest + "_DUMMY"
            if expendad_path.is_file():
                print("DUMMY backup file : " + str(path) + ", to : " + dest)
                PosixPath(dest).touch()
            elif expendad_path.is_dir():
                print("DUMMY backup dir : " + str(path) + ", to : " + dest)
                os.makedirs(dest, exist_ok=True)
        # Copy files/dirs
        elif expendad_path.is_file():
            print("Backing up file : " + str(path) + ", to : " + dest)
            copy2(expendad_path, dest)
        elif expendad_path.is_dir():
            print("Backing up dir : " + str(path) + ", to : " + dest)
            if os.path.exists(dest):
                rmtree(dest)
            copytree(expendad_path, dest)
    else:
        print("SKPPING Uknown path : " + str(path))
