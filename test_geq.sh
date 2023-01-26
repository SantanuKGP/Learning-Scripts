#!/bin/sh

# this program takes two arguments and checks which one is greater , lesser or equal

if [ $1 -eq $2 ]
then
	echo "$1 is equal to $2"
elif [ $1 -gt $2 ]
then		
	echo $1 is greater than $2
else
	echo $1 is less than $2
fi


if [ $1 -ge $2 ]
then
	echo $1 is greater than or equal to $2
else
	echo $1 is less than $2
fi

