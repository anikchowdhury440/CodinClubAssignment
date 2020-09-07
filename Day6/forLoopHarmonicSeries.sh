#!/bin/bash -x

n=$1
harmonic=1
for (( i=2; i<=n; i++ ))
do
	harmonic=`echo $harmonic $i | awk '{print $1+(1/$2)}'`
done
echo "Harmonic Number = $harmonic"
