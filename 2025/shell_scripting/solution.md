#!/bin/bash

function UserAccountManagement {

        ###Account Creation
        if [ "$1" == "-c" ] || [ "$1" == "--create" ];then
                read -p "Enter User Name Which You Want To Create: " username
                userValidation=$(cat /etc/passwd | grep $username | wc -l)

                if [ $userValidation -gt 0 ];then
                        echo "User Already Exists"
                        exit
                else
                        echo "User Does Not Exists Creating The $username"
                        useradd -m "$username" > /dev/null
                        read -sp "Enter Password For Your User $username: " passwd
                        echo -e "$passwd\n$passwd" | passwd "$username" > /dev/null
                        echo "User Created Successfully"
                        cat /etc/passwd | grep $username
                fi
        ###Account Deletion
        elif [ "$1" == "-d" ] || [ "$1" == "--delete" ];then
                read -p "Enter User Name Which You Want To Delete: " username
                userValidation=$(cat /etc/passwd | grep $username | wc -l)

                if [ $userValidation -gt 0 ];then
                        echo "User Is Exit; Deleteing The User: $username With There Home Dir."
                        userdel -r $username
                else
                        echo "User Is Not Exists"
                        exit
                fi
        ###Password Reset
        elif [ "$1" == "-r" ] || [ "$1" == "--reset" ];then
                read -p "Enter User Name Which Password You Want To Reset: " username
                userValidation=$(cat /etc/passwd | grep $username | wc -l)

                if [ $userValidation -gt 0 ];then
                        echo "User Is Exit."
                        read -sp "Enter Password For Your User $username: " passwd
                        echo -e "$passwd\n$passwd" | passwd "$username" > /dev/null
                else
                        echo "User Is Not Exists"
                        exit
                fi
        ###List User Accounts
        elif [ "$1" == "-l" ] || [ "$1" == "--list" ];then
                (echo -e "user\tuserID\tuserDir"; cat /etc/passwd | awk -F ':' '{print $1,$3,$6}') | column -t
        ###Help Option
        elif [ "$1" == "-h" ] || [ "$1" == "--help" ];then
                echo "About => This is User Account Management script. Which you can use to Create,Delete,List and Reset the user password. Please see below mention option or user guid. "
                echo "-c,--create => List All User Which Is Avilable At VM."
                echo "-d,--delete => List All User Which Is Avilable At VM."
                echo "-r,--reset => List All User Which Is Avilable At VM."
                echo "-l,--list => List All User Which Is Avilable At VM."
                echo "-h,--help => List All Arg/Flag Which You Can Use For This Script."
        ###Invaild Option
        else
                echo "Invaild Option Please Use -h Or --help. For Exp: sh AccountCreation.sh -h/./AccountCreation.sh -h"
        fi
}

###Calling Main Function
UserAccountManagement $1
