#!/bin/bash
a=$1
arr=()
for i in $(seq $(( ${#a} - 1 )) -1 0);do  arr+=${a:i:1};done

echo ${arr[*]}
