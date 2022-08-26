#!/bin/bash

function file_count() {
	# print no of file including directory
	echo "Total items in dir : $(ls $1 | wc -l)"
}

function only_file_count() {
	FILES=$(ls $1)
	COUNT=0
	for FILE in $FILES
	do 
		if [ -f "$FILE" ]
		then
			COUNT=$(( $COUNT + 1))	
		fi
	done
	echo "Total files in dir : $COUNT"
}	

file_count $1
only_file_count $1
