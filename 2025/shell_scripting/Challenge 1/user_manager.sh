#!/bin/bash

# Function to display the help menu
show_help() {
    # Prints available options for the script
    echo "Usage: $0 [OPTION]"
    echo "Options:"
    echo "  -c  Create a user"
    echo "  -d  Delete a user"
    echo "  -r  Reset a user's password"
    echo "  -l  List all users"
    echo "  -h  Show help"
}

# Function to create a new user
create_user() {
    # Prompt for the username
    read -p "Username: " username

    # Check if the user already exists
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists."
    else
        # Prompt for the password (hidden input)
        read -s -p "Password: " password
        echo

        # Create the user and set their password
        sudo useradd -m "$username" && echo "$username:$password" | sudo chpasswd && \
            echo "User '$username' created."
    fi
}

# Function to delete an existing user
delete_user() {
    # Prompt for the username to delete
    read -p "Username to delete: " username

    # Check if the user exists before deleting
    if id "$username" &>/dev/null; then
        # Delete the user and their home directory
        sudo userdel -r "$username" && echo "User '$username' deleted."
    else
        echo "User '$username' does not exist."
    fi
}

# Function to reset a user's password
reset_password() {
    # Prompt for the username whose password needs resetting
    read -p "Username: " username

    # Check if the user exists before resetting the password
    if id "$username" &>/dev/null; then
        # Prompt for the new password (hidden input)
        read -s -p "New Password: " password
        echo

        # Update the user's password
        echo "$username:$password" | sudo chpasswd && \
            echo "Password for '$username' reset."
    else
        echo "User '$username' does not exist."
    fi
}

# Function to list all users and their UIDs (User IDs)
list_users() {
    # Extract usernames and UIDs from /etc/passwd and format them with tabs
    cut -d: -f1,3 /etc/passwd | tr ':' '\t'
}

# Main logic: Handle command-line arguments using a case statement
case "$1" in
    -c) create_user ;;              # Create a new user when '-c' is passed as an argument
                
    -d) delete_user ;;              # Delete an existing user when '-d' is passed as an argument
        
    -r) reset_password ;;           # Reset a user's password when '-r' is passed as an argument
        
    -l) list_users ;;               # List all users when '-l' is passed as an argument
       
    -h|*) show_help ;;              # Show help information when '-h' or any other invalid option is passed
        
esac

exit 0  # Exit the script successfully
