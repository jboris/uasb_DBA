#!/bin/bash
now=$(date +"%Y%m%d_%H%M%S")
dir_name="/home/dev/"
file_name="Archivo_$now.backup"
db_name="musicdb"
sudo -u postgres pg_dump -Fp $db_name > "$dir_name$file_name"
echo "$dir_name$file_name terminado correctamente."
