#!/bin/bash

# on va développer une petit jeu 
# on demande à l'utilisateur de saisie un entier et on lui guide jusqu'à trouver le nb secret 

nb_secret=20

echo "Entre nb svp "
read -p "> " nb 

if [ $nb -lt $nb_secret ] ; then 
    echo "le nombre secret est supérieur à $nb" 
elif [ $nb -gt $nb_secret ] ; then 
    echo "le nombre secret est inférieur à $nb" 
else 
    echo -e "\033[32mBravo\033[0m" 
fi


