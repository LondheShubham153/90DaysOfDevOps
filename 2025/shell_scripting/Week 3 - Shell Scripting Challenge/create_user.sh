#!/bin/bash

read -p "Enter username: " username

echo "you entered $username"

read -p "Enter Password: " password

sudo useradd -m $username

echo "New User Created $username"
