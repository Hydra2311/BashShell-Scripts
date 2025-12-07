#!/bin/bash

file=~/Bashhh/logs.txt

ct=0
lt=0
bt=0
at=0

while IFS= read -r line; do
    if [[ "$line" == *"Cybersecurity"* ]]; then
        ((ct++))
        continue
    elif [[ "$line" == *"Lab"* ]]; then
        ((lt++))
        continue
    elif [[ "$line" == *"Bash"* ]]; then
        ((bt++))
        continue
    elif [[ "$line" == *"AI"* ]]; then
        ((at++))
        continue
    fi
done < "$file"

echo "You've studied Cybersecurity a total of $ct times"
echo "You've studied Lab a total of $lt times"
echo "You've studied Bash a total of $bt times"
echo "You've studied AI a total of $at times"