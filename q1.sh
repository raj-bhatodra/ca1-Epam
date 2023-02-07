#!/bin/bash

# This script uses the fileinfo function to print information about each file or directory passed as an argument.

fileinfo() {
	for file in "$@"; do
		if [ -f "$file" ]; then
			echo "$file regular file"
		elif [ -d "$file" ]; then
			echo "$file directory"
		else
			echo "$file another type of file"
		fi

		echo "ls -l command on $file"
		ls -l "$file"
	done
}

#The filecount function counts the number of regular files in the argument list

filecount() {
	local count=0
	for file in "$@"; do
		if [ -f "$file" ]; then
			count=$((count + 1))
		fi
	done
	echo "regular file $count"
}
fileinfo "$@"
filecount "$@"
# "$@" special parameter, which expands to all the arguments passed to the script.
