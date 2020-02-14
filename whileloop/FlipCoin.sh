#!/bin/bash -x

# CONSTANT
GOAL=11

# VARIABLES
headCount=1
tailCount=1

# TO CHECK HEAD AND TAIL IN A FLIPCOIN
while (( $headCount <= GOAL || $tailCount<= GOAL  ))
do
	flip=$(($RANDOM%2))
	if (($flip == 1))
		then
		printf "Head"
		printf "\n"
		((headCount++))
		else
		printf "Tail"
		printf "\n"
		((tailCount++))
		fi

# TO CHECK COUNT HEAD AND TAIL IN A FLIPCOIN
	if (( $headCount == GOAL || $tailCount == GOAL ))
	then
	if (( $headCount == GOAL ))
	then
		printf "Winner 11 times:Head. "
		printf "Tail Count: "$tailCount
		printf "\n"
	else
		printf "Winner 11 times:Tail. "
		printf "Head Count: "$headCount
		printf "\n"
		fi
		break
	fi
done
