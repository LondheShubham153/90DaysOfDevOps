#!/bin/bash
# USAGE
# This script is used to add, delete, manage users & groups.

echo "Enter 'a' to add user, 'd' to delete user"
read input

if [ "$input" == "a" ]; then
    echo "Enter username to add"
    read username
    sudo useradd -m "$username"
    if [ $? -eq 0 ]; then
        echo "User $username added successfully"
    else
        echo "Failed to add user $username"
    fi
elif [ "$input" == "d" ]; then
    echo "Enter username to delete"
    read username
    echo "Are you sure you want to delete user $username? (y/n)"
    read confirm
    if [ "$confirm" == "y" ]; then
        sudo userdel -r "$username"
        if [ $? -eq 0 ]; then
            echo "User $username deleted successfully"
        else
            echo "Failed to delete user $username or user does not exist"
        fi
    else
        echo "User deletion canceled"
    fi
else
    echo "Invalid input"
    exit 1  # Exit from the script with a status code
fi

# Show users list
cat /etc/passwd
