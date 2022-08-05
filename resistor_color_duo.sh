#!/usr/bin/env bash
  
echo "Number of parameter passed: "$#

arr=('black','brown','red','orange','yellow','green','blue','violet','grey','white')

declare -A dict
val=0
for i in $(echo ${arr[*]} | tr -s "," " "); # -s flag with tr can be use to swap selection 1 with selection 2
do
	dict["$i"]=$val
	val=$(( $val + 1))
done

#echo ${dict[@]} # list value of dictionary
#echo ${!dict[@]} # list key of dictionary



if [[ $# > 2 ]];
then
		echo ""
elif [[ "${arr[@]}" =~ "$1" && "${arr[@]}" =~ "$2" ]]; # Here checking whether input value is present in the given list/array
then
		if [[ "$1" == "black" ]];
        then
                echo ${dict["${2}"]}
        else
                echo ${dict["${1}"]}${dict["${2}"]}     
		fi		
      
else
        echo "invalid color"
		exit 1
fi

