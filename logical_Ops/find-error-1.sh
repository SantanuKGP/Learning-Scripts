#!/bin/sh

# find the error

x=1
y=0

echo value of x=$x, y=$y

echo your result:
if [ $x=$y ]
then
	echo true
else
	echo false
fi

# Have you find the error
# If not, check below

echo expected result: 

if [ $x = $y ]
then
        echo true
else
        echo false
fi

