clear
read -p "Ingrese el nombre del directoroio: " direc
if ! [ -e "$direc" ]; then
    echo ""
    echo "El directorio buscado ("$direc"), no existe"
    echo ""
    echo "--------------Final de Script--------------"
    exit 1
fi
read -p "Ingrese el nombre del archivo: " archi
veri=$(find "$direc" -name "$archi")
echo #
if [ "$veri" = "" ]; then
    echo "El archivo buscado "$archi" no existe, por lo tanto se creara"
    principio=1
else
    contenido=$(cat "$direc""/""$archi")
    if [ "$contenido" = "" ]; then
        echo "El archivo "$archi" está vacío"
        echo "Los nuevos datos se agregarán al principio"
        principio=1
    else
        echo "El contenido del archivo "$archi" es:
        "$contenido""
        echo "Los nuevos datos se agregarán al final"
        principio=2
    fi
fi
echo ""
read -p "Ingrese Los nuevos datos: " agregar
if [ "$principio" -eq 1 ] ; then
    $(echo "$agregar" > "$direc""/""$archi")
elif [ "$principio" -eq 2 ]; then
    $(echo "$agregar" >> "$direc""/""$archi")
fi
echo ""
i=0
fin=5
for i in "$fin"; do
    echo "$i"
done
echo "--------------Final de Agregar.sh----------------"