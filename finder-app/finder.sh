#! /bin/bash

if [ "$#" -ne 2 ] ; then
	echo "enter valid arguments"
	exit 1
fi
if ! [ -d "$1" ] ; then
	echo "$1 is not a directory"
	exit 1
fi

cd $1

file_count=$(ls -1 | wc -l)
line_count=$(grep -cR $2  | wc -l)

echo The number of files are $file_count and the number of matching lines are $line_count
