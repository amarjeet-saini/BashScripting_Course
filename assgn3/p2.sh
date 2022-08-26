#!/bin/bash

function file_count() {
	echo "$1:"
	echo "   $(ls $1 | wc -l)"
}

file_count $1
