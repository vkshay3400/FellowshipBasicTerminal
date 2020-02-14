#!/bin/bash -x

# VARIABLES
index2=0
read -p "Enter a number to get prime factorisation: " number

# PRIME FACTOR
function getPrimeFactor(){
for (( index1=2; index1<=$number; index1++ ))
do
	while (( $number%$index1==0 ))
	do
		number2[index2]=$index1
		number=$(( $number/$index1 ))
		((index2++))
	done
done
echo ${number2[@]}
}

# CALL FUNCTION
primeFactor="$( getPrimeFactor )"

# PRINT OUTPUT
echo "$primeFactor"
