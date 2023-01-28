#!/bin/sh

make_power(){
	echo "result of $1^($2): $(($1**$2))"
}
read -p "Enter  two integers: " x y

make_power $x $y

# common mistakes

# below will print as it is
x=2**3
echo $x

# For evaluation You cam use below methods
	# Using let
let x=2**3
echo $x

	# Using $(())
x=$((2**3))
echo $x
