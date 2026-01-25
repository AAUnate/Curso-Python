clear
i=1
a=1
for i in {1..5}; do
    read -p "Nombre de amigos: " amigos
    echo ""$a". "$amigos""
    ((a ++))
done 
echo "----------------Final de Bucle.sh--------------"
echo #