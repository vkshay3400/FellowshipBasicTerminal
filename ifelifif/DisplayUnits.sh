#!/bin/bash -x

# INPUT VARIABLE
read -p "Enter number 1/ 10/ 100/ 100/ 1000/: " number

# PRINT UNITS 10s  100s 1000s... IN WORDS 
if [ $number -gt 0 -a $number -lt 10 ]
then 
	echo "Units Digit "
elif [ $number -gt 9 -a $number -lt 100 ]
then 
        echo "Tens Unit"	
elif [ $number -gt 99 -a $number -lt 1000 ]
then 
        echo "Hundreds Unit"
elif [ $number -gt 999 -a $number -lt 10000 ]
then 
        echo "Thousands Unit"
elif [ $number -gt 9999 -a $number -lt 100000 ]
then 
        echo "Ten Thousands"
elif [ $number -gt 99999 -a $number -lt 1000000 ]
then 
        echo "Lakhs"
else
	echo "More than lakhs"
fi
