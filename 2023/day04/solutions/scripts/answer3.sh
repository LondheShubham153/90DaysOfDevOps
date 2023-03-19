#!/bin/bash

let num1=$1
let num2=$2

if [ $num1 -gt $num2 ]; then
  echo "The first number ($num1) is greater than the second number ($num2)"
else
  echo "The second number ($num2) is greater than or equal to the first number ($num1)"
fi
