#!/bin/bash -x

# INITIALIZE  POWER
counter=1

# PRINT TABLE OF POWER OF 2^N TILL 256
while [[ $((2**counter)) -le 256 && $counter -le n ]]
do
	echo $((2**counter))
	counter++
done
