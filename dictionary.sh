#!/bin/bash
echo $1
echo ""
str=$( echo $1 | tr -d "[:punct:]" | tr -d "[:space:]" | tr -d "[:digit:]" | tr 'a-z' 'A-Z' | tr -c "A-Z" "\n" )
#echo $str
declare -A dict1
val=0


for i in {A..Z};
do 
	dict1["$i"]=$val
done

echo "${!dict1[@]}"
echo "${dict1[@]}"

#for key in "${!dict1[@]}";
#do
#	echo "${key}":"${dict1[${key}]}"
#done


for (( i=0; i<${#str}; i++ ));
do 
	dict1["${str:$i:1}"]=$(( ${dict1["${str:$i:1}"]} + 1 ))
done


echo ""
echo "${!dict1[@]}"
echo "${dict1[@]}"
check=0
for i in ${!dict1[@]};
do
	if [[ ${dict1[$i]} = 0 ]];
	then 
		check=$(($check + 1))
	fi
done

echo ""

if [[ $check > 0 ]];
then 
	echo "Not a Panagram"
else
	echo "It is a panagram"
fi

