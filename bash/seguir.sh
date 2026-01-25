clear
res="s"
while [ $res = "s" ]; do
    read -p "Ingrese los nombres y apeallido: " nombres
    read -p "Desea grabar s/n: " con
    if [[ "$con" =~ ^[Ss]$ ]]; then
        echo "$nombres" >> valores.dat
    else
        echo "Los datos no se grabaron"
    fi
    read -p "deseas continuar: " res
done
echo "-------------------Final de seguir.sh-----------------------"