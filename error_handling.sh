#/bin/bash

person=$1

test()
{
    echo "Hello, $person"
}

if [[ $# -eq 0 ]];
then
    echo "Usage: error_handling.sh <person>"
    exit 1
elif [[ -z "${person}" ]];
then
    echo "Hello, "
elif [[ $# > 1 ]];
then
    echo "Usage: error_handling.sh <person>"
    exit 1
else
    test
fi


