#!/bin/bash -x

read -p "Enter the Day Number 1 to 7: " day
case $day in
	"1")
                echo "Monday"
                ;;
        "2")
                echo "Tuesday"
                ;;
        "3")
                echo "Wednesday"
                ;;
        "4")
                echo "Thursday"
                ;;
        "5")
                echo "Friday"
                ;;
        "6")
                echo "Saturday"
                ;;
        "7")
                echo "Sunday"
                ;;
	*)
		echo "You didn't entered valid number from 1 to 7"
		;;
esac

