#!/bin/bash 
#
#Realizar una calculadora
#Autor:Javier Valencia Larios
#Fecha:23-01-2024

echo "Javier Valencia Larios"


if [ $# -ne 2 ];then
        echo  "Error"
        exit
fi
if [ -f $1 ];then
        echo "Ya existe $1 escriba un archivo que no exista"
        exit
fi

touch  $1

for ((i=0;i<$2;i++))do 

read -p "Operacion: op1 op2 " op op1 op2

case $op in

s)
        echo "Has elegido la suma"
        su=$(($op1+$op2))
        echo "La suma de $op1 y $op2 es $su"
        echo $op $op1 $op2> $1
;;

d)
        echo "Has elegido la division"
        su=$(($op1/$op2))
        echo "La division de $op1 y $op2 es $su"
        echo $op $op1 $op2> $1

;;
r)
        echo "Has elegido la resta"
        su=$(($op1-$op2))
        echo "La resta de $op1 y $op2 es $su"
        echo $op $op1 $op2> $1

;;
m)
        echo "Has elegido la multiplicacion"
        su=$(($op1*$op2))
        echo "La multiplicacion de $op1 y $op2 es $su"
        echo $op $op1 $op2> $1

;;
x)
        echo "Salir"
        break
;;
*)
        echo "Error"
        exit
;;
esac
done
l=$(pwd $1)
echo "La ruta del fichero es $l/$1"
echo "Ahora te voy a mostrar el contenido del fichero creado"
cat $1
