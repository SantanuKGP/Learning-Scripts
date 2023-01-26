#!/bin/bash

# creating bunch of directories

create(){
	if [ -d $1 ]
	then
		echo "can not create $1. Already exists!"
	else
		mkdir $1
	fi
}

make_folder(){
	[[ -d $1 ]] && echo "can't  create $1. Already exists!!" && exit
	mkdir $i
}

delete(){
	if [ -d $1 ]
	then
		rm -rf $1
	else
		echo "can't delete. $1 does not exists!"
	fi
}

delete_folder(){
	# [[-d $1]] && rm -rf $1 && exit
	# echo "can't delete" && exit
	rm -rf $1
}

for i in 1 2 3 4
do
	create folder$i
done

# printing list of dirctories
# Method 1

echo using method 1
ls -l|grep '^d'
echo "*********************************"
ls -l|egrep '^d'

# Method 2

echo -e "\nusing method 2"
ls -d */

for i in folder?
do
	delete_folder $i
done
