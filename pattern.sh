#!/bin/bash

test(){
MAX_NO=0
cond="False"
while [ "$cond" == "False" ]
do
	read -p "Enter any number between 5 to 9: " MAX_NO

#if [[ $MAX_NO -lt 5 ]] && [[ $MAX_NO -gt 9 ]];
	if ! [ $MAX_NO -ge 5 -a $MAX_NO -le 9 ];
	then
 		echo "Wrong input it shouldn't be less than 5 and more than 9."
	else
		echo "your input is: "$MAX_NO
		cond="True"
	fi
done
sleep 3
clear
for (( i=1; i<=MAX_NO; i++))
do
	for (( s=MAX_NO; s>=i; s-- ))
	do
		echo -n " "
	done
	for (( j=1; j<=i; j++ ))
	do
		echo -n " ."
	done
	echo ""
done
#Second Part of pattern
for (( i=MAX_NO; i>=1; i-- ))
do
	for (( s=1; s<=MAX_NO; s++ ))
	do
		echo -n " "
	done
	for (( j=1; j<=i; j++ ))
	do
		echo -n " ."
	done
	echo ""
done
}

test
