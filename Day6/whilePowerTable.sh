#!/bin/bash

n=$1
i=0
powerOfTwo=1
while [[ ( $i -le $n && $powerOfTwo -le 256 ) ]]
do
	echo "2 ^ $i = $powerOfTwo"
	powerOfTwo=$(( $powerOfTwo*2 ))
	(( i++ ))
done
