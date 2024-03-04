# Crear un menu con un fichero ya creado
# autor: Javier Valencia Larios
# fecha: 01-03-2024
import os
import shutil

directorios = []
ficheros = []

rutas = open("rutas.txt", "r")
lis = rutas.readlines()
print(lis)

for i in lis:
    r = i.strip()
    dire = os.path.isdir(r)
    if dire == True:
        directorios.append(r)
    fiche = os.path.isfile(r)
    if fiche == True:
        ficheros.append(r)
# print(directorios)
# print(ficheros)

print("Opcion A eliminar fichero")
print("Opcion B Mostrar informacion")
print("Opcion C Copiar fichero a un destino indicado")
print("Opcion D Mostar lista")
print("Opcion E salir")
opc = "J"

while opc != "E":
    opc = input("Seleccione una de las opciones ")
    if opc == "A":
        nomfi = input("Dime el nombre de un fichero: ")
        for i in ficheros:
            if i == nomfi:
                os.system("rm " + nomfi)
                print("Fichero eliminado")

    if opc == "B":
        nomdir = input("Dime el nombre de un directorio: ")
        for i in directorios:
            if i == nomdir:
                ls = os.system("ls " + nomdir)
                print(ls)

    if opc == "C":
        nomfic = input("Dime el nombre de un fichero: ")
        destino = input("Dime donde quieres copiar el fichero ")
        for i in ficheros:
            if i == nomfic:
                shutil.copy(nomfic, destino)
        print("Fichero", nomfic, "Copiado en ", destino)

    if opc == "D":
        lista = input("Seleccione la lista que desea leer:directorios o ficheros: ")
        if lista == "directorios":
            print(directorios)
        if lista == "ficheros":
            print(ficheros)

    if opc == "E":
        print("Saliendo...")
        exit()
