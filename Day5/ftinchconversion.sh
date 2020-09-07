#!/bin/bash -x

echo "Inch to ft conversion"
 
inch=42
feet=`echo $inch | awk '{print $1/12}'`
echo "$inch in = $feet ft"

echo "Rectangular Plot feet to metre"

length_ft=60
breadth_ft=40
length_m=`echo $length_ft | awk '{print $1*0.3048}'`
breadth_m=`echo $breadth_ft | awk '{print $1*0.3048}'`
echo "rectangular plot of $length_ft feet X $breadth_ft feet = $length_m metre X $breadth_m metre"

echo "Area of 25 such plot"

area_m=`echo $length_m $breadth_m | awk '{print $1*$2}'`
plot=25
area_acre=`echo $area_m | awk '{print 25*$1/4047}'`
echo "Area of 25 such plots = $area_acre acres"
