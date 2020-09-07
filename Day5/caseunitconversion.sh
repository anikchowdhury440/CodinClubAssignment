#!/bin/bash -x
echo "Enter the type of Unit Conversion do you want"
echo "Feet to Inch (Press 1)"
echo "Feet to Meter (Press 2)"
echo "Inch to Feet (Press 3)"
echo "Meter to Feet (Press 4)"
read -p "Enter value: " choice
case $choice in
	"1")
		read -p "Enter Value (in feet): " feet
		inch=`echo $feet | awk '{print $1*12}'`
		echo "$feet feet = $inch inch"
		;;
	"2")
		read -p "Enter Value (in feet): " feet
		meter=`echo $feet | awk '{print $1/3.281}'`
                echo "$feet feet = $meter meter"
                ;;
	"3")
		read -p "Enter Value (in inch): " inch
		feet=`echo $inch | awk '{print $1/12}'`
                echo "$inch inch = $feet feet"
                ;;
	"4")
		read -p "Enter Value (in meter): " meter
		feet=`echo $meter | awk '{print $1*3.281}'`
                echo "$meter meter = $feet feet"
                ;;
	*)
		echo "Invalid choice"
		;;
esac
