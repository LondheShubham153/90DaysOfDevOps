#create user using shell script


#!/bin/bash


echo "Enter your username: "
read username


echo "Enter your password: "
read -s password


echo "New User Created Successfully:$username"
echo "You entered the username: $username"


###Delete User using shell script

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


### Password reset using shell script


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
