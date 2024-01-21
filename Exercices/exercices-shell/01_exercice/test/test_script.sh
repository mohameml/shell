#!/bin/bash 

# fonction de test :

test_function() {

if [ "$1" = "$2" ] ; then 
    echo -e "Test : $vert PASSED $init"
    ((nb++))
else 
    echo -e "Test : $red FAILD $init"
fi 

}

# un script pour testing 
nb=0 

red="\033[31m"
vert="\033[32m"
init="\033[0m"

# // attendu : très bien
nb1=18
nb2=20
nb3=16

# // attendu : bien 
nb4=15
nb5=14

# // attendu : assez bien 
nb6=13
nb7=12


# chnager le repertoire 
cd ../

# Test 1 
echo "=========== Test1 ==========="
str1=$(./script.sh $nb1)
excepted_str1="très bien"
test_function "$str1" "$excepted_str1"
 

# Test 2 
echo "=========== Test2 ==========="
str2=$(./script.sh $nb2)
excepted_str2="très bien"
test_function "$str2" "$excepted_str2"

# Test 3 
echo "=========== Test3 ==========="
str3=$(./script.sh $nb3)
excepted_str3="très bien"
test_function "$str3" "$excepted_str3"


# Test 4 
echo "=========== Test4 ==========="
str4=$(./script.sh $nb4)
excepted_str4="bien"
test_function "$str4" "$excepted_str4"


# Test 5 
echo "=========== Test5 ==========="
str5=$(./script.sh $nb5)
excepted_str5="bien"
test_function "$str5" "$excepted_str5"


# Test 6
echo "=========== Test6 ==========="
str6=$(./script.sh $nb6)
excepted_str6="assez bien"
test_function "$str6" "$excepted_str6"

# Test 7
echo "=========== Test7 ==========="
str7=$(./script.sh $nb7)
excepted_str7="assez bien"
test_function "$str7" "$excepted_str7"



echo "nombre de Test passed :$nb "

