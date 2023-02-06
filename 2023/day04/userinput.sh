#!/bin/bash

# Taking user input
echo "Enter a name: "
read name

# Taking input from arguments
arg1="$1"
arg2="$2"

# Printing the variables
echo "Name entered by user: $name"
echo "First argument: $arg1"
echo "Second argument: $arg2"
