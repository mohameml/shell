#!/bin/bash 

# un test simple pour case 

read -p "> " nb 


case $nb in 
    1) echo "Un"  ;;
    2) echo "Deux " ;;
    *) echo "$nb" ; 

esac 


# test du case avce les str :

read -p "> " nom 

case $nom in 
    "sidi")
        echo "================="
        echo "Admin"
        ;;
    "mhm" | "kh")
        echo "================="
        echo "Admin"
        ;;
    *)
        echo "================="
        echo "$nom"
        ;;
esac 