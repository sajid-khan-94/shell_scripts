#/bin/bash

num=$1
raindrop()
{
	
	if (( $num % 3 == 0 )) && (( $num % 7 == 0 )) && (( $num % 5 ==  0 ))
	then
		echo "PingPlangPlong"
	
	elif (( $num % 3 == 0 )) && (( $num % 7 == 0 ))
	then
		echo "PingPlong"
		
	elif (( $num % 3 == 0 )) && (( $num % 5 == 0 ))
	then
		echo "PingPlang"
		
	elif (( $num % 5 == 0 )) && (( $num % 7 == 0 ))
	then
		echo "PlangPong"
	
	elif (( $num % 3 == 0 ))
	then
    		echo "Ping"
	
	elif (( $num % 5 == 0 ))
	then
    		echo "Plang"
	
	elif (( $num % 7 == 0 ))
	then
	    	echo "Plong"

	else
		echo ${num}
	fi
}

raindrop

