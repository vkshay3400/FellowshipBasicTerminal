#!/bin/bash -x

# INPUT VARIABLES
read -p "Enter a number to find factorisation : " number

# INITIALISATION VARIABLE
factorial=1

# TO FIND FACTORISATION OF NUMBER
for (( index=1; index<=$number; index++ ))
do
	factorial=$((factorial *i))
done

# PRINT OUTPUT
echo "Factorial of $num is "$factorial
