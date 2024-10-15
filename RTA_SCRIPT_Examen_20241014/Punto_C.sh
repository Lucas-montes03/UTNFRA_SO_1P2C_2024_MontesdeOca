#!/bin/bash
#Creamos los grupos secundarios

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

echo "Grupos secundarios creados"

#Asignamos a la variable 'password' el hash de mi usuario

usuario=$(whoami)
password=$(sudo cat /etc/shadow | grep $usuario | awk -F ':' '{print $2}')

#Creando los usuarios

sudo useradd -m -s /bin/bash -c "Primer alumno" -p $password -G p1c2_2024_gAlumno p1_c2_2024_A1

sudo useradd -m -s /bin/bash -c "Segundo alumno" -p $password -G p1c2_2024_gAlumno p1_c2_2024_A2

sudo useradd -m -s /bin/bash -c "Tercer alumno" -p $password -G p1c2_2024_gAlumno p1_c2_2024_A3

sudo useradd -m -s /bin/bash -c "Primer profesor" -p $password -G p1c2_2024_gProfesores p1_c2_2024_P1

echo "Usuarios creados"

#Cambiando los dueños de los directorios

sudo chown -R p1_c2_2024_A1 /Examenes-UTN/alumno_1

sudo chown -R p1_c2_2024_A2 /Examenes-UTN/alumno_2

sudo chown -R p1_c2_2024_A3 /Examenes-UTN/alumno_3

sudo chown -R p1_c2_2024_P1 /Examenes-UTN/profesores

echo "Se cambiaron los dueños de los directorios"

#Damos los permisos en los directorios para hacer los cambios

sudo su vagrant

sudo chmod 777 /Examenes-UTN/alumno_{1..3} /Examenes-UTN/profesores

#Creamos el archivo 'validar.txt' en cada directorio

sudo -u  p1_c2_2024_A1 bash -c "whoami > /Examenes-UTN/alumno_1/validar.txt"

sudo -u  p1_c2_2024_A2 bash -c "whoami > /Examenes-UTN/alumno_2/validar.txt"

sudo -u  p1_c2_2024_A3 bash -c "whoami > /Examenes-UTN/alumno_3/validar.txt"

sudo -u  p1_c2_2024_P1 bash -c "whoami > /Examenes-UTN/profesores/validar.txt"

#Cambios los permisos en los directorios

sudo chmod 750 /Examenes-UTN/alumno_1

sudo chmod 760 /Examenes-UTN/alumno_2

sudo chmod 700 /Examenes-UTN/alumno_3

sudo chmod 775 /Examenes-UTN/profesores

echo "Se cambiaron los permisos en los directorios"











