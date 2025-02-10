#!/bin/bash
#Script de agenda
#Fecha:03/02/2025
#Autor:Sergi Barbosa Muñoz

clear

while true
do
    echo "a)Añadir b)Buscar c)Ver d)Eliminar e)Salir"
    read -p "Elige una opción: " opcion

    case $opcion in
        a)  read -p "DNI: " dni
            if grep "^$dni:" agenda.txt > /dev/null
            then
                echo "DNI ya existe"
            else
                read -p "Nombre: " nombre
                read -p "Apellidos: " apellidos
                read -p "Localidad: " localidad
                echo "$dni:$nombre:$apellidos:$localidad" >> agenda.txt
            fi
            ;;
        b)  read -p "DNI: " dni
            resultado=$(grep "^$dni:" agenda.txt)
            if [ -n "$resultado" ]
            then
                echo "$resultado"
            else
                echo "No encontrado"
            fi
            ;;
        c)  if [ -s agenda.txt ]
            then
                cat agenda.txt
            else
                echo "Agenda vacía"
            fi
            ;;
        d)  echo "" > agenda.txt
            echo "Agenda vaciada"
            ;;
        e)  exit
            ;;
        *)  echo "Opción inválida"
            ;;
    esac
done
