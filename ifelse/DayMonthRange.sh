#!/bin/bash -x

# INPUTS FROM USER
read -p "Enter day: " day
read -p "Enter month: " month

# TO CHECK WHETHER IN MARCH20-JUNE20
if (( ($day >= 20) && ($day <= 31) && ($month == 3) ||
      ($day >= 1) && ($day <= 30) && ($month == 4) ||
      ($day >= 1) && ($day <= 31) && ($month == 5) ||
      ($day >= 1) && ($day <= 20) && ($month == 6) ))
then
   echo "True"
else
   echo "False"
fi

