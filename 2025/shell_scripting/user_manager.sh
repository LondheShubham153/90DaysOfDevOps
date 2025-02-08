#!/bin/bash

# Show help menu
show_help() {
    echo "Usage: $0 [OPTION]"
    echo "Options:"
    echo "  -c  Create a user"
    echo "  -d  Delete a user"
    echo "  -r  Reset a user's password"
    echo "  -l  List all users"
    echo "  -h  Show help"
}

# Create a user
create_user() {
    read -p "Username: " username
    if id "$username" &>/dev/null; then
        echo "User '$username' already exists."
    else
        read -s -p "Password: " password
        echo
        sudo useradd -m "$username" && echo "$username:$password" | sudo chpasswd && \
            echo "User '$username' created."
    fi
}

# Delete a user
delete_user() {
    read -p "Username to delete: " username
    if id "$username" &>/dev/null; then
        sudo userdel -r "$username" && echo "User '$username' deleted."
    else
        echo "User '$username' does not exist."
    fi
}

# Reset password
reset_password() {
    read -p "Username: " username
    if id "$username" &>/dev/null; then
        read -s -p "New Password: " password
        echo
        echo "$username:$password" | sudo chpasswd && \
            echo "Password for '$username' reset."
    else
        echo "User '$username' does not exist."
    fi
}

# List users
list_users() {
    cut -d: -f1,3 /etc/passwd | tr ':' '\t'
}

# Main logic based on option
case "$1" in
    -c) create_user ;;
    -d) delete_user ;;
    -r) reset_password ;;
    -l) list_users ;;
    -h|*) show_help ;;
esac

