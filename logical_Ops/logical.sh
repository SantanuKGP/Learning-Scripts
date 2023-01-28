#!/bin/sh

compare1(){
	echo The result from comparison 1: 
	# This comaprison is only valid for integers
	# You can try with strings

	if [ $1 -eq $2 ]
	then
		echo $1 and $2 are equal
	else
		echo $1 and $2 are different
	fi
}

compare2(){
	echo The result from comparison 2:
        if [ $1 = $2 ]
        then
                echo $1 and $2 are equal
        else
                echo $1 and $2 are different
        fi
}

compare3(){
	echo The result from comparison 3:
        if [[ $1 == $2 ]]
        then
                echo $1 and $2 are equal
        else
                echo $1 and $2 are different
        fi
}


test_unit(){
	for i in 1 2 3
	do
		compare$i $1 $2
	done
}

read -p "Enter two integers/strings for comparison: " x y

test_unit $x $y



