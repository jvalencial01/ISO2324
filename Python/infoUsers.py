# Crear un menu en python para elegir una de las opciones dadas
# cada una de ellas con distintas opciones
# Autor:Javier Valencia Larios
# Fecha:26-02-2024
import os
import cpuinfo

uid = os.getuid()
if uid != 0:
    print("No eres root")
    exit()
op = 1
while op != 4:
    print("Elige una de las 4 opciones")
    print("1-Informacion del sistema y de la cpu")
    print("2-Pedir usuario y crearlo si no existe")
    print("3-Pedir un directorio si no existe lo crea")
    print("4-Salir")
    op = int(input())

    if op == 1:
        ssoo = os.uname()
        print(ssoo)
        cpu = os.cpu_count()
        print("Numero de cpu", cpu)
    if op == 2:
        usu = input("Escriba un usuario: ")
        arch = open("/etc/passwd", "r")
        enc = 0
        lista = arch.readlines()
        for i in lista:
            if usu in i:
                print(i)
                enc = 1
        if enc == 1:
            print("El usuario existe")
        else:
            os.system("useradd-m" + usu)
            print("Se ha creado el usuario")

    if op == 3:
        directorio = input("Dime un directorio: ")
        exi = os.path.exists(directorio)
        print(exi)
        di = os.path.isdir(directorio)
        print(di)
        if exi == False:
            os.system("mkdir -p" + directorio)
            print("El directorio ha sido creado")

    if op == 4:
        print("Saliendo...")
        exit()
