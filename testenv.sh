#!/bin/sh

echo "enter 1 or 2: "
read ANS
RC=0

if [ $ANS -eq 1 ]
then
	export EVAR="Yes"
else
	if [ $ANS -eq 2 ]
	then 
		export EVAR="No"
	else
		export EVAR="Unknown"
		RC=1
	fi
fi

echo The value of EVAR: $EVAR
exit $RC

