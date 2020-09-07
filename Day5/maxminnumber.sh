#!/bin/bash -x

num1=$(( RANDOM%900+100 ))
num2=$(( RANDOM%900+100 ))
num3=$(( RANDOM%900+100 ))
num4=$(( RANDOM%900+100 ))
num5=$(( RANDOM%900+100 ))
echo "The 3 digits value are: $num1, $num2, $num3, $num4, $num5"

if [ $num1 -gt $num2 ]
then
	max=$num1
	min=$num2
else
	max=$num2
	min=$num1
fi

if [ $max -lt $num3 ]
then
	max=$num3
fi
if [ $min -gt $num3 ]
then
	min=$num3
fi

if [ $max -lt $num4 ]
then
        max=$num4
fi
if [ $min -gt $num4 ]
then
        min=$num4
fi

if [ $max -lt $num5 ]
then
        max=$num5
fi
if [ $min -gt $num5 ]
then
        min=$num5
fi

echo "Maximum Number: $max"
echo "Minimum Number: $min"
