#!/bin/bash

amount=100
no_of_bets=0
no_of_wins=0
while [[ ( $amount -gt 0 && $amount -lt 200 ) ]]
do
	bet=$(( RANDOM%2 ))
	(( no_of_bets++ ))
	if [ $bet -eq 1 ]
	then
		amount=$(( $amount+1 ))
		(( no_of_wins++ ))
	else
		amount=$(( $amount-1 ))
	fi
done
echo "Number of bets made = $no_of_bets"
echo "Number of times won = $no_of_wins"
echo "Amount Won = $amount"
