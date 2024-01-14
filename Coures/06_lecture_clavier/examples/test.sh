#!/bin/bash

# l'option -p 
echo "============ option -p ============="
read -p "Quele est votre nom svp ? " nom

echo "Bienvenue $nom "


# l'option -n 
echo "============ option -p ============="

read -n 3 nb

echo -e  "\njuste 3 caractéres $nb "

# l'option -t 
echo "============ option -t ============="

read -t 5 option_t
echo -e "\njuste 5 seconde $option_t"

# l'option -a 
echo "============ option -a ============="

IFS=',' read -a tab 

for element in "${tab[@]}"
do
    echo "Élément : $element"
done

# l'option -s 
echo "============ option -s ============="

read -s -p "saise ton mdp " mdp 

echo -e  "\ndonc ton mdp c'est $mdp "


