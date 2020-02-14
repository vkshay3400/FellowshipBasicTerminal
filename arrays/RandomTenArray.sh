#!/bin/bash -x

# VARIABLES
maximum=0
secondMaximum=0
minimum=$((arr[0]))
secondMinimum=$((arr[0]))

# TO GET RANDOM ARRAY
for(( index=0;index<10;index++ ))
do
	arr[index]=$((100+RANDOM%900))
done
	echo ${arr[@]}

# TO GET MAXIMUM
	for (( index=0; index<=10; index++ ))
	do
		if [ $((arr[index])) -gt $maximum ]
		then
			secondMaximum=$maximum
			maximum=$((arr[index]))
		elif [ $((arr[index])) -gt $secondMaximum -a $((arr[index])) -lt $maximum ]
		then
			secondMaximum=$((arr[index]))
	fi
	done
echo "Maximum " $maximum
echo "Second max $secondMaximum "

# TO GET MINIMUM
	for (( index=0; index<=10; index++ ))
	do
		if [ $minimum -gt  $((arr[index])) ]
		then
			secondMinimum=$minimum
			minimum=$((arr[index]))
		elif [ $((arr[index])) -lt $secondMinimum ]
		then
			secondMinimum=$((arr[index]))
		fi
	done
echo "Minimum " $minimum
echo "Second Minimum $secondMinimum "
