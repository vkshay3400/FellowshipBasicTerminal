#!/bin/bash -x

# CHOICE FOR TEMPERATURE CONVERSION
echo "Enter 1 Celsius to Fahrenite or "
echo "Enter 2 Fahrenite to Celsius "

# INPUT VARIABLE FOR TEMPERATURE CONVERSION
read -p "Enter your choice for conversion: " choice
read -p "Enter nuber: " degree

# USING FUNCTION FOR DEGREE CONVERSION
function Degree(){
case $choice in
	"1")
	if(( $degree>0 && degree<100 ))
	then
	degreeFahrenite=`echo "scale =2; ($degree*9/5)+32" | bc`
		echo $degreeFahrenite
	else
		echo "Not between 0-100 "
	fi
	 ;;

	"2")
	if(( $degree>32 && $degree<212))
	then
	degreeCelsius=`echo "scale =2; ($degree-32)*5/9" | bc`
		echo $degreeCelsius
	else
		echo "Not between 32-212 "
	fi
	;;

	*)
	echo "Pls press 1/2"
	;;
esac
}

# PRINT OUTPUT
result=$( Degree $choice $degree )
echo $result



