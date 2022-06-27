#!/bin/bash
#   term value expression
#    1		1		a=1, r=2  Nth=a*(r**(n-1))    genralized solution: 2**(n-1)
#    2		2 		a=1, r=2 Snth=a*(((r**n)-1)/(r-1)) genralized solution: (2**n)-1
#    3		4
#    4		8
#    5		16	


main()
{
n=$(echo $1 - 1 | bc)  
s=$(echo 2^$1 | bc)

N=$(echo 2^$n | bc) # Nth term 
SN=$(echo $s - 1 | bc) # Sum of Nth term

echo $N
}



if  [[ -z $1 ]];
then
	echo 2^64-1 | bc # Sum of 64th term
elif  [[ "${1}" <  1  ||  "${1}" > 64 ]];
then
        echo "Error: invalid input"	
        exit 1
else
	main $1

fi
