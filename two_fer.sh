#/bin/bash

num=$#
name=$1
two_fer()
{
    if [ $num -gt 0 ]; then
       echo "One for $name, one for me."
    else
        echo "One for you, one for me."
    fi
}

two_fer 

