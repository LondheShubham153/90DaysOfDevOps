

#Week 3 Challenge 1: User Account Management
##Using Ubuntu [WSL]

Part 1: Account Creation

##create_user.sh Shell Scipt File To create a user & display its values...

###
#!/bin/bash

read -p "Enter username: " username

echo "you entered $username"

read -p "Enter Password: " password

sudo useradd -m $username

echo "New User Created $username"
###

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting$ vim create_user.sh

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting$ chmod +x create_user.sh

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting$ sh create_user.sh

###Output 

Enter username: demouser
you entered
Enter Password: demo
[sudo] password for kshitij:
New User Created


Part 2: Account Deletion


Part 3: Password Reset


Part 4: List User Accounts

Part 5: Help and Usage Information