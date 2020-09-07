#!/bin/bash

b=0
for (( i=0;i<=100;i++ ))
do
	if [ $i -ge 10 ]
	then
		num=$i
		a=0
		count=0
		flag=0
        	while [[ $num -gt 0 ]]
        	do
                	rem=$(( $num%10 ))
			arr[$a]=$rem
			((a++))
			((count++))
                	num=$(( $num/10 ))
        	done
		for (( j=0;j<count;j++ ))
                do
                        for (( k=j+1;k<count;k++ ))
                        do
                                if [ ${arr[$j]} -ne ${arr[$k]} ]
                                then
                                        flag=1
                                fi
                        done
                done

		if [ $flag -eq 0 ]
		then
			array[$b]=$i
			((b++))
		fi
	fi
done

echo "The repeated digit number are: ${array[@]}"
