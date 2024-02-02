#!/bin/bash
#Realizar un scrip que recopile el nombre de usuario y UID.
#Autor:Javier Valencia Larios
#Fecha:02-02-2024

clear

if [ $# -gt 1 ];then
        echo "Numero de parametros mayor al permitido"
        exit
fi

if [ $# -eq 0 ]; then
    uip=1000
else
    uip=$1
fi


dia=$(date +%D)
hora=$(date +%H:%m)

num=0

IFS=":"
        echo "======================================================="
        echo "Informe de usuarios el día $dia a las $hora"
while read user x uid gid g home shell;do
if [ $uid -gt $uip ]; then

        echo "$user - $uid"
        let total=$num+1
fi
done < /etc/passwd

        echo "Total: $total usuarios"
        echo "======================================================="

        echo "$dia -$hora- El usuario $USER ha solicitado un informe de usuario>
