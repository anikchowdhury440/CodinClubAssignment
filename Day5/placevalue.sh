#!/bin/bash -x

read -p "Enter Number like 1, 10, 100, etc.: " number
if [ $number -eq 1 ]
then
	echo "Unit"
elif [ $number -eq 10 ]
then
	echo "Ten"
elif [ $number -eq 100 ]
then
	echo "Hundred"
elif [ $number -eq 1000 ]
then
	echo "Thousand"
elif [ $number -eq 10000 ]
then
	echo "Ten Thousand"
elif [ $number -eq 100000 ]
then
	echo "Lakh"
elif [ $number -eq 1000000 ]
then
	echo "Ten Lakh"
elif [ $number -eq 10000000 ]
then
	echo "Crore"
elif [ $number -eq 100000000 ]
then
	echo "Ten Crore"
elif [ $number -eq 1000000000 ]
then
	echo "Hundred Crore"
elif [ $number -eq 10000000000 ]
then
	echo "Thousand Crore"
else
	echo "You did not enter number like 1, 10, 100, etc."
fi
