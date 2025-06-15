

#Week 3 Challenge 1: User Account Management
##Using Ubuntu [WSL]

Part 1: Account Creation

##create_user.sh Shell Scipt File To create a user & display its values...

###
#!/bin/bash


echo "Enter your username: "
read username


echo "Enter your password: "
read -s password


echo "New User Created Successfully:$username"
echo "You entered the username: $username"

###

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$ 
 vim create_user.sh

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$ 
 chmod +x create_user.sh

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$ 
 bash create_user.sh

###Output 

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$ bash create_user.sh

Enter your username:
devops_user
Enter your password:
New User Created Successfully:devops_user
You entered the username: devops_user
kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$

Part 2: Account Deletion
###
#!/bin/bash

echo "Enter the username of the account to delete: "
read username


if id "$username" &>/dev/null; then
 
    echo "Deleting user account '$username'..."
    
   
    sudo userdel "$username"
    
    
 
    
    echo "User '$username' has been deleted."
else
    echo "User '$username' does not exist."
fi

###

###Output

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$ bash delete_user.sh

Enter the username of the account to delete:
devops_user
Deleting user account 'devops_user'...
[sudo] password for kshitij:
User 'devops_user' has been deleted.
kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$


Part 3: Password Reset

#!/bin/bash


replace_password() {
    echo "Enter the username to reset the password: "
    read username
    if id "$username" &>/dev/null; then
        echo "Enter the new password for user '$username':"
        read -s new_password
        echo "$username:$new_password" | sudo chpasswd
        echo "Password for user '$username' has been reset."
    else
        echo "User '$username' does not exist."
    fi
}


show_help() {
    echo "Usage: $0 [OPTION]"
    echo "  -r, --reset      Reset the password for an existing user"
    echo "  -h, --help       Show this help message"
}


if [[ "$1" == "-r" ]] || [[ "$1" == "--reset" ]]; then
    replace_password
elif [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then
    show_help
else
    echo "Invalid option. Use -h or --help for usage information."
fi

###Output

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$ bash password_reset.sh -r
Enter the username to reset the password:
devops_user
Enter the new password for user devops_user
demo
Password for user devops_user has been reset

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90DaysOfDevOps/2025/shell_scripting/Week 3 - Shell Scripting Challenge$ 


Part 4: List User Accounts

Part 5: Help and Usage Information