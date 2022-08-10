#!/bin/bash


a=$( echo $1 | tr 'a-z' 'A-Z' )
b=$( echo $2 | tr 'a-z' 'A-Z' )


declare -A f1
declare -A f2
p1=0
for i in {A..Z}; # Using this function string 0 as value is respect to each alphabet 
do
	f1[$i]=$p1
	f2[$i]=$p1
done





for (( i=0; i<${#a}; i++ )); # Updating value of those alphabet in dictionary f1 which are present in $1
do
	f1["${a:$i:1}"]=$(( ${f1["${a:$i:1}"]} + 1 ))
done


#echo -e "dic1:\n${!f1[@]}\n${f1[@]}"




for (( j=0; j<${#b}; j++ ));  # Updating vale of those alphabet in dictionary f2 which are present in $2.
do
	f2["${b:$j:1}"]=$(( ${f2["${b:$j:1}"]} + 1 ))
done

#echo -e "dic2:\n${!f2[@]}\n${f2[@]}"

check=0
for n in ${!f2[@]}; # Here comparing value against the key and if they don't match increasing count of check value by 1.
do
	if [[ ${f1["$n"]} != ${f2["$n"]} ]]
	then
		check=$(( $check + 1 ))
	fi
done

#echo $check


if [[ $check > 0 ]]; # Here deciding if value of check is zero then it's an anagram else not an anagram.
then
	echo "$1 and $2 is not an anagram"
elif [[ $check = 0 ]];
then
	echo "$1 and $2 is an anagram"
fi
