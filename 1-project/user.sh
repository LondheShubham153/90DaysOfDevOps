#!/bin/bash
# USAGE
# This script is used to add, delete, manage users & groups.

echo "Enter 'a' to add user"
read input

if [ "$input" == "a" ]; then
    echo "Enter username to add"
    read username
    sudo useradd -m "$username"
    echo "User $username added successfully"
else
    echo "Invalid input"
    exit 1  # Exit from the script with a status code
fi

echo "Enter 'd' to delete user"
read input
if [ "$input" == "d" ]; then 
      echo "Enter username to delete"
      read username
      sudo userdel -r "$username"
 echo "User $username deleted successfully"
else
    echo "Invalid input"
    exit 1  # Exit from the script with a status code
fi
