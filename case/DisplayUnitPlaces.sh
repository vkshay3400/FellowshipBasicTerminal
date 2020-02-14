#!/bin/bash -x

# INPUT VARIABLES
read -p "Enter a number to display a unit places: " number

# DISPLAY UNIT PLACES
case "$number" in
        [0-9])
        echo "Unit Digit" ;;
        [0-9][0-9])
        echo "Tens" ;;
        [0-9][0-9][0-9])
        echo "Hundreds" ;;
        [0-9][0-9][0-9][0-9])
        echo "Thousands" ;;
        [0-9][0-9][0-9][0-9][0-9])
        echo "Ten Thousands" ;;
        [0-9][0-9][0-9][0-9][0-9][0-9])
        echo "Lakhs" ;;
          *)
        echo "More than lakhs" ;;
esac
	
