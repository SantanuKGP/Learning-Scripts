#!/bin/sh
# Prompt the user for a directory name and then create it
echo "Give a directory name to create:"
read NEW_DIR

# Check to make it doesn't exist!!
[[ -d $NEW_DIR ]] && echo $NEW_DIR already exists,aborting && exit
mkdir $NEW_DIR
cd $NEW_DIR
pwd

for n in 1 2 3 4
do
	touch file$n.txt
done

echo ***checking with ls command***
ls file?.txt

echo ***creating content for files***

for names in file?.txt
do
	echo This file is named $names. Hi!! > $names
done

echo using cat
cat file?.txt
cd ..
rm -rf $NEW_DIR
echo Goodbye, my friend!
