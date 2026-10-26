clear
declare -a archivos=($(ls|sort))
for a in "${archivos[@]}"; do
    {
        if [[ -d "$a" ]]; then
            echo -e "\t---> Directorio: $a";
        else
            echo -e "\t---> Archivos: $a";
        fi
    }
done
#echo "${archivos[@]}"
#echo "${!archivos[@]}"
declare -a tipo=($(printf '%s\n' * | awk -F. 'NF > 1 {print $NF}' | sort -u))
#echo "${tipo[@]}"
for e in "${tipo[@]}"; do
    {
        echo -e "\t---> Archivo tipo $e";
    }
done