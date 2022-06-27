#!/bin/bash

word=$(echo $1 | tr 'a-z' 'A-Z' | tr -d "[[:space:]]")
echo $word
newarr=()

if [[ ! $word =~ ^[A-z]+$ ]];
then 
	echo "Invalid String"
else
	echo "Valid String"
fi

