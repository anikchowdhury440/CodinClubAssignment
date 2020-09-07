#!/bin/bash

declare -A dicerollcount

flag=0
count_number1=0
count_number2=0
count_number3=0
count_number4=0
count_number5=0
count_number6=0
while [ $flag -eq 0 ]
do
	roll_dice=$(( RANDOM%6+1 ))
	case $roll_dice in
		"1")
			(( count_number1++ ))
			if [ $count_number1 -eq 10 ]
			then
				flag=1
			fi
			;;
		"2")
			(( count_number2++ ))
			if [ $count_number2 -eq 10 ]
                        then
                                flag=1
                        fi
                        ;;
		"3")
			(( count_number3++ ))
			if [ $count_number3 -eq 10 ]
                        then
                                flag=1
                        fi
                        ;;
		"4")
			(( count_number4++ ))
			if [ $count_number4 -eq 10 ]
                        then
                                flag=1
                        fi
                        ;;
		"5")
			(( count_number5++ ))
			if [ $count_number5 -eq 10 ]
                        then
                                flag=1
                        fi
                        ;;
		"6")
			(( count_number6++ ))
			if [ $count_number6 -eq 10 ]
                        then
                                flag=1
                        fi
                        ;;
		*)
			echo "Default"
			;;

	esac
done

dicerollcount[1]=$count_number1
dicerollcount[2]=$count_number2
dicerollcount[3]=$count_number3
dicerollcount[4]=$count_number4
dicerollcount[5]=$count_number5
dicerollcount[6]=$count_number6

echo "Dice value: " ${!dicerollcount[@]}
echo "Dice Number count: " ${dicerollcount[@]}

max=0
min=11
count_index=0
for count in ${dicerollcount[@]}
do
	(( count_index++ ))
	if [ $count -gt $max ]
	then
		max=$count
		max_key=$count_index
	fi
	if [ $count -eq $min ]
	then
		min_key[$i]=$count_index
		((i++))
	fi
	if [ $count -lt $min ]
        then
                i=0
                min=$count
                unset min_key
                min_key[$i]=$count_index
		((i++))
        fi
done

echo "Number $max_key in Dice reached maximum times i.e $max times"
echo "Number ${min_key[@]} in Dice reached minimum times i.e $min times"




