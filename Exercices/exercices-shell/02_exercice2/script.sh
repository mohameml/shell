#!/bin/bash

# l'objectif de ce exercice est d'organiser un rep en sous de repes
# on un rep qui s'appelle par exemple rep 
# et dedans on des fichiers des extensions .py , .c , .java  
# donc il faut ecrire un script qui organiser ce rep vers sous rep par extension 


# le variables 
rep="rep/"
cd $rep 



mkdir java/
mkdir C/
mkdir Python/



for fich in *
do 
    if echo $fich  | grep ".py" ; then 
        mv $fich "Python/"
    fi 
    
    if echo $fich  | grep ".java" ; then 
        mv $fich "java/"
    fi 

    if echo $fich  | grep ".c" ; then 
        mv $fich "C/"
    fi 
done 