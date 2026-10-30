shopt -s expand_aliases
#---comando de línea de la terminal-----
#clear && read -p "Ingrese la extensión: " ex && ls -l | awk -v e="$ex" '$9 ~ e {print $9}'
#---alias de la terminal---
#alias listar2='clear && read -p "Ingrese la extensión: " ex && ls -l | awk -v e="$ex" "\$9 ~ e {print \$9}"'
#---alias de un archivo bash---
#alias listar3='clear && read -p "Ingrese la extensión: " ex && ls -l | awk -v e="$ex" "\$9 ~ e {print \$9}"'
#listar3

#---comando de línea de la terminal-----
#clear && read -p "ingrese la extension:" ex && ls -l | awk -v a="$ex" '$9 ~ ("\\." a "$") {print $0}'
#---comando desde un archivo bash---
#clear && read -p "ingrese la extension:" ex && ls -l | awk -v a="$ex" '$9 ~ ("\\." a "$") {print $0}'
#---alias de la terminal---
#alias lis='clear && read -p "ingrese la extension:" ex && ls -l | awk -v a="$ex" "\$9 ~ \"\\\\.\" a \"\$\" {print \$0}"'
#---alias de un archivo bash---
#alias lis='clear && read -p "ingrese la extension:" ex && ls -l | awk -v a="$ex" "\$9 ~ \"\\\\.\" a \"\$\" {print \$0}"'
#lis

#---comando de línea de la terminal-----
#printf '%s\n' * | awk -F. 'NF > 1 {print $NF}' | sort -u
#---comando desde un archivo bash---
#printf '%s\n' * | awk -F. 'NF > 1 {print $NF}' | sort -u
#---alias de la terminal---
#alias ver='printf "%s\n" * | awk -F. "NF > 1 {print \$NF}" | sort -u'
#---alias de un archivo bash---
#alias ver1='printf "%s\n" * | awk -F. "NF > 1 {print \$NF}" | sort -u'
#ver1

#---comando de línea de la terminal-----
#clear && read -p "ingrese la extension:" ex && ls -l | awk -v a="$ex" '$9 ~ ("\\." a "\\*" "$") {print $0}'
#---comando desde un archivo bash---
#clear && read -p "ingrese la extension:" ex && ls -F --color=auto --show-control-chars -l | awk -v a="$ex" '$9 ~ ("\\." a "\\*" "$") {print $0}'
#---alias de la terminal-----
#alias ver='clear && read -p "ingrese la extension:" ex && ls -l | awk -v a="$ex" "\$9 ~ \"\\\\.\" a \"\\\\*\" \"\$\" {print \$0}"'
#---alias de un archivo bash---
#alias ver1='clear && read -p "ingrese la extension:" ex && ls -F --color=auto --show-control-chars -l | awk -v a="$ex" "\$9 ~ \"\\\\.\" a \"\\\\*\" \"\$\" {print \$0}"'
#ver1


#----- Generalización del uso de comandos -----

#---- comando desde un función ------
#function mostrar(){ clear && read -p "Ingrese el código: " ex && ls -l | awk -v e="$ex" "\$9 ~ e {print \$9}"; }
#mostrar
#---- alias desde una función de un archivo bash ----
#function ver(){ alias mas='clear && read -p "Ingrese extensión: " ex && ls -l | awk -v xt="$ex" "\$9 ~ xt {print \$9}"'; mas; }
#ver
#mas (el llamado al alias se debe colocar fuera de la función para ejecutar)
#---- alias desde la terminal ----
#function ver(){ alias mas='clear && read -p "Ingrese extensión: " ex && ls -l | awk -v xt="$ex" "\$9 ~ xt {print \$9}"'; mas; }
#ver ---aca se puede llamar al alias desde la definición de la función -----
#---- comando desde una función ----
#function lito() { clear && read -p "Extensión: " ex && ls -F --color=auto --show-control-chars -l | awk -v a="$ex" "\$9 ~ \"\\\\.\" a \"\$\" {print \$9}"; }
#lito
#function listo() { clear && read -p "Extensión: " ex && ls -F --color=auto --show-control-chars -l | awk -v a="$ex" "\$9 ~ \"\\\\.\" a \"\\\\*\" \"\$\" {print \$9}"; 
#listo
#function exten(){ clear && printf "%s\n" * | awk -F. "NF > 1 {print \$NF}" | sort -u; }
#exten
#function ext(){ clear && alias ex='printf "%s\n" * | awk -F. "NF > 1 {print \$NF}" | sort -u'; }
#ext
#ex -----desde un archivo sh se debe definir y ejecutar la función y luego llamar el alias
#function ext1(){ clear && alias exi='printf "%s\n" * | awk -F. "NF > 1 {print \$NF}" | sort -u'; exi; }
#ext1 ---- se puede llamar el alias desde la función