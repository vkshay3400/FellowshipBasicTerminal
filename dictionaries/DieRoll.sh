#!/bin/bash -x

# DEFINE DICTIONARY
declare -A dice

#INITIALIZATION VARIABLES
maxValue=${dice[1]}
minValue=${dice[1]}
maxIndex=0
minIndex=0

# STORING RESULT COUNT OF DICE
while [[ ${dice[$random]} -ne 10 ]]
do
	random=$((1+RANDOM%6))
	dice[$random]=$((${dice[$random]}+1))
done

# TO FIND NUMBER THAT REACHED MAXIMUM TIMES AND MINIMUM TIMES
for (( index=2; index<=6; index++ ))
do
	if [[ $maxValue -lt ${dice[$index]} ]]
	then
		maxValue=${dice[$index]}
		maxIndex=$index

	elif [[ $minValue -gt ${dice[$index]} ]]
	then
		minValue=${dice[$index]}
		minIndex=$index
	fi
done

# DISPLAYING NUMBER AND ITS COUNT WHICH REACHED MAXIMUM AND MINIMUM TIME
echo "Values : ${dice[@]} "
echo "MaxValue: $maxValue and at Maxindex: $maxIndex "
echo "MinValue: $minValue and at Minindex: $minIndex "
