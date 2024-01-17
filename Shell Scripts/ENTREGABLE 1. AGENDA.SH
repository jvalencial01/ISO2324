#!/bin/bash
#
#Realizar un menu de una agenda de contacto
#Autor:Javier Valencia Larios
#Fecha:17/01/2021

clear

while true ;do

echo "Introduzca una opcion"
echo "Opcion a Añadir una entrada."
echo "Opcion b Buscar por dni."
echo "Opcion c Ver la agenda completa"
echo "Opcion d Eliminar todas las entradas de la agenda."
echo "Opcion e Finalizar"

read op

case $op in

a)
        echo "Ha seleccionado la opcion a"
        read -p "Introduzca el dni deseado " alta

if  grep "^$alta" agenda.txt 2>/dev/null ;then
        echo "Usuario existente"
else
        read -p "Introduzca el nombre " nombre
        read -p "Introduzca el apellido " apellidos
        read  -p "Introduzca la localidad " localidad
        echo $alta:$nombre:$apellidos:$localidad >>agenda.txt
fi
;;

b)
        echo "Ha seleccionado la opcion b"
        read -p "Introduzca un dni" dni
        if  grep "^$dni" agenda.txt -r >/dev/null ;then
        nombre=$(grep "$dni" agenda.txt | cut -d ":" -f 2 )
        apellido=$(grep "$dni" agenda.txt | cut -d ":" -f 3 )
        localidad=$(grep "$dni" agenda.txt | cut -d ":" -f 4 )
        echo "La persona que busaca es $nombre $apellido $localidad"
else
        echo "No esta ese DNI"
fi
;;
