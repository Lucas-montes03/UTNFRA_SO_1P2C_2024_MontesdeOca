#!/bin/bash

#Creando archivo txt
touch $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Basico.txt

echo "Se agrego el archivo 'Filtro_Basico.txt'"

#Agregando información de la RAM al txt
cat /proc/meminfo | head -n 1 > $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Basico.txt

echo "Se agregó la información de la memoria RAM al archivo 'Filtro_Basico.txt'"

#Agregando información del fabricante del chásis al txt
sudo dmidecode -t chassis | head -n 7 | tail -n 2 >> $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Basico.txt

echo "Se agregó al archivo 'Filtro_Basico.txt' la información del fabricante del chásis"
