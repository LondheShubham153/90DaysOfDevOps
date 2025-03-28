#!/bin/bash

# User Account Management System

<<info
Author: Muhammad Abdullah
Date: 9 Feb, 2025
Email: abdullahabrar4843@gmail.com

This script provides a user account management system with various functionalities such as creating, deleting, modifying user accounts, changing passwords, listing users, and displaying user information. The script requires sudo access to perform these operations.

Usage: user_account_management.sh [OPTION]

Options:
-q, --quit       Quit
-h, --help       Show Usage
-c, --create     Create User Account
-d, --delete     Delete User Account
-p, --password   Change User Account Password
-l, --list       List All Users
-i, --info       User Account Information
-m, --modify     Modify User Account
info

# Define color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check for sudo access
function check_sudo_access() {
    if sudo -n true 2>/dev/null; then
        return 0
    else
        echo -e "${RED}You don't have sudo access. Please run the script with sudo.${NC}"
        exit 1
    fi
}

# User Account Creation
function user_account_creation() {
    echo -e "${BLUE}User Account Creation${NC}"
    read -p "Enter Username: " username
    user_check=$(grep -c "^$username:" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        echo -e "${RED}User already Exists${NC}"
    else
        read -p "Enter Password: " password
        sudo useradd $username
        echo "$username:$password" | sudo chpasswd
        user_check_again=$(grep -c "^$username:" /etc/passwd)
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
    user_check=$(grep -c "^$username:" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        echo "Are you Sure you want to delete '$username' user?"
        read -p "Type [y/N] " choice
        if [ $choice == "y" ] || [ $choice == "Y" ]; then
            sudo userdel -r $username
            sudo groupdel $username
            user_check_again=$(grep -c "^$username:" /etc/passwd)
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
    user_check=$(grep -c "^$username:" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        echo "Are you Sure you want to Reset Password?"
        read -p "Type [y/N]: " choice
        if [ $choice == "y" ] || [ $choice == "Y" ]; then
            read -p "Enter Your New Password: " password
            read -p "Enter Your New Password Again: " password_confirm
            if [ "$password" == "$password_confirm" ]; then
                echo "$username:$password" | sudo chpasswd
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

# User Account List
function user_account_list() {
    echo -e "${BLUE}User Account List${NC}"
    cat /etc/passwd | cut -d: -f1
}

# User Account Information
function user_account_information() {
    echo -e "${BLUE}User Account Information${NC}"
    read -p "Enter Username: " username
    user_check=$(grep -c "^$username:" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        grep "^$username:" /etc/passwd
    else
        echo -e "${RED}User Don't Exists${NC}"
    fi
}

# User Account Modification 
function user_account_modification() {
    echo -e "${BLUE}User Account Modification${NC}"
    read -p "Enter Username: " username
    user_check=$(grep -c "^$username:" /etc/passwd)
    if [ $user_check -eq 1 ]; then
        echo "What do you want to Modify?"
        echo -e "${GREEN}1. Username${NC}"
        echo -e "${GREEN}2. User ID${NC}"
        echo -e "${GREEN}3. Group ID${NC}"
        echo -e "${GREEN}4. Home Directory${NC}"
        echo -e "${GREEN}5. Shell${NC}"
        read -p "Enter Your Choice: " choice
        case $choice in
            1)
                read -p "Enter New Username: " new_username
                sudo usermod -l $new_username $username
                ;;
            2)
                read -p "Enter New User ID: " new_user_id
                sudo usermod -u $new_user_id $username
                ;;
            3)
                read -p "Enter New Group ID: " new_group_id
                sudo usermod -g $new_group_id $username
                ;;
            4)
                read -p "Enter New Home Directory: " new_home_directory
                sudo usermod -d $new_home_directory $username
                ;;
            5)
                read -p "Enter New Shell: " new_shell
                sudo usermod -s $new_shell $username
                ;;
            *)
                echo -e "${RED}Invalid Option${NC}"
                ;;
        esac
    else
        echo -e "${RED}User Don't Exists${NC}"
    fi
}

# User Account Management Usage
function usage() {
    echo -e "${BLUE}Usage: user_account_management.sh [OPTION]${NC}"
    echo -e "${GREEN}Options:${NC}"
    echo -e "${GREEN}-q, --quit\t\tQuit${NC}"
    # echo -e "${GREEN}-h, --help\t\tShow Usage${NC}"
    echo -e "${GREEN}-c, --create\t\tCreate User Account${NC}"
    echo -e "${GREEN}-d, --delete\t\tDelete User Account${NC}"
    echo -e "${GREEN}-p, --password\t\tChange User Account Password${NC}"
    echo -e "${GREEN}-l, --list\t\tList All Users${NC}"
    echo -e "${GREEN}-i, --info\t\tUser Account Information${NC}"
    echo -e "${GREEN}-m, --modify\t\tModify User Account${NC}"
}

# Main Function
function main() {
    check_sudo_access
    echo -e "${BLUE}User Account Management System${NC}"
    while true; do
        echo -e "${BLUE}Please select an option:${NC}"
        echo -e "${GREEN}-q, --quit\t\tQuit${NC}"
        # echo -e "${GREEN}-h, --help\t\tShow Usage${NC}"
        echo -e "${GREEN}-c, --create\t\tCreate User Account${NC}"
        echo -e "${GREEN}-d, --delete\t\tDelete User Account${NC}"
        echo -e "${GREEN}-p, --password\t\tChange User Account Password${NC}"
        echo -e "${GREEN}-l, --list\t\tList All Users${NC}"
        echo -e "${GREEN}-i, --info\t\tUser Account Information${NC}"
        echo -e "${GREEN}-m, --modify\t\tModify User Account${NC}"
        read -p "Enter Your Choice: " OPTION
        case $OPTION in
            -q|--quit)
                echo -e "${RED}Exiting...${NC}"
                exit
                ;;
            -c|--create)
                user_account_creation
                ;;
            -d|--delete)
                user_account_deletion
                ;;
            -p|--password)
                user_account_password_change
                ;;
            -l|--list)
                user_account_list
                ;;
            -i|--info)
                user_account_information
                ;;
            -m|--modify)
                user_account_modification
                ;;
            # -h|--help)
            #     usage
            #     continue
            #     ;;
            *)
                echo -e "${RED}Invalid Option${NC}"
                echo -e "${BLUE}Use Correct Option${NC}"
                ;;
        esac
    done
}

main