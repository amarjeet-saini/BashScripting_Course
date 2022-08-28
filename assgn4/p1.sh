#!/bin/bash

# script rename .jpg files in current dir  to yyddmmname.jpg and moves to cur dir. 

shopt -s nullglob # enable 

for FILE in *.jpg
do 
	echo "Renaming $FILE"
	LABEL=$(date +%Y%m%d)
	mv $FILE ./${LABEL}$FILE
done

