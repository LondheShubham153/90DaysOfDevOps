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
