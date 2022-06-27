#!/bin/bash

word=$(echo $1 | tr 'a-z' 'A-Z' | tr -d "[[:space:]]")

declare -A dict1
val1=1
for i in {A..Z};
do
	dict1["$i"]=$val1
	val1=$((val1 + 1))
done

#Below loop is used to print dictionary where key is alphabates and value is postion of alphabates.
#for i in "${!dict1[@]}";
#do
#       echo "$i:${dict1[$i]}"
#done

val2=1
for i in {Z..A};
do
        dict2[${val2}]=$i
        val2=$((val2 + 1))
done

#Below loop is used to print dictionary where key is numbers from 1 to 26 and value is alphabates in reverse orders.
#for i in "${!dict2[@]}";
#do
#       echo "$i:${dict2[$i]}"
#done

newarr=()

for (( i=0; i<${#word}; i++ ));
do
	newarr+="${dict2[${dict1["${word:$i:1}"]}]}"

done

#echo -e "\nOrignal word: $1\nCrypted word:${newarr[*]}"
echo ${newarr[*]}