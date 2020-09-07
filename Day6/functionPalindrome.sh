#!/bin/bash -x

function checkPalindrome() {
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
		echo "Palindrome"
	else
		echo "Not a Palindrome"
	fi
}


read -p "Enter first number: " num1
read -p "Enter second number: " num2
result1="$( checkPalindrome $num1 )"
result2="$( checkPalindrome $num2 )"
echo "$num1 is $result1 number"
echo "$num2 is $result2 number"
