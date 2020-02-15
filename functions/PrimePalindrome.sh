#!/bin/bash -x

# INPUT VARIABLE
read -p "Enter a number for Prime and Plaindrome:" number

# FUNCTION FOR PRIME
function isPrime(){
	local number=$1
	flag=1
	for (( index=2;index<=$number/2; index++ ))
	do
		if [ $(($number%index)) -eq 0 ]
		then
			echo "Not Prime"
		else 
			echo "Prime"
		break
		fi
	done
}

# FUNCTION FOR PALINDROME
function isPalindrome(){
	local number=$1
	sum=0
	temp=$number
	reminder=0
	while (( $number!=0 ))
	do
		remainder=$(( $number%10 ))
		sum=$(( ($sum*10)+$remainder ))
		number=$(( $number/10 ))
	done
	if [ $sum -eq $temp ]
	then
		echo "Palindrome"
	else
		echo "Not a Palindrome"
	fi
}

# PRINT RESULT
result=$(isPalindrome $number)
echo $result
result=$(isPrime $number)
echo $result

