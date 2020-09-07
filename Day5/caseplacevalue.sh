#!/bin/bash -x

read -p "Enter Number like 1, 10, 100, etc.: " number
case $number in
	"1")
        	echo "Unit"
		;;
	"10")
        	echo "Ten"
		;;
	"100")
        	echo "Hundred"
		;;
	"1000")
        	echo "Thousand"
		;;
	"10000")
        	echo "Ten Thousand"
		;;
	"100000")
        	echo "Lakh"
		;;
	"1000000")
        	echo "Ten Lakh"
		;;
	"10000000")
        	echo "Crore"
		;;
	"100000000")
	        echo "Ten Crore"
		;;
	"1000000000")
	        echo "Hundred Crore"
		;;
	"10000000000")
	        echo "Thousand Crore"
		;;
	*)
        	echo "You did not enter nplaceumber like 1, 10, 100, etc."
		;;
esac
