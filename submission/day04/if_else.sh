#!/bin/bash

printf "\nLearn if else in Linux\nTake user input for a number and find if it is 3\nEnter a number:- "
read number
if [ "${number}" = 3 ]
then
        echo "Number is 3\n"
else
        echo "Instead Number is ${number}"
fi