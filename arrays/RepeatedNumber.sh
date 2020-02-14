#!/bin/bash -x

# VARIABLE
count=0

# TWICE NUMBER
for (( index=0; index<100; index++ ))
do
	if [ $(($index%10)) -eq $(($index/10)) -a $(($index/10)) -ne 0 ]
	then
		repeatedNumber[((count++))]=$index
	fi
done
# PRINT OUTPUT
echo ${repeatedNumber[@]}
