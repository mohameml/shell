#!/bin/bash 

#====================================================
#                                                    
#              


read -p "nom :" nom

if  [ -z $nom ] ; then     
    echo "il faut tapez votre nom "

elif [ $nom = "sidi" ] ; then 
    echo "Acces autorises "

elif [ $nom != "admin" ] ; then 
    echo "Acces non autorises "

else 
    echo "vous etes admin"
fi 


# test avce if embriques 

read -p "nom :" nom

if  [ -z $nom ] ; then     
    echo "il faut tapez votre nom "
    exit 1 
elif [ -n $nom ] ; then
    echo "traitement ... "

    if [ $nom = "sidi" ] ; then 
        echo "Acces autorises "
        

    elif [ $nom != "admin" ] ; then 
        echo "Acces non autorises "

    else 
        echo "vous etes admin"
    fi 

fi 
