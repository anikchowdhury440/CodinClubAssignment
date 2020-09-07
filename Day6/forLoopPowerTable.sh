#!/bin/bash

n=$1
powerOfTwo=1
for (( i=0; i<=n; i++ ))
do
	echo "2 ^ $i = $powerOfTwo"
	powerOfTwo=$(( $powerOfTwo*2 ))
done
