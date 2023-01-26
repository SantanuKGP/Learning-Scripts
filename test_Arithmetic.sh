#!/bin/sh

RC=0
# function for addition
func_a(){
	echo $(($1 + $2))
}
# function for substraction
func_s(){
        echo $(($1 - $2))
}
# function for multiplication
func_m(){
        echo $(($1 * $2))
}
# function for division
func_d(){
	if [ $2 -eq 0 ]
	then
		echo Divide by 0 is not accepted
		RC=1
	else
		echo $(($1 / $2))
	fi
}
#if ![ $1 -eq "a" || $1 -eq "d" || $1 -eq "m" || $1 -eq "s"]
#then
#	exit 1
#fi

if [[ $# -eq 3 && (($1 == a) || ($1 == d) || ($1 == m) || ($1 == s)) ]]
then 
	func_$1 $2 $3
elif [[ $# -lt 3 ]]
then
	echo Argument is missing.
	RC=1
else
	echo Invalid operator.
fi

exit $RC

