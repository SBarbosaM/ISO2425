@echo off
REM Script mkprofile.bat
REM Autor: Sergi Barbosa Muñoz
REM Fecha:20/11/2024

set /P eleccion="Menu: [(1)Crear archivo .txt] [(2)Crear archivo .bat]"

if %eleccion% == 1 goto text
if %eleccion% == 2 goto bat
if %eleccion% NEQ 1 goto err
if %eleccion% NEQ 2 goto err

:text
set /p nombre="Introduce el nombre del archivo .txt: "
echo > "%nombre%.txt"
pause
exit

:bat
set /p nombre1="Introduce el nombre del archivo .bat: "
echo > "%nombre1%.bat"
pause
exit

:err
echo ERROR
pause
exit
