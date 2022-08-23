#!/bin/bash

cat /etc/shadow
STATUS=$?

if [ "$STATUS" -ne 0 ]
then 
	echo "Command failed"
	exit 1
fi

echo "Command succeeded"
exit 0
