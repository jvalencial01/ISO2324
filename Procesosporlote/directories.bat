@echo off
title Directorios
REM Crear una estructura de directorios
REM
REM autor: Javier Vale
REM fecha: 15-11-2023

set/P num=Eligue una de las 5 opciones.

if %num% EQU 1 goto fichero
if %num% EQU 2 goto tree
if %num% EQU 3 goto dir
if %num% EQU 4 goto mkdir
if %num% EQU 5 goto copy

:fichero
set/P nombre=Elige el nombre del fichero.
mkdir %nombre%
pause

:tree
tree %USERPROFILE%
pause

:dir
dir .txt
pause

:mkdir
mkdir alfredoff marinapg ramonam 
pause

:copy
xcopy %USERPROFILE% desktop
pause