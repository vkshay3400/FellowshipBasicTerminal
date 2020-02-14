#!/bin/bash -x

# VARIABLES
length=${#array[@]}
temporary=0

# GET INPUT USING RANDOM
for (( index1=0;index1<=10;index1++ ))
do
	array[index1]=$((100+RANDOM%900))
done
echo ${arr[@]}

# SORTING
for (( index1=0; index1<$length; index1++))
do
	for (( index2=index1+1; index2<$length; index2++ ))
	do
		if (( $((array[index2])) > $((array[index1])) ))
		then
			temporary=$((array[index2]))
			array[index2]=$((array[index1]))
			array[index1]=$temporary
	fi

done
done

# PRINT OUTPUTS
echo ${array[@]}
echo ${array[1]}
echo ${array[9]}
