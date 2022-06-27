#!/bin/bash

my_str=$1
my_arr=($(echo $my_str | tr -d "[//']" |tr -c "[A-Za-z]" "\n" | tr 'a-z' 'A-Z'))  
echo "${my_arr[*]}"
acro=()  
for i in "${my_arr[@]}"  
do  
	acro+=("${i:0:1}")
done  

echo $(echo "${acro[*]}"| tr -d " ")


