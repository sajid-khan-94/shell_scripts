#!/bin/bash

if [[ "$1" =~ .*\?$ ]]; then echo "Sure."
elif [[ "$1" =~ [A-Z0-9].* ]] then echo "Whoa, chill out!"
elif [[ "$1" =~ [A-Z].*\?$ ]] then echo "Calm down, I know what I'm doing!"
elif [[ "$1" =~ [\s\t]* ]] then echo "Fine. Be that way!"
else echo "Whatever."

