#!/bin/sh
func1(){
	echo This is message from func 1. You are good.
}

func2(){
	echo  This is message from func 2. You are interesting.
}

func3(){
	echo  This is message from func 3. You are cute.
}

func(){
	echo This is not message from any func $1. You are random.
}
echo enter a number from 1 to 3:

read n

func$n || func $n
