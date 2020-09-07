#!/bin/bash

read -p "Enter Day: " day
read -p "Enter Month: " month
if [[ ( $month -eq 3 && $day -ge 20 && $day -le 31 ) ]] || [[ ( $month -eq 4 && $day -ge 1 && $day -le 30 ) ]] || [[ ( $month -eq 5 && $day -ge 1 && $day -le 31 ) ]] || [[ ( $month -eq 6 && $day -ge 1 && $day -le 20 ) ]]
then
	echo "True"
else
	echo "False"
fi

