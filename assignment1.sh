#!/bin/sh
echo your folder name: 
read name
mkdir $name
cd $name
pwd
touch first.txt
touch second.txt
ls
echo "first file" > first.txt
echo "second file" > second.txt
cat first.txt
cat second.txt
echo goodbye!
cd ..
rm -r $name
