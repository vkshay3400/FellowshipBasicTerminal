#!/bin/bash -x

# GET INPUTS
number1=$((RANDOM%10))
number2=$((RANDOM%10))
number3=$(($number1+$number2))

# PRINT OUTPUT
echo "Adding of two number: " $number3
