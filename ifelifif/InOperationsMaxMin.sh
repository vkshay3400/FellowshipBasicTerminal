#!/bin/bash -x

# INPUTS VARIABLES
read -p "Enter number1: " a
read -p "Enter number2: " b
read -p "Enter number3: " c
echo $a $b $c

# ARITHMETIC OPERATIONS
operation1=$(( $a + $b * $c ))
operation2=$(( $a % $b + $c ))
operation3=$(( $c + $a / $b ))
operation4=$(( $a * $b + $c ))
echo $operation1 $operation2 $operation3 $operation4

# TO FIND MAXIMUM
echo "Maximum: "
if (( $operation1 > $operation2 && $operation1 > $operation3 && $operation1 > $operation4 ))
then
	echo $operation1
elif (( $operation2 > $operation1 && $operation2 > $operation3 && $operation2 > $operation4 ))
then
	echo $operation2
elif (( $operation3 > $operation1 && $operation3 > $operation2 && $operation3 > $operation4 ))
then
	echo $operation3
else
	echo $operation4
fi

#TO FIND MINIMUM
echo "Minimum: "
if (( $operation1 < $operation2 && $operation1 < $operation3 && $operation1 < $operation4 ))
then
	echo $operation1
elif (( $operation2 < $operation1 && $operation2 < $operation3 && $operation2 < $operation4 ))
then
	echo $operation2
elif (( $operation3 < $operation1 && $operation3 < $operation2 && $operation3 < $operation4 ))
then
	echo $operation3
else
	echo $operation4
fi
