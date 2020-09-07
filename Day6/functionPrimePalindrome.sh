#!/bin/bash

function isPrime() {
	flag=0
	for (( i=2; i<=$1/2; i++ ))
	do
        	if [ $(( $1%$i )) -eq 0 ]
        	then
                	flag=1
                	break
        	fi
	done
	if [ $flag -eq 0 ]
	then
		echo "Prime"
	else
		echo "Not a Prime"
	fi
}

function isPalindrome() {
	reverse=0
	number=$1
	while [ $number -ge 1 ]
	do
		rem=$(( $number%10 ))
		reverse=$(( $reverse*10+$rem ))
		number=$(( $number/10 ))
	done
	if [ $reverse -eq $1 ]
        then
                echo 1
        else
                echo 0
        fi

}

read -p "Enter Number: " num

prime_check="$( isPrime $num )"
echo "$num is $prime_check number"

palindrome_check="$( isPalindrome $num )"
if [ $palindrome_check -eq 1 ]
then
	echo "$num is a palindrome number"
	palindrome_prime_check="$( isPrime $num )"
	echo "Palindrome of $num is $palindrome_prime_check number"
else
	echo "$num is not a palindrome number"
fi
