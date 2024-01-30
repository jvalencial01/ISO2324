#!/bin/bash
#
#Realizar un scrip el que buscara archivos que tenga mas de cinco lineas
#autor:Javier Valencia Larios
#Fecha:29-01-2024

if [ $# -lt 2 ];then

        echo "Menor numero de parametros necesarios"
        exit
fi

if [ -f $1 ];then
        echo "El fichero no debe de existir"
        exit
fi

if [ ! $2 ];then
        echo "El directorio no existe"
        exit
fi

fich=$(ls $2)
if [ -z $fich 2>/dev/null ];then
echo "El directorio esta vacio"
        exit
fi

echo "Javier Valencia Larios"


fich=$( ls $2/*.txt)


for i in $fich ;do
        lineas=$(cat $i|wc -l)

if [ $lineas -ge 5 ];then
        echo $i
        echo $i >> $1
        #Parte 4
        palabras==$(cat $i | wx -w)
        echo "El fichero tiene $palabras palabras" > $i.q.
         cat $i >> $i.q.
fi
done

num=$(cat $1|wc -l)
echo $num >> $1
echo "Contenido del fichero creado"
cat $1
