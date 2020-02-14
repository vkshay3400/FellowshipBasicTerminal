#!/bin/bash -x

# GET INPUTS
number1=$((RANDOM%100))
number2=$((RANDOM%100))
number3=$((RANDOM%100))
number4=$((RANDOM%100))
number5=$((RANDOM%100))

# ADD
echo $number1 $number2 $number3 $number4 $number5
sum=$(($number1+$number2+$number3+$number4+$number5))
echo "Adding of five number: " $sum

# AVERAGE
average=$(($sum/5))
echo "Avg of five number: " $average
