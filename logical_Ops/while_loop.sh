#!/bin/sh

read -p "Enter the number to calculate factorial: " n



ans=1
j=1

while [ $j -le $n ]
do
	let ans=($ans*$j)
	j=$(($j+1))
done

echo  $n! = $ans


echo Using not while loop or until loop
ans=1 ; j=1
until [ $j -gt $n ]
do
        let ans=($ans*$j)
        j=$(($j+1))
done

echo  $n! = $ans



