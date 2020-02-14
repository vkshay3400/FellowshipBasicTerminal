#!/bin/bash -x

# ASK USER TO THINK FOR MAGIC NUMBER
echo "Please think a number for MagicNumber between 1-100"

# INITIALIZING VARIABLE
lowValue=1
highValue=100
mean=0

# FIND MAGIC NUMBER
while (( $lowValue != $highValue ))
do
	mean=$(( lowValue+(highValue-lowValue)/2 ))
	read -p "Enter 1 if less $mean  or 2 if greater than $mean " key

	if (( $mean == $lowValue ))
	then
		if (( $key == 1 ))
		then
			echo $mean
			break
		else
			echo $(($mean+1))
			break
		fi
	fi

	if [ $key -eq 1 ]
	then
		highValue=$mean
	else
		lowValue=$(($mean+1))
	fi
done
echo "$mean is magic number "
