#!/bin/bash 

cmd=`ls -l`
cmd2=$(ls -l)

str="sidi"

a=$(echo "1.2 + 1" | bc)

echo  $a 



# resultat=$(echo "e(1)" | bc -l)
# echo "Exponentielle de 1 : $resultat"

# # le type d'une var 
# var="sidi"

# echo "le type du var est $(declare -p var)"

# # Déclaration d'une variable sans spécification de type
# variable="Hello"

# # Affichage du type de la variable
# echo "Le type de la variable est : $(declare -p variable)"

# # Modification de la variable avec un nombre
# variable=42

# # Affichage du type de la variable après la modification
# echo "Le type de la variable est : $(declare -p variable)"

# Déclaration d'une variable
ma_variable="Hello, World!"

# Utilisation de declare pour afficher le type de la variable
declare -p ma_variable

data=other
other="OK"

echo ${!data}

a=1
b=2
let "res = a + b"

echo $res

a=1
((a++))
b=3
((a+=b))
c=$((2**2))

echo "val de a est $a"
echo "val de c est $c"
