#!/bin/bash

#renames files based on the file extension

read -p "Please enter a file extension:" FORMAT
read -p "Please enter a file prefix (Press ENTER for 20150810):" PREFIX

shopt -s nullglob # enable 

if [ "$PREFIX" == "" ]
then
	PREFIX=$(date +%Y%m%d)
fi

for FILE in *.$FORMAT
do
	echo " Renaming $FILE to ${PREFIX}_$FILE"
	mv $FILE ${PREFIX}_$FILE 
done
