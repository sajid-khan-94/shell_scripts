#!/bin/bash
#   term value expression
#    1		1		a=1, r=2  Nth=a*(r**(n-1))    genralized solution: 2**(n-1)
#    2		2 		a=1, r=2 Snth=a*(((r**n)-1)/(r-1)) genralized solution: (2**n)-1
#    3		4
#    4		8
#    5		16	


val=$1

main()
{
n=$(echo $1 - 1 | bc)  # 
s=$(echo 2^$1 | bc)
echo "$n"
echo ""
echo "$s"

N=$(echo 2^$n | bc)
SN=$(echo $s - 1 | bc)

echo "$1'th term: $N"
echo ""
echo "Sum of $1'th term: $SN"
}



if  [[ -z $1 ]];
then
	echo "2^64" | bc
elif  [[ "${1}" <  1  ||  "${1}" > 64 ]];
then
        echo "Error: invalid input"	
else
	main $1

fi
