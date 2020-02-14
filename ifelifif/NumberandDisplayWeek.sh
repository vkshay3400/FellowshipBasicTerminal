#!/bin/bash -x

# INPUTS VARIABLE
read -p "Enter number to print 1 - 7: " r

# PRINT IN WEEKDAYS
if (( $r == 1 ))
then
	echo "Sunday"
elif (( $r == 2 ))
then
	echo "Monday"
elif (( $r == 3 ))
then
	echo "Tuesday"
elif (( $r == 4 ))
then
	echo "Wednesday"
elif (( $r == 5 ))
then
	echo "Thursday"
elif (( $r == 6 ))
then
	echo "Friday"
elif (( $r == 7 ))
then
	echo "Saturday"
else
	echo "Pls press between 1-9 for days"
fi

