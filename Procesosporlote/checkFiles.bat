@echo off
REM Crear una estructura condicional
REM
REM autor: Javier Vale
REM fecha: 17-11-2023

Set/P num=Dale a 1 para crear un fichero.
if %num% EQU 1 goto fichero
if %num% NEQ 1 goto final
:fichero
set/P nom=Eliga el nombre nombre.txt
echo > %nom%
pause

if exist C:\nombre.txt (echo "Existe el fichero") else (echo > nombre.txt)

:final
echo No selecionado nada
pause