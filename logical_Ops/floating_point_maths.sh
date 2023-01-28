#!/bin/sh

# For more info, you can visit https://www.baeldung.com/linux/bash-variables-division 

# In general, we can not  compute floating point number in shell

# Let's write a sample program
x=10.5
echo $x

# using bc and pipe
x=60
y=-9
echo "scale=4 ; $x / $y" | bc

x=10.5
y=7
echo "scale=5 ; $x / $y" | bc


# using awk command

awk "BEGIN { print $x/$y }"

# using python
python3 -c "print($x/$y)"

# Storing the result of a command
z=$(python3 -c "print($x/$y)")

echo successfully stored value of z: $z
