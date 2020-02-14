#!/bin/bash -x

# READ THE INPUT VARIABLES
echo "Enter Two numbers : "
read start
read end

# LOOP FOR RANGE
for (( index1=start; index1<=end; index1++ ))
do
	count=0
	for (( index2=1; index2<=index1; index2++ ))
	do
       		if [ $((index1 % index2)) -eq 0 ]
	        then
		count=$((count +1))
		fi
done
	if [ $count -eq 2 ]
	then
	echo $index1
	fi
done
