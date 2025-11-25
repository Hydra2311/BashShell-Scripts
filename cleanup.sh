#!/bin/bash

echo "CLEAN UP"

directory="."
file_format1="txt"
file_format2="jpg"

for file in "$directory"/*."$file_format1"; do
	if [[ -f "$file" ]]; then
		echo "Found: $file"
		echo "Should I 1. delete or 2. save this?"
		read answer1
		if [[ "$answer1" == "1" ]]; then
			rm "$file"
			echo "Deleted $file"
		else
			mv "$file" ~/Documents/
			echo "Moved $file to Documents"
		fi
	else
		echo "No such file exists"
	fi
done

for file in "$directory"/*."$file_format2"; do
        if [[ -f "$file" ]]; then
		echo "Found: $file"
                echo "Should I 1. delete or 2. save this?"
                read answer1
                if [[ "$answer1" == "1" ]]; then
                        rm "$file"
			echo "Deleted $file"
                else
                        mv "$file" ~/Pictures/
			echo "Moved $file to Pictures"
		fi
        else
                echo "No such file exists"
        fi
done
