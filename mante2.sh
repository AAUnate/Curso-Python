#!/usr/bin/env bash
listado () 
{ con=($(ls));
largo=0;
for la in "${con[@]}";
    do
        {
            if [[ "${#la}" -gt "$largo" ]]; then
                largo="${#la}";
            fi
        };
    done
    completar=0;
    for ar in "${con[@]}";
    do
        { 
            if [[ -d "$ar" ]]; then
                completar=$(($largo - ${#ar}));
                if [[ $completar -eq 0 ]]; then
                    completar=0; 
                fi
                mensaje=$(printf "%$completar.s" | tr ' ' "-");
                echo -e "\t--->>> $ar $mensaje>\tDirecotorio";
            else
                completar=$(($largo - ${#ar}));
                if [[ $completar -eq 0 ]]; then
                    completar=0; 
                fi
                mensaje=$(printf "%$completar.s" | tr ' ' "-");
                echo -e "\t--->>> $ar $mensaje>\tArchivo";
            fi
        };
    done
}
lista2 () 
{ 
    echo -e "\tListado: ";
    ls -F --color=auto --show-control-chars -lA | awk '$1=="drwxr-xr-x" {print "\t"$1 " - " $3 " - " $6 " - " $9 "\t--> Directorio"}';
    echo " ";
    ls -F --color=auto --show-control-chars -lA | awk '$1=="-rw-r--r--" {print "\t"$1 " - " $3 " - " $6 " - " $9 "\t--> Archivo"}';
    echo " "
}
mensaje () 
{ 
    clear;
    echo -e "\ta. Rama: $rama1\n\tb. Rama: $rama2\n"
}
    rama1=$(git symbolic-ref --short HEAD);
    rama2=$(git rev-parse --abbrev-ref HEAD);
    mensaje rama1 rama2;
    sleep 1;
    lista2;
    sleep 3;
    listado

