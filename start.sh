#!/bin/bash

echo "Welcome!"
echo "1. Studying 2. Nothing"

read answer

if [[ "$answer" != 1 ]]; then
	echo "LAZY"
	exit 1
fi

echo "1.Cybersecurity 2.Lab 3.Bash"

read answer2

if [[ "$answer2" == 1 ]]; then
        echo "Ok"
	echo "Cybersecurity $(date +%Y-%m-%d)" >> ~/study/logs.txt
elif [[ "$answer2" == 2 ]]; then
	echo "Okk"
	echo "Lab $(date +%Y-%m-%d)" >> ~/study/logs.txt
else
	echo "Okkk"
	echo "Bash $(date +%Y-%m-%d)" >> ~/study/logs.txt
fi
