#!/bin/bash

add_user()
{
    USER=$1
    PASS=$2

    useradd -m $USER
    echo "$USER:$PASS" | chpasswd
    echo "Successfully added user: $USER"
}

#MAIN

echo "Enter username for User 1:"
read USER1
echo "Enter password for User 1:"
read -s PASS1
echo "Enter username for User 2:"
read USER2
echo "Enter password for User 2:"
read -s PASS2

add_user $USER1 $PASS1
add_user $USER2 $PASS2

