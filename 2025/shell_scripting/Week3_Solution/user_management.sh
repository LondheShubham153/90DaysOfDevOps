#!/bin/bash


# Check if script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Error: This script must be run as root."
    exit 1
fi


# Part 1: Account Creation
# Function to create new user
create_user() {
    read -p "Enter new username: " username

    # Check if username exists
    if id "$username" &> /dev/null ; then
        echo "Error: Username '$username' already exists."
        exit 1
    fi

    read -sp "Enter password: " password
    echo

    # Create user with home directory
    useradd -m "$username" &> /dev/null

    # Set password
    echo "$username:$password" | chpasswd
    echo "Success: User '$username' created."
}


# Part 2: Account Deletion
# Function to delete user
delete_user() {
    read -p "Enter username to delete: " username

    # Check if username exists
    if ! id "$username" &> /dev/null ; then
        echo "Error: Username '$username' does not exist."
        exit 1
    fi

    read -p "Delete home directory? [Y/n] " choice

    if [[ -z "$choice" ]] || [[ "$choice" =~ ^[yY] ]]; then
      # Delete user with home directory
      userdel -r "$username" &> /dev/null
      echo "Success: User '$username' and home directory deleted."
    else
      # Delete user without home directory
      userdel "$username" &> /dev/null
      echo "Success: User '$username' deleted (home directory preserved)."
    fi
}


# Part 3: Password Reset
# Function to reset password
reset_password() {
    read -p "Enter username: " username

    # Check if username exists
    if ! id "$username" &> /dev/null ; then
        echo "Error: Username '$username' does not exist."
        exit 1
    fi

    read -sp "Enter new password: " password
    echo

    # Change password
    echo "$username:$password" | chpasswd
    echo "Success: Password for '$username' reset."
}


# Part 4: List User Accounts
# Function to list users
list_users() {
    echo "User accounts:"
    echo "------------------"
    echo -e "UID\t Username"
    awk -F: '{ if ($3 >= 1000 && $3 != 65534) print $3 "\t " $1 }' /etc/passwd
}



# Bonus Part
# Function to display all details of user
user_info() {
    read -p "Enter username: " username
    if ! id "$username" &> /dev/null ; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi

    echo -e "\nDetailed user information:"
    echo -e "Username\t UID\t GID\t Home Dir\t Default Shell"
    awk -F: -v user="$username" '$1 == user {
        print "Username:\t" $1 "\nUID:\t\t" $3 "\nGID:\t\t" $4 "\nHome:\t\t" $6 "\nShell:\t\t" $7
    }' /etc/passwd

    echo -e "\nGroups: $(groups "$username" |  awk -F: '{print $2}' | tr ' ' ',' | sed 's/^,//')\n"
}



# Bonus Part
# Function to change username
modify_username() {
    read -p "Enter current username: " old_name
    if ! id "$old_name" &>/dev/null; then
        echo "Error: User '$old_name' does not exist."
        exit 1
    fi

    read -p "Enter new username: " new_name
    if id "$new_name" &>/dev/null; then
        echo "Error: Username '$new_name' already exists."
        exit 1
    fi

    usermod -l "$new_name" "$old_name"
    echo "Success: Username changed from '$old_name' to '$new_name'"

    read -p "Update home directory path? [Y/n]: " choice
    if [[ -z "$choice" ]] || [[ "$choice" =~ ^[yY] ]]; then
        usermod -d "/home/$new_name" -m "$new_name"
        echo "Home directory updated to /home/$new_name"
    fi
}



# Bounus Part
# Function to change UID
modify_uid() {
    read -p "Enter username: " username
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi

    read -p "Enter new UID: " new_uid
    if ! [[ "$new_uid" =~ ^[0-9]{3,}$ ]]; then
        echo "Error: Invalid UID format."
        exit 1
    fi

    if awk -F: '{print $3}' /etc/passwd | grep -q "^${new_uid}$"; then
        echo "Error: UID $new_uid already exists."
        exit 1
    fi

    usermod -u "$new_uid" "$username"
    echo "Success: UID for '$username' changed to $new_uid"
}



# Bonus Part
# Function to change user shell
modify_shell() {
    read -p "Enter username: " username
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi

    echo -e "\nAvailable shells:"
    grep -v '^#' /etc/shells | cat -n

    read -p "Enter new shell path: " new_shell
    if ! grep -q "^$new_shell$" /etc/shells; then
        echo "Error: Invalid shell. Must be listed in /etc/shells"
        exit 1
    fi

    usermod -s "$new_shell" "$username"
    echo "Success: Shell for '$username' changed to $new_shell"
}



# Part 5: Help and Usage Information
# Help function
show_usage() {
    echo
    echo "User Account Management Script"
    echo "Usage: $0 [OPTION]"
    echo
    echo "Options:"
    echo "  -c, --create              Create new user account"
    echo "  -d, --delete              Delete existing user account"
    echo "  -r, --reset               Reset user password"
    echo "  -l, --list                List all user accounts"
    echo "  -i, --info                Show detailed user information"
    echo "  -n, --modify-username     Change username"
    echo "  -u, --modify-uid          Change user UID"
    echo "  -s, --modify-shell        Change user's default shell"
    echo "  -h, --help                Show this help message"
    echo
}


# ---------------------- Main Execution ---------------------- #
# Handle command line arguments
case "$1" in
    -c|--create) create_user ;;
    -d|--delete) delete_user ;;
    -r|--reset) reset_password ;;
    -l|--list) list_users ;;
    -i|--info) user_info ;;
    -n|--modify-username) modify_username ;;
    -u|--modify-uid) modify_uid ;;
    -s|--modify-shell) modify_shell ;;
    -h|--help) show_usage ;;
    *) echo "Error: Invalid option. Use -h for help."; exit 1 ;;
esac


exit 0