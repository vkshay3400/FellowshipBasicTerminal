#!/bin/bash -x

# INPUT VARIABLES
read -p "Enter a number: " number

# CALCULATE HARMONIC NUMBER
sum=0
for (( index=1; index<=number; index++ ))
do
	echo $sum "+" 1/$index
	sum=`echo "scale=2; $sum+1/$index" | bc`
done
echo $sum
