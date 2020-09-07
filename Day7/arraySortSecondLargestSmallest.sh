#!/bin/bash

for (( i=0;i<10;i++ ))
do
        arr[$i]=$(( RANDOM%900+100 ))
done

echo "The 10 Random 3 digit numbers are: ${arr[@]}"

for (( i=0;i<10;i++ ))
do
	for (( j=i+1;j<10;j++ ))
	do
		if [ ${arr[i]} -lt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[$i]=${arr[j]};
			arr[$j]=$temp
		fi
	done
done

echo "Sorted array: ${arr[@]}"

echo "2nd largest number: ${arr[1]}"
echo "2nd smallest number: ${arr[8]}"
