#!/bin/bash -x

# INPUT VARIABLES
read -p "Enter a number(0-6) to display a day: " number

# DISPLAY WEEKDAY
case "$number" in
	"0")
	echo "Sunday" ;;
	"1")
	echo "Monday" ;;
	"2")
	echo "Tuesday" ;;
	"3")
	echo "Wednesday" ;;
	"4")
	echo "Thursday" ;;
	"5")
	echo "Friday" ;;
	"6")
	echo "Saturday" ;;
	*)
	echo "Please enter again between 0-6" ;;
esac

