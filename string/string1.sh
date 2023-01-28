#!/bin/sh

# Let's take a string for example
string="Hello, Brother"

# the length of string is 14, so output will be 14
echo length of string: ${#string}

# comparison between two strings
echo "Give me two strings: "
read str1 str2
echo "first string: $str1, second string: $str2"

# cecking just equal to or not

if [[ $str1 -eq "$str2" ]]
then
	echo Both are equal
else
	echo They are different
fi	

if [ $str1 = $str2 ]
then
	echo str1 is equal to str2
elif [[ $str1 < $str2 ]]
then
	echo str1 is less than str2
else
	echo str1 is greater than str2
fi

if [[ $str1 == $str2 ]]
then
        echo str1 is equal to str2
elif [[ $str1 < $str2 ]]
then
        echo str1 is less than str2
else
        echo str1 is greater than str2
fi
