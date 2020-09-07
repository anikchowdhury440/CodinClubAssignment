#!/bin/bash -x

num1=$(( RANDOM%90+10 ))
num2=$(( RANDOM%90+10 ))
num3=$(( RANDOM%90+10 ))
num4=$(( RANDOM%90+10 ))
num5=$(( RANDOM%90+10 ))
echo "Random 2 digit numbers are: $num1, $num2, $num3, $num4, $num5 "
sum=$(( $num1+$num2+$num3+$num4+$num5 ))
avg=`echo $sum | awk '{print $1/5}'`
echo "Sum = $sum"
echo "Average = $avg"
