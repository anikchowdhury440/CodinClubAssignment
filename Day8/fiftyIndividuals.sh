#!/bin/bash -x

declare -A birthDictionary

for (( i=1;i<=50;i++ ))
do
	month=$(( RANDOM%12+1 ))
	year=$(( RANDOM%2+92 ))
	person=$i
	value="$month-$year- [$person th person] "
	birthDictionary[$month]="${birthDictionary[$month]} $value"
done

for (( i=1;i<=12;i++ ))
do
	echo ${birthDictionary[$i]}
done
