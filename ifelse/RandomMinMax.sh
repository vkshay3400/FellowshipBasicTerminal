#!/bin/bash -x

#CONSTANTS
LIMITS=5

#VARIABLE
minValue=999
maxValue=100

#FIND FIVE NUMBERS IN THREE DIGITS
for (( index=0; index<=$LIMITS; index++ ))
do
   random=$(( 100 + RANDOM % 900 ))
   echo $random

#TO GET MAX MIN
if [ $random -gt $maxValue ]
then
   maxValue=$random
fi

if [ $random -lt $minValue ]
then
   minValue=$random
fi
done

#TO DISPLAY MAX MIN
echo "Maximum is: " $maxValue
echo "Minimum is: " $minValue
