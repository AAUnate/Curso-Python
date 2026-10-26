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