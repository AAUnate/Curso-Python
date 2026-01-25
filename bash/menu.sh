mostrar(){
    echo "Adios "$1" "$2" "$3""
}
seguir="S"
while [[ "$seguir" =~ ^[Ss]$ ]]; do
    clear
    echo "Aplicaciones a ejecutar -----------------"
    echo "1. Agregar.sh"
    echo "2. Buscar.sh"
    echo "3. Bucle.sh"
    echo "4. Grabar.sh"
    echo "5. Seguir.sh"
    read -p "Ingrese un Número del 1-5: " numero
    case $numero in
        1) ./agregar.sh
        ;;
        2) ./buscar.sh
        ;;
        3) ./bucle.sh
        ;;
        4) ./seguir.sh
        ;;
        *) echo "El valor ingresado "$numero" no es válido" 
    esac
    clear
    read -p "Desea seguir en Menu.sh $/N: " seguir
    if [[ "$seguir" =~ ^[Ss]$ ]]; then
        continue
    else
        fecha=$(date)
        mostrar "ariel" "uñate" "$fecha"
        echo "Adios... "
    fi
done