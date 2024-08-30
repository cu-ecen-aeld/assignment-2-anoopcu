#! /bin/bash

if [ "$#" -ne 2 ] ; then
	echo "enter valid arguments"
	exit 1
fi
echo $2 > $1


