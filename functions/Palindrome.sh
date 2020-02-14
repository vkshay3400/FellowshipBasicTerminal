#!/bin/bash -x

# VARIABLE
sum=0

# READ FROM USER
read -p "Enter number to check Palindrome: " number

# FUNCTION FOR P
function isPalindrome(){
	temp=$number
	local n=$1
	while [ $n != 0 ]
	do
		remainder=$(($n%10))
		sum=$(($sum*10 +$remainder))
		n=$(($n/10))
	done

	if [ $sum -eq $temp ]
	then
	echo "Palindrome"
	else
	echo "Not a Palindrome"
	fi
}

# OUTPUT/TO CALL FUNCTION
result=$(isPalindrome $number)
echo $result

