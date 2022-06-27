#!/bin/bash

echo $(echo "${1}" | tr -d "[//']" | tr -c "[:alpha:]" "\n" | tr 'a-z' 'A-Z' | cut -c1 | tr -d "\n") 

