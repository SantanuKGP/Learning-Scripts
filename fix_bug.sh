#!/bin/sh

#let x=[[ $1 -eq a || $1 -eq b || $1 -eq m || $1 -eq s ]]
#echo $x

if [[ $# -eq 3 && $1 == b ]]
then
	echo "good one!"
fi

if [[ $1 = a || $1 = m ]]
then
        func_$1 $2 $3
elif [[ $# -lt 3 ]]
then
        echo Argument is missing.
        RC=1
else
        echo Invalid operator.
fi

