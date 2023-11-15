@echo off
title User Input
REM Crear una extructura condicional.
REM
REM autor: Javier Valencia Larios
REM fecha: 15-11-2023
echo Pulsa 1 para crear un archivo .txt
echo.
echo Pulsa 2 para crear un archivo .bat
set/P numero=Introduzca el numero.
set/P ruta= eligue una ruta
if %numero% EQU 1 goto txt
if %numero% EQU 2 goto bat

:txt
set/P txt=Introduzca el nombre del archivo.txt
type nul > %ruta%/%txt%.txt
pause
:bat
set/P bat=Introduzca el nombre del archivo.bat
type nul > %ruta%/%bat%.bat
pause