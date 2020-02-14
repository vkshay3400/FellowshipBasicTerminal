#!/bin/bash -x

#CONSATANTS
factorial=1

# VARIABLES
read -p "Enter the number for factorial: " number

# FACTORIAL OF A NUMBER
for (( index=1; index<=number; index++ ))
do
	factorial=$((factorial*index))
done
echo "Factorial of $number is "$factorial
