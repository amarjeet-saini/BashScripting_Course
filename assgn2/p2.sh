#!/bin/bash

NAME=$1

if [ -f "$NAME" ]
then 
	# arg is a regular file
	exit 0
elif [ -d "$NAME" ]
then
	# arg is a dir 
	exit 1
else
	# other
	exit 2
fi
