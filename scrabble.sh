#/bin/bash

declare -A dict1

for i in A E I O U L N R S T;
do
	dict1["${i}"]=1
done

for i in D G;
do
	dict1["${i}"]=2
done

for i in B C M P;
do
	dict1["${i}"]=3
done

for i in F H V W Y;
do
	dict1["${i}"]=4
done

for i in J X;
do
	dict1["${i}"]=8
done

dict1["K"]=5

for i in Q Z;
do 
	dict1["${i}"]=10
done



echo "${!dict1[@]}" # Keys
echo "${dict1[@]}" # Values

echo ""



word=$(echo "$1" | tr '[a-z]' '[A-Z]')
echo "Input: \"$1\", Length of input: ${#word}"
sum=0
for (( i=0; i<${#word}; i++ ));
do
	echo ""
	echo "Current value: $sum"
	echo ""
	echo "Value of character \"${word:$i:1}\" is:  ${dict1["${word:$i:1}"]}"
	echo ""
	sum=$(( ${dict1["${word:$i:1}"]} + $sum ))
	echo "Sum of characters after character ${word:$i:1} : $sum"
done
echo ""
echo "Sum of \"$1\" is: ${sum}"
