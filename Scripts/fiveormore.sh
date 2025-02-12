#!/bin/bash
#Título:Five or more
#Autor:Sergi Barbosa Muñoz
#Fecha:10/02/2025


clear


if [ $# -ne 2 ]; then
    echo "Error: Se requieren dos parámetros."
    exit
fi

if [ -f "$1" ]; then
    echo "Error: El archivo '$1' ya existe."
    exit
fi

if [ ! -d "$2" ]; then
    echo "Error: Directorio '$2' no existe."
    exit
fi

if [ -z "$(ls "$2")" ]; then
    echo "Error: Directorio '$2' está vacío."
    exit
fi

echo "Autor: Sergi Barbosa Muñoz"

for i in $2/*.txt; do

	line=$(cat $i | wc -l)
	if [ $line -ge 5 ]; then
		echo $i
		echo >> $1
		cat wc $i > $i.q
		cat $i > $i.q
	fi
done

num=$(cat $1 | wc -l)
echo "El fichero $1 tiene $num líneas" >> $1


