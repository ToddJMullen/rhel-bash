#!/bin/bash

#for loops

if [ "$#" -eq 0 ]#if there are 0 positional params
	echo -e "Error, you forgot to tell me a filename!"
	echo -e "Usage: $(basename $0) <filename>\n" # Remember $0 is a ref to the current file name / path
	exit 1 #non-zero for error
fi

echo "Count down sequence"
sleep 2

for i in 6 5 4 3 2 1 "Time's up. Beginning reality check." ; do
	echo -e "$i\n"
	sleep 1
done

echo "All Bitcoin have been erased by EMP!"


