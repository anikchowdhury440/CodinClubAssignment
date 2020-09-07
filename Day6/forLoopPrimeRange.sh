#!/bin/bash

read -p "Enter start value: " start
read -p "Enter end value: " end
echo "Prime Numbers between $start and $end are"
for (( i=start; i<=end; i++ ))
do
	flag=0
	for (( j=2; j<=i/2; j++ ))
	do
        	if [ $(( $i%$j )) -eq 0 ]
        	then
                	flag=1
                	break
        	fi
	done
	if [ $flag -eq 0 ]
	then
		echo "$i"
	fi
done
