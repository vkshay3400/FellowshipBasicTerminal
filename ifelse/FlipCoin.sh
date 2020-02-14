#!/bin/bash -x

# RANDOM VARIABLE
random=$((RANDOM%2))

# TO GET RANDOM FLIP COIN
if [ $random -eq 1 ]
then
   echo "Head"
else
   echo "Tail"
fi

