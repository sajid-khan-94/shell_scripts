#!/bin/bash

year=$1
if [[ $# -eq 0 || $# > 1 || $1 != [0-9]* ]];
then
    echo "Usage: leap.sh <year>"
    exit 1
elif [[ $year =~ ^[+-]?[0-9]+\.?[0-9]*$ ]];
then
    echo "Usage: leap.sh <year>"
    exit 1
elif [[ $(( $year % 100 )) = 0 && $(( $year % 400)) = 0 && $(( $year % 4 )) = 0 ]];
then
    echo "true"
elif [[ $(( $year % 100 )) = 0 && $(( $year % 400)) != 0 && $(( $year % 4 )) = 0 ]];
then
    echo "false"
elif [[ $((year % 4 )) = 0 ]];
then
    echo "true"
elif [[ $((year % 4 )) != 0 ]];
then
    echo "false"
else
    echo "false"
fi
