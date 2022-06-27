#!/bin/bash
  
str1=$1
str2=$2

re="[[:space:]]"

match_strands()
{
    diff=0
    for (( i=0; i<"${#str1}"; i++)); do
        if [[ "${str1:$i:1}" != "${str2:$i:1}" ]];
        then
                diff=$((diff+1))
        fi
    done

    if [[ $diff -eq 0 ]];
    then 
            echo "0"
    else
            echo "${diff}"
    fi
}

if [[ $# != 2 ]]; # for no input 
then
	echo "Usage: hamming.sh <string1> <string2>"
    exit 1	
elif [[ -z "${str1}" ]] && [[ -z "${str2}" ]]; # for both inputs are space
then
	echo "0"
elif [[ "${#str1}" -ne "${#str2}" ]]; # input of not equal length
then
	echo "strands must be of equal length"
    exit 1
elif [[ "${str1}" =~ $re ]] || [[ "${str2}" =~ $re ]];# either left or right input is space
then
	echo "strands must be of equal length"
    exit 1
else # for single or long similar input and for single or long different input
	match_strands
fi
