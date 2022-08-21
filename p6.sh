#!/bin/bash

read -p "Enter file/directory : " NAME

if [ -f "$NAME" ]
then
	echo "File exits"
	ls -al $NAME
elif [ -d "$NAME" ]
then
	echo "Dir exits; contents of dir are -"
	ls -al $NAME
else
	echo "other type"
fi
