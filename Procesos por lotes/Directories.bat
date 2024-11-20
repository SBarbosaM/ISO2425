@echo off
REM Script: Directories.bat
REM Autor: Sergi Barbosa Muñoz
REM Fecha:20/11/2024

set /P eleccion="Menu:[(1)Crear fichero] [(2)Mostrar el árbol de directorios de la carpeta de usuario] [(3)Mostrar archivos con extensión txt] [(4)Creacion los directorios] [(5)Copia de contenido] "

if %eleccion% == 1 goto fichero
if %eleccion% == 2 goto arbol
if %eleccion% == 3 goto archivo
if %eleccion% == 4 goto dir
if %eleccion% == 5 goto content
if %eleccion% NEQ 1 goto err
if %eleccion% NEQ 2 goto err
if %eleccion% NEQ 3 goto err
if %eleccion% NEQ 4 goto err
if %eleccion% NEQ 5 goto err

:fichero
set /p nombre="Introduce el nombre del fichero: "
echo > %nombre%
echo Fichero '%nombre%' creado con éxito.
pause
exit

:arbol
tree "%USERPROFILE%" /F /A
pause
exit

:archivo
dir *.txt
pause
exit

:dir
mkdir alfredoff marinapg ramonam
echo Creado con exito
pause
exit

:content
xcopy "%USERPROFILE%\*" "C:\Copia" /E /H /C /I
echo Contenido copiado con éxito.
pause
exit

:err
echo ERROR
pause
exit
