#!/bin/ssh
x=$(expr 8+8)
echo $x
echo $(expr 8+8)

let y=x
echo value of y:$y

echo $((x+1))

z=(1+2)
echo value of z: $z = $((z))
let t=z
echo value of z: $z = $t


if [ $# -eq 2 ]
then
	echo $(($1 + $2))
fi

if [[ $# -eq 2  &&  ($1 -eq 12 || $2 -eq 12) ]]
then
	echo one of the number is 12. 12 is my favourite number.
	echo multiplication result: $(($1 * $2))
fi
