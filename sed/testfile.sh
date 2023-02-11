#!/bin/sh
newline(){
	echo ========= Ending of $1 command ===============
}
sed -e s/is/are/ sample-input.txt
newline first
sed -e s/is/are/g sample-input.txt
newline second

# first argument: it will change from line 1 to 4
# `is` will be changed to `are`
# `g` denotes it will be done for all occurrences
sed -e 1,4s:is:are:g sample-input.txt > out.txt
echo Output file:
cat out.txt


sed s:'/sbin/nologin':'/sbin/bash':g /etc/passwd >> out.txt
echo printing...
cat out.txt

rm out.txt
newline third

awk '{ print $0 }' sample.txt
newline fourth
awk -F: '{ print $1 }' sample.txt
newline fifth
awk -F: '{ print $1 $3 }' sample.txt
echo =====Ending======
