#!/bin/bash
# Creando archivo txt
touch $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Avanzado.txt

# Creando variables
IP=$(curl -s ifconfig.me)
Usuario=$(whoami)
Hash=$(sudo grep $(whoami) /etc/shadow | awk -F ":" '{print $2}')
URL=$(git remote get-url origin)

# Añadiendo información en el txt
echo "Mi IP pública es: $IP" > $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Avanzado.txt
echo "Mi usuario es: $Usuario" >> $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Avanzado.txt
echo "El hash de mi usuario es: $Hash" >> $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $URL" >> $HOME/repogit/UTNFRA_SO_1P2C_2024_Montes_de_Oca/RTA_ARCHIVOS_Examen_20241011/Filtro_Avanzado.txt

# Mensaje cuando se ejecuta el script
echo "Se agregó la información personal a 'Filtro_Avanzado.txt'"
