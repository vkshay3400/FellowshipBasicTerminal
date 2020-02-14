#!/bin/bash -x

# INPUT VARIABLE
read -p "Enter a number: " number
flag=0

# TO CHECK NUMBER IS PRIME OR NOT
for (( index=2; index<=$number/2; index++ ))
do
	if [ $(( $number % index)) -eq 0 ]
	then
		flag=1
		break;
	fi
done
if [ $flag -eq 0 ]
then
echo $number " is Prime"
else
	echo $number " is not a Prime"
fi
