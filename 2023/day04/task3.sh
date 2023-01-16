#!/bin/bash

echo "Enter first Number"
read num1
echo "Enter second Number:"
read num2

echo "num1=$num1"
echo "num2=$num2"
if [ $num1 -lt $num2 ]; then
    echo "$num1 is less than $num2"
elif [ $num1 -eq $num2 ]; then
    echo "$num1 is equal to $num2"
else
    echo "$num1 is greater than $num2"
fi
