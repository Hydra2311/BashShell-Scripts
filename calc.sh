#!/bin/bash

echo "Give first number:"
read firstn
echo "Give a symbol +,-,/,*"
read symbol
echo "Give second number:"
read secondn

if [[ "$symbol" == "/" ]]; 
	then
	while [[ "$secondn" -eq 0 ]]; 
	do
		echo "Second number cannot be 0:"
		read secondn
	done
fi

if [[ "$symbol" == "+" ]]; then
    result=$((firstn + secondn))
elif [[ "$symbol" == "-" ]]; then
    result=$((firstn - secondn))
elif [[ "$symbol" == "/" ]]; then
    result=$((firstn / secondn))
elif [[ "$symbol" == "*" ]]; then
    result=$((firstn * secondn))
else
    echo "Invalid operator."
    exit 1
fi

echo $result
