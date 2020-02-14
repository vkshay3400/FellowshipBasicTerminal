#!/bin/bash -x

# INPUT VARIABLES
read -p "Enter how many numbers you want: " number
for ((index1=0;index1<number;index1++))
	do
		read -p "Enter number $index1 :" array[index1]
	done
	echo ${array[@]}

# LENGTH OF ARRAY
length=${#array[@]}

# SUM OF THREE TO ZERO
for(( index1=0;index1<$length;index1++))
do
	for(( index2=index1+1;index2<$length;index2++))
	do
		for (( index3=index2+1;index3<$length;index3++))
		do
			if [ $((${array[index1]}+${array[index2]}+${array[index3]})) -eq 0 ]
			then
				echo ${array[index1]} ${array[index2]} ${array[index3]}
			fi
		done
	done
done
