#!/bin/bash

read -p "Enter number: " num
echo "All prime factors of $num are: "
for (( i=2; i<=num; i++ ))
do
	if [ $(( $num%$i )) -eq 0 ]
	then
		isPrime=0
		for (( j=2; j<=i/2; j++ ))
		do
			if [ $(( $i%$j )) -eq 0 ]
			then
				isPrime=1
				break
			fi
		done
		if [ $isPrime -eq 0 ]
		then
			echo $i
		fi
	fi
done
