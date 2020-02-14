#!/bin/bash -x

# CHOICES FOR OPERATIONS
echo "1 Feet in inch "
echo "2 Feet in meter "
echo "3 Inch to Feet "
echo "4 Meter to Feet"

# INPUT VARIABLES
read -p "Enter your choice for convesion: " choice
read -p "Enter a number: " num

# UNIT CONVERSIONS
case "$choice" in
   1 )
      num1=`echo "scale=2; $num*12.5" | bc`
      echo "Feet in inch: " $num1
   ;;
   2 )
      num1=`echo "scale=2; $num * 0.3048" | bc`
      echo "Feet in meter: " $num1
   ;;
   3 )
      num1=`echo "scale=2; $num*0.0083" | bc`
      echo "Inch to Feet: " $num1
   ;;
   4 )
      num1=`echo "scale=2; $num*3.28" | bc`
      echo "Meter to Feet: " $num1
   ;;
   *)
   echo "Pls press between 1-4 "
   ;;
esac
