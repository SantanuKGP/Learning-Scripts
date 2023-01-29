#!/bin/sh

# sample string
string="Hello, Brother"

echo our string: $string

len=${#string}
echo length of our string: $len

read -p "choose a number from 0 to ${#string}: " n

echo first $n chars: ${string:0:$n}

read -p "choose a number between 0 to ${#string} for dropping chars from head: " m

echo after dropping first $m chars: ${string:$m:$len}


# observe the following things
echo printing string after ',' :${string#*,}

echo "printing string after ',' : ${string#*,}"
echo printing string after ',' : ${string#*,}
