#!/bin/bash
clear
echo "-------------Script para buscar un archivo en una carpeta-------------"
echo ""
read -p "Ingrese el nombre de la Carpeta: " carpeta
#echo ""
if ! [ -e "$carpeta" ]; then
    echo ""
    echo "La carpeta "$carpeta" no existe."
    echo ""
    echo "--------------------Final de la busqueda--------------------"
    exit 1
fi
read -p "Ingrese el nombre del archivo: " archivo
verificar=$(find $carpeta -name $archivo)
#find $carpeta -name $archivo
echo ""
if [ "$verificar" = "" ] ; then
    echo "El archivo no existe en la carpeta "$carpeta"."
    echo ""
    echo "--------------------Final de la busqueda--------------------"
    exit 1
fi
echo "$verificar"
#echo ""
echo "Total de archivos encontrados: " $(echo "$verificar" | wc -l)
echo ""
lugar=$(pwd)
echo "Ubicación Completa: $lugar/$carpeta"
echo ""
echo "------------------------Final de Buscar.sh---------------------------"