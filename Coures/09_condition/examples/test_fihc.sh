#!/bin/bash

# test simple sur les fichiers 


if [ -e "test.txt" ] ; then 
    echo "oui il existe "
fi 


if [ -s "test.txt" ] ; then 
    echo "est de taille != à zero "
else 
    echo "est de taille ==  0"
fi 