#!/bin/bash

checkprime(){

	echo -n "Enter a number ";
	read num;
	flag=1;
	for ((counter=2;counter<num/2;counter++))
	do
	res=$((num%counter));
	if [ $res -eq 0 ]
	   then
   	   echo "$num is not a prime number.";
   	   flag=0;
   	break;
	fi
	done
	if [ $flag -eq 1 ]
	then
   	   echo "$num is Prime number.";
	fi
}

checkprime;
