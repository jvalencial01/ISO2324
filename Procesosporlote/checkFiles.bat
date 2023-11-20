@echo off
REM Crear una estructura condicional
REM
REM autor: Javier Vale
REM fecha: 17-11-2023
:inicio
set/P nom="Eliga el nombre del archivo"

if exist %nom% (
echo Existe el archivo 

goto inicio
 ) 
 else (
 
 echo > %nom%
 )

