#!/bin/bash
#Título:Cálculo
#Autor:Sergi Barbosa Muñoz
#Fecha:20/01/2025


read -p "Introduce número 1" a

read -p "Introduce número 2" b


suma=$(($a+$b))
echo "La suma de $a y $b es $suma"

resta=$(($a-$b))
echo "La resta de $a y $b es $resta"

multiplicacion=$(($a*$b))
echo "La multiplicación de $a y $b es $multiplicacion"

division=$(($a/$b))
echo "La división de $a y $b es $division"
