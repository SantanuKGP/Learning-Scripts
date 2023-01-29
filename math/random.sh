#!/bin/sh

for i in 1 2  3 4 5
do echo A new random number: $RANDOM
done

read -p "Enter a word: " str
echo $str-$RANDOM

