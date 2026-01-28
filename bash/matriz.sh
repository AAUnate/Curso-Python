#!/bin/bash
mostrar(){
    #echo "${matriz[0]} ${matriz[1]}"
    j=0
    while [[ $j < $i ]]; do
        echo "matriz-Nombre: ${matriz[$j]}"
        j=$(( 1+j ))
        echo "Matriz-edad: ${matriz[$j]}"
        j=$(( i+j ))
    done
}

clear
seguir="S"
i=0
while [[ "$seguir" =~ ^[Ss]$ ]]; do
    read -p "Ingrese El Nombre: " matriz[$i]
    i=$(( 1+i ))
    read -p "Ingrese La Edad: " matriz[$i]
    #echo "matriz ${matriz[0]} ${matriz[1]}"
    i=$(( 1+i ))
    read -p "Desea continuar: " seguir
    if ! [[ "$seguir" =~ ^[Ss]$ ]]; then
        echo "adios..."
        
        mostrar $matriz $i
        exit 1
    else
        continue
    fi
done
