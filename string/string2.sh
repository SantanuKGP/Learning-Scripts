#!/bin/sh
# write a program which will give output n th Line of that file

read -p "Enter your filename: " filename
read -p "Line number you want to read: " n
awk "NR==$n" $filename

