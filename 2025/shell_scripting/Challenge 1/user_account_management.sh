#!/bin/bash

# User Account Management

<<info
Author: Muhammad Abdullah
Date: 9 Feb, 2025
info

# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# User Account Creation
function user_account_creation() {
    echo -e "${BLUE}User Account Creation${NC}"
    read -p "Enter Username: " username
    user_check=$(grep -c "^$username*" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        echo -e "${RED}User already Exists${NC}"
    else
        read -p "Enter Password: " password
        sudo useradd $username
        echo "$username:$password" | sudo chpasswd
        user_check_again=$(grep -c "^$username*" /etc/passwd)
        if [ $user_check_again -eq 1 ]; then
            echo -e "${GREEN}User Has Been Created...${NC}"
        else
            echo -e "${RED}User Not Created!${NC}"
        fi
    fi
}

# User Account Deletion
function user_account_deletion() {
    echo -e "${BLUE}User Account Deletion${NC}"
    read -p "Enter Username: " username
    user_check=$(grep -c "^$username*" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        echo "Are you Sure you want to delete '$username' user?"
        read -p "Type [y/N] " choice
        if [ $choice == "y" ] || [ $choice == "Y" ]; then
            sudo userdel -r $username
            user_check_again=$(grep -c "^$username*" /etc/passwd)
            if [ $user_check_again -eq 0 ]; then
                echo -e "${GREEN}User Deleted!${NC}"
            else
                echo -e "${RED}User Could Not be Deleted${NC}"
            fi
        else
            echo "Ok! Your Choice..."
        fi
    else
        echo -e "${RED}User Don't Exists${NC}"
    fi
}

# User Account Password Change
function user_account_password_change() {
    echo -e "${BLUE}User Account Password Change${NC}"
    read -p "Enter the Username: " username
    user_check=$(grep -c "^$username*" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        echo "Are you Sure you want to Reset Password?"
        read -p "Type [y/N]: " choice
        if [ $choice == "y" ] || [ $choice == "Y" ]; then
            read -p "Enter Your New Password: " password
            read -p "Enter Your New Password Again: " password_confirm
            if [ "$password" == "$password_confirm" ]; then
                echo $password | sudo passwd --stdin $username > /dev/null
                echo -e "${GREEN}Password Changed!${NC}"
            else
                echo -e "${RED}Password Don't Match${NC}"
            fi
        else
            echo "Ok! Your Choice..."
        fi
    else
        echo -e "${RED}User Don't Exists${NC}"
    fi
}

# List All Users
function list_users() {
    echo -e "${BLUE}List All Users${NC}"
    command=$(cat /etc/passwd | cut -d: -f1,3)
    echo "$command"
}

# Main Menu
function main() {
    echo -e "${GREEN}User Account Management${NC}"
    echo -e "${BLUE}0 - Exit${NC}"
    echo -e "${BLUE}1 - User Account Creation${NC}"
    echo -e "${BLUE}2 - User Account Deletion${NC}"
    echo -e "${BLUE}3 - User Account Password Change${NC}"
    echo -e "${BLUE}4 - List All Users${NC}"
    read -p "Select: " select
    case $select in
        0)
            echo -e "${GREEN}Signing Off!${NC}"
            exit
        ;;
        1) user_account_creation;;
        2) user_account_deletion;;
        3) user_account_password_change;;
        4) list_users;;
        *) echo -e "${RED}Invalid Option${NC}";;
    esac
}

while true; do
    main
done