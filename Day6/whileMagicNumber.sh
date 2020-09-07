#!/bin/bash

start=0
end=100
echo "Think any number from 1 to 100: "
while [ $start -le $end ]
do
	middle=$(( $(( $start+$end )) / 2 ))
	echo "1. Is your number is $middle"
	echo "2. Your number is less than my number"
	echo "3. Your number is greater than my number"
	read -p "Enter your choice: " choice
	case $choice in
		"1")
			echo "Your number is $middle"
			break
			;;
		"2")
			end=$middle
			;;
		"3")
			start=$middle
			;;
		*)
			echo "You did not enter valid choice"
			;;
	esac
done

function sumOfDigits() {
	sum=0
	temp=$1
	while [ $temp -ne 0 ]
	do
		rem=$(( $temp%10 ))
		sum=$(( $sum+$rem ))
		temp=$(( $temp/10 ))
	done
	echo $sum
}

digit_sum="$( sumOfDigits $middle )"

while [ $digit_sum -gt 10 ]
do
	digit_sum="$( sumOfDigits $digit_sum )"
done

if [ $digit_sum -eq 1 ]
then
	echo "Your number is Magic Number"
else
	echo "Your number is not a Magic Number"
fi
