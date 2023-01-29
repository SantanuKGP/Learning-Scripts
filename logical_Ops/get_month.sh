#!/bin/sh

read -p "Enter a number betwee 1 and 12: " month

case $month in

	1) echo January;;
	2) echo February;;
	3) echo March;;
	4) echo April;;
	5) echo May;;
	6) echo June;;
	7) echo July;;
	8) echo August;;
	9) echo September;;
	10) echo October;;
	11) echo November;;
	12) echo December;;
	*) echo "Error: Invalid number" ; exit 1;;
esac
exit 0
