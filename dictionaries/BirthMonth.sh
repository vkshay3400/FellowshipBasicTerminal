#!/bin/bash -x

# CONSTANTS
MONTH=12
LIMIT=50

# VARIABLE
count=1

# DICTIONARIES
declare -A BirthMonth

# BIRTH MONTH
while [[ $count -le $LIMIT ]]
do
	number=$((1+RANDOM% $MONTH))
	BirthMonth[$number]=$((${BirthMonth[$number]}+1))
	((count++))
done

# TO PRINT
for (( index=1; index<=$MONTH; index++ ))
do
	echo "Individuals having birthdays in the month $index= ${BirthMonth[$index]}"
done
