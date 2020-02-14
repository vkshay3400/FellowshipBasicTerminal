#!/bin/bash -x

# READ FROM USER
read -p "Enter a year to check leap year: " year

# TO CHECK LEAP YEAR OR NOT
if [ $year -gt 999 -a $year -lt 10000 ]
then
if [ $(($year % 4)) -eq 0 -a $(($year % 100)) -ne 0 -o $(($year % 400)) -eq 0 ]
then
   echo "$year is Leap Year"
else
   echo "$year is not a Leap Year"
fi
else
echo "Enter in a four digit number"
fi

