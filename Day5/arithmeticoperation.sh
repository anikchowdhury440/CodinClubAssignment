#!/bin/bash -x

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
operation1=$(( $a+$b*$c ))
operation2=$(( $c+$a/$b ))
operation3=$(( $a%$b+$c ))
operation4=$(( $a*$b+$c ))
echo "arithmetic operation 1 (a+b*c) : " $operation1
echo "arithmetic operation 2 (c+a/b) : " $operation2
echo "arithmetic operation 3 (a%b+c) : " $operation3
echo "arithmetic operation 4 (a*b+c) : " $operation3

if [[ ( $operation1 -ge $operation2 && $operation1 -ge $operation3 && $operation1 -ge $operation4  ) ]]
then
	max=$operation1
	echo "Arithmetic Operation 1 showing max value"
elif [[ ( $operation2 -ge $operation1 && $operation2 -ge $operation3 && $operation2 -ge $operation4 ) ]]
then
	max=$operation2
	echo "Arithmetic Operation 2 showing max value"
elif [[ ( $operation3 -ge $operation1 && $operation3 -ge $operation2 && $operation3 -ge $operation4 ) ]]
then
	max=$operation3
	echo "Arithmetic Operation 3 showing max value"
else
	max=$operation4
	echo "Arithmetic Operation 4 showing max value"
fi

if [[ ( $operation1 -le $operation2 && $operation1 -le $operation3 && $operation1 -le $operation4 ) ]]
then
        min=$operation1
	echo "Arithmetic Operation 1 showing min value"
elif [[ ( $operation2 -le $operation1 && $operation2 -le $operation3 && $operation2 -le $operation4 ) ]]
then
        min=$operation2
	echo "Arithmetic Operation 2 showing min value"
elif [[ ( $operation3 -le $operation1  && $operation3 -le $operation2 && $operation3 -le $operation4 ) ]]
then
        min=$operation3
	echo "Arithmetic Operation 3 showing min value"
else
        min=$operation4
	echo "Arithmetic Operation 4 showing max value"
fi

echo "Maximum Value: $max"
echo "Minimum value: $min"
