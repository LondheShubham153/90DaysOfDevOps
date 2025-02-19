#!/bin/bash

# Function to create a new user
create_user() {
    read -p "Enter username: " username

    # Check if the user already exists
    if id "$username" &>/dev/null; then
        echo "User already exists!"
        exit 1
    fi

    # Prompt for password
    read -s -p "Enter password: " password
    echo

    # Create user and set password
    if sudo useradd -m "$username"; then
        echo "$username:$password" | sudo chpasswd
        echo "User '$username' created successfully!"
    else
        echo "Failed to create user!"
        exit 1
    fi
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username

    # Check if the user exists before deleting
    if ! id "$username" &>/dev/null; then
        echo "User not found!"
        exit 1
    fi

    # Delete user
    if sudo userdel -r "$username"; then
        echo "User '$username' deleted successfully!"
    else
        echo "Failed to delete user!"
        exit 1
    fi
}

# Function to reset a user's password
reset_password() {
    read -p "Enter username: " username

    # Check if user exists
    if ! id "$username" &>/dev/null; then
        echo "User not found!"
        exit 1
    fi

    while true; do
        # Prompt for new password
        read -s -p "Enter new password (min 6 chars, only @ allowed as special char): " password
        echo

        # Check password length (should be at least 6 characters)
        if [[ ${#password} -lt 6 ]]; then
            echo "Password must be at least 6 characters long!"
            continue
        fi

        # Check for special characters (only @ is allowed)
        if [[ "$password" =~ [^a-zA-Z0-9@] ]]; then
            echo "Password can only contain letters, numbers, and '@'!"
            continue
        fi

        # If the password passes both checks, break the loop
        break
    done
    # Update password
    if echo "$username:$password" | sudo chpasswd; then
        echo "Password reset successfully for user '$username'!"
    else
        echo "Failed to reset password!"
        exit 1
    fi

}

# Function to list all users
list_users() {
    echo "List of system users:"
    cut -d: -f1 /etc/passwd
}

# Function to display help message
show_help() {
    echo "Usage: $0 [OPTION]"
    echo "Options:"
    echo "  -c  Create a new user"
    echo "  -d  Delete a user"
    echo "  -r  Reset user password"
    echo "  -l  List all users"
    echo "  -h  Show this help message"
}

# Main logic to handle command-line arguments
if [[ "$1" == "-c" ]]; then
    create_user
elif [[ "$1" == "-d" ]]; then
    delete_user
elif [[ "$1" == "-r" ]]; then
    reset_password
elif [[ "$1" == "-l" ]]; then
    list_users
elif [[ "$1" == "-h" ]]; then
    show_help
else
    echo "Invalid option! Use -h for help."
    exit 1
fi
