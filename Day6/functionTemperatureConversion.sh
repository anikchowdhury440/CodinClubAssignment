#!/bin/bash

function celciusToFarenheit() {
	celcius_value=$1
	farenheit=`echo $celcius_value | awk '{print ($1*9/5)+32}'`
	echo $farenheit
}

function farenheitToCelcius() {
	farenheit_value=$1
	celcius=`echo $farenheit_value | awk '{print ($1-32)*5/9}'`
	echo $celcius
}

echo "Temperature Conversion"
echo "Celcius to Farenheit Conversion (Press 1)"
echo "Farenheit to Celcius Conversion (Press 2)"
choice_check=0
while [ $choice_check -eq 0 ]
do
	read -p "Enter the type of Temperature Conversion do you want: " choice
	case $choice in
		"1")
			celcius_check=0
			while [ $celcius_check -eq 0 ]
			do
				read -p "Enter Celcius Temperature (between 0 and 100): " celcius
                        	if [[ ( $celcius -ge 0 && $celcius -le 100 ) ]]
                        	then
                                	farenheit_result="$( celciusToFarenheit $celcius )"
                                	echo "$celcius celcius = $farenheit_result farenheit"
					celcius_check=1
                        	else
                                	echo "You didn't entered range value"
					celcius_check=0
                        	fi

			done
			choice_check=1
			;;
		"2")
			farenheit_check=0
                        while [ $farenheit_check -eq 0 ]
                        do
                                read -p "Enter Farenheit Temperature (between 32 and 212): " farenheit
                                if [[ ( $farenheit -ge 32 && $farenheit -le 212 ) ]]
                                then
                                        celcius_result="$( farenheitToCelcius $farenheit )"
                                        echo "$farenheit farenheit = $celcius_result celcius"
                                        farenheit_check=1
                                else
                                        echo "You didn't entered range value"
                                        farenheit_check=0
                                fi

                        done
			choice_check=1
			;;
		*)
			echo "Please enter correct choice"
			choice_check=0
			;;
	esac
done
