#!/bin/bash -x

head_count=0
tail_count=0
while [[ ( $head_count -lt 11 && $tail_count -lt 11 ) ]]
do
	coin_flip=$(( RANDOM%2 ))
	if [ $coin_flip -eq 0 ]
	then
		echo "Head"
		(( head_count++ ))
	else
		echo "Tail"
		(( tail_count++ ))
	fi
done

