#!/bin/sh

if [ $# -ne 1 ]; then
	echo "need full path of directory"
	exit
fi

LANG=ja_JP.UTF8
logfile=~/Work/_logs/list_`date '+%Y%m%d_%H%M%S'`.log

# move directory
dirname=`echo "${1}"`
cd "${dirname}"


# check each dir
ls -l | grep -v total | while read line;
do
	writer=`echo "${line}" | cut -d "[" -f2 | cut -d "]" -f1 | sed 's/／/\//g'`
	author=`echo ${writer} | cut -d "/" -f2`
	writer=`echo ${writer} | cut -d "/" -f1`
	book=`echo "${line}" | cut -d "]" -f2 | cut -b 2-`

	if [ $author != $writer ]; then
		echo ${writer}\\t${author}\\t${book} >> $logfile
	else
		echo ${writer}\\t\\t${book} >> $logfile
	fi
done

exit 0