#!/bin/bash -x

read -p "Enter no of elements: " n

for (( i=0;i<n;i++ ))
do
	read -p "Enter number: " arr[$i]
done

echo "Elements are: ${arr[@]}"

found=0
for (( i=0;i<n-2;i++ ))
do
	for (( j=i+1;j<n-1;j++ ))
	do
		for (( k=j+1;k<n;k++ ))
		do
			sum=$(( ${arr[$i]}+${arr[$j]}+${arr[$k]} ))
			if [[ $sum -eq 0 ]]
			then
				echo "${arr[$i]} + ${arr[$j]} + ${arr[$k]} = $sum"
				found=1
			fi
		done
	done
done

if [ $found -eq 0 ]
then
	echo "Addition of integer result ZERO not found"
fi
