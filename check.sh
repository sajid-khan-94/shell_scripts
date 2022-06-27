#!/bin/bash


if [[ ! -f $1 && -f $2 ]]; then
	echo $1 does not exist and $2 exist.
elif [[ -f $1 && ! -f $2 ]]; then
	echo $1 exist but $2 does not exist.
elif [[ -f $1 && -f $2 ]]; then
	echo Both $1 and $2 exist.
fi
