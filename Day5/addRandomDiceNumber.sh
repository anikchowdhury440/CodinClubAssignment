#!/bin/bash -x

random_dice_1=$(( RANDOM%6+1 ))
random_dice_2=$(( RANDOM%6+1 ))
echo "Dice 1 = $random_dice_1"
echo "Dice 2 = $random_dice_2"
dice_sum=$(( $random_dice_1+$random_dice_2 ))
echo "Result = $dice_sum"
