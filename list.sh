#!/bin/sh

if [ $# <> 1 ]; then
	echo "need full path of directory"
	exit
fi

dirname = $1
cd "${dirname}"

ls -l | while read line;
do
	
