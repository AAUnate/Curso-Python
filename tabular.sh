#!/bin/bash
tabular () 
{ 
    clear;
    declare -a longi=($(git log --pretty="%h %G? %aN %s" | awk '{print NF}'));
    mayor=0 && for i in "${longi[@]}";
    do
        { 
            if [[ "$i" -gt "$mayor" ]]; then
                mayor=$i;
            fi
        };
    done;
    declare -a ind;
    o=0;
    e=6;
    while [[ $e -lt $(( mayor+1 )) ]]; do
        { 
            if [[ $e -eq $mayor ]]; then
                ind[$o]=${ind[$o]}\$$e;
            else
                ind[$o]=${ind[$o]}\$$e'" "';
            fi;
            e=$(( $e+1 ))
        };
    done;
    git log --pretty="%h %G? %aN %s" | awk "{print \$1\" - \"\$1\" - \"${ind[0]}}"
}
tabular
