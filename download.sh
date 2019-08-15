#! /bin/bash

python3 main.py downloader --classes classes.txt --image_IsGroupOf 0 --limit 1 --type_csv train
python3 main.py downloader --classes classes.txt --image_IsGroupOf 0 --limit 1 --type_csv validation