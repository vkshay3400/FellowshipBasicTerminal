#!/bin/bash -x

# INPUT VARIABLE
read -p "Enter nth number: " number

# TABLE OF POWER OF 2
power=1
for (( index=1; index<=number; index++ ))
do
	power=$((power*2))
	echo $power
done
