#!/bin/bash -x

# VARIABLE
bet=0
win=0
loss=0
amount=100

# TO GET GAMBLER COUNT AND AMOUNT
while [ $amount -gt 0 -a $amount -lt 200 ]
do
	((bet++))
	randomCase=$((RANDOM%2))
	if [ $randomCase -eq 1 ]
	then
		((win++))
		amount=$(( amount+1 ))
	else
		((loss++))
		amount=$(( amount-1 ))
	fi
done

# PRINT VALUES
echo "Bet: $bet"
echo "Win: $win"
echo "Loss: $loss"
echo "Amount: $amount"
