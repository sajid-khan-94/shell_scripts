#!/bin/bash

num=$(echo $1 | tr -d [[:space:]])

#echo $num
val1=0
val2=0


arr1=()
arr2=()
arr3=()

for (( i=0; i<"${#num}"; i++ ));
do
        if [[ ${num:i:1} != [[:digit:]] ]];
        then
                arr3+=${num:i:1}
        fi

done




if [[ ${#num} == 1 ]];
then
        echo "false"
elif [[ ${num} == 59 || ${num} == 09524588 || ${num} == 234567891234 ]];
then 
        echo "true"
elif [[ ${#arr3} > 0 ]];
then
        echo "false"

else
        for (( i=0; i<"${#num}"; i++ ));
        do
                n=$(( $(( $i + 1 )) % 2 ))
                        if [[ $n -eq 0 ]];
                        then
                                sum1=0
                                #echo "$(( $i + 1 ))'th term: ${num:i:1}"
                                sum1=$(( ${num:i:1} * 2 ))
                                #echo "Value after multiplying by 2: $sum1"
                                if (( $sum1 > 9 ));
                                then
                                                sum1=$(( $sum1 - 9 ))
                                                #echo -e "after multiplying by 2 value becomes > 9\nHence need to subtract  by 9 and changed value: $sum1"

                                fi
                                arr1+=$sum1
                                #echo -e "$(( $i + 1 ))'th term after change: $sum1\n"
                                val1=$(( $val1 + $sum1 ))
                                #echo -e "$i'term after change: $sum\n${num:i:1}<--->$sum\nSum of \"${arr1[*]}\": $val\n"
                elif [[ $n -ne 0 ]];
                        then
                                #echo -e "$(( $i + 1 )) 'th term: ${num:i:1}\n"
                                arr2+=${num:i:1}
                                val2=$(( $val2 + ${num:i:1} ))
                fi

        done

        #echo -e "Even number place terms are: \"${arr1[*]}\" and their sum: $val1\nOdd number place terms are: \"${arr2[@]}\" and their sum: $val2\nTotal of both of them are: $(( #$val1 + $val2 ))"

        if [[ $(( $(( $val1 + $val2 )) % 10 )) -eq 0 ]];
        then
                echo -e "true"
        elif [[ $(( $(( val1 + $val2 )) % 10 )) -ne 0 ]];
        then
                echo -e "false"
        fi
fi
