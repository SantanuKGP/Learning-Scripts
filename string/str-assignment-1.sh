#!/bin/sh

echo Enter two strings: 


# Checking for two strings has been given or not

[[ $# -lt 2 ]] && echo Usage: Give two strings as arguments && exit 1

str1=$1
str2=$2

echo string 1: $str1, string 2: $str2

echo "Is string 1 zero length? 1 = FALSE"

[ -z $str1 ]

echo $?

if [ ${#str1} -eq 0 ]
then
	echo yes
else
	echo no
fi

echo Is string 2 non-zero length? 0 = True

[ -n $str2 ]

echo $?

if [ ${#str2} -ne 0 ]
then
        echo yes
else
        echo no
fi

# Comparing the length and the strings

len1=${#str1}
len2=${#str2}


echo size of first string: $len1, second string: $len2

if [ $len1 = $len2 ]
then
	echo Their length is same
	if [ $str1 = $str2 ]
	then
		echo String 1 is as same as string 2
	else
		echo String 1 is different from string 2
	fi
	exit 0
elif [[ $len1 < $len2 ]]
then
	echo String 2 is longer than string 1
	echo String 1 is different from string 2
else
	echo String 1 is longer than string 2
	echo String 1 is different from string 2
fi
