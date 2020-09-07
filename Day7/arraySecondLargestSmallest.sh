#!/bin/bash

for (( i=0;i<10;i++ ))
do
	arr[$i]=$(( RANDOM%900+100 ))
done

echo "The 10 Random 3 digit numbers are: ${arr[@]}"



largest1=0
largest2=0
for (( i=0;i<10;i++ ))
do
	if [ $largest1 -lt ${arr[$i]} ]
	then
		largest2=$largest1
		largest1=${arr[$i]}
	fi
	if [[ ${arr[$i]} -gt $largest2 && $largest1 -ne ${arr[$i]} ]]
	then
		largest2=${arr[$i]}
	fi
done
echo "2nd Largest number: $largest2"

smallest1=10000
smallest2=10000
for (( i=0;i<10;i++ ))
do
        if [ $smallest1 -gt ${arr[$i]} ]
        then
                smallest2=$smallest1
                smallest1=${arr[$i]}
        fi
	if [ ${arr[$i]} -lt $smallest2 ] && [ $smallest1 -ne ${arr[$i]} ]
        then
                smallest2=${arr[$i]}
        fi
done
echo "2nd smallest number: $smallest2"

