#!/bin/bash

# Créer un script qui demande à l'utilisateur de saisir une note et qui affiche un message en fonction de cette note :
# • « très bien » si la note est entre 16 et 20 ;
# • « bien » lorsqu'elle est entre 14 et 16 ;
# • « assez bien » si la note est entre 12 et 14 ;
# • « moyen » si la note est entre 10 et 12 ;
# • « insuffisant » si la note est inférieur à 10


# read -p "saisie votre Note svp : " note 
note=$1

if [ $note -ge 16 ] && [ $note -le 20 ] ; then 
    echo "très bien"
elif [ $note -lt 16 ] && [ $note -ge 14 ] ; then 
    echo "bien"
elif [ $note -lt 14 ] && [ $note -ge 12 ] ; then 
    echo "assez bien"
elif [ $note -lt 12 ] && [ $note -ge 10 ] ; then 
    echo "moyen" 
elif [ $note -lt 10 ] && [ $note -ge 0 ] ; then 
    echo "insuffisant "
else 
    echo "note invalide "
fi


