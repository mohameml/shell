#!/bin/bash

a=0
b=10
# while [ $a -lt $b ] ; do 
#     echo $a 
#     ((a++))
# done 

while (( a < b)) ; do 
    echo $a 
    ((a++))
done 

if (( b== 10 )) ; then 
    echo "b==10"
fi


let i=0 
let j=10

if ((i < j)) ; then
    echo " i < j "
    ((i++))
fi 

echo $i