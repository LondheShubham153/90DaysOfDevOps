# Solution Document

## Week 3 Challenge 1: User Account Management

### **Problem Statement**
Create a Bash script to manage user accounts by providing options to create, delete, reset passwords, list users, and display help messages.

### **Solution**
Below is the Bash script named `user_management.sh` that implements user account management functionalities:

```bash
#!/bin/bash

# Function to display help message
display_help() {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -c, --create   Create a new user account"
    echo "  -d, --delete   Delete an existing user account"
    echo "  -r, --reset    Reset password of an existing user account"
    echo "  -l, --list     List all user accounts with UIDs"
    echo "  -h, --help     Display this help message"
}

# Function to create a new user account
create_user() {
    read -p "Enter new username: " username
    if id "$username" &>/dev/null; then
        echo "Error: User '$username' already exists."
        exit 1
    fi
    read -s -p "Enter password: " password
    echo
    sudo useradd -m -s /bin/bash "$username"
    echo "$username:$password" | sudo chpasswd
    echo "User '$username' created successfully."
}

# Function to delete an existing user account
delete_user() {
    read -p "Enter username to delete: " username
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi
    sudo userdel -r "$username"
    echo "User '$username' deleted successfully."
}

# Function to reset password of an existing user account
reset_password() {
    read -p "Enter username to reset password: " username
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi
    read -s -p "Enter new password: " password
    echo
    echo "$username:$password" | sudo chpasswd
    echo "Password for '$username' reset successfully."
}

# Function to list all user accounts
list_users() {
    echo "Listing all users and their UIDs:"
    awk -F: '{print $1 " - UID: "$3}' /etc/passwd
}

# Handling command-line arguments
case "$1" in
    -c|--create)
        create_user
        ;;
    -d|--delete)
        delete_user
        ;;
    -r|--reset)
        reset_password
        ;;
    -l|--list)
        list_users
        ;;
    -h|--help)
        display_help
        ;;
    *)
        echo "Invalid option. Use -h or --help for usage information."
        exit 1
        ;;
esac
```

---

## Week 3 Challenge 2: Automated Backup & Recovery using Cron

### **Problem Statement**
Create a Bash script to automate backups of a specified directory with a rotation mechanism that retains only the last 3 backups.

### **Solution**
Below is the Bash script named `backup_with_rotation.sh` that implements the automated backup with rotation.

```bash
#!/bin/bash

# Function to display help message
display_help() {
    echo "Usage: $0 [directory_path]"
    echo "Description: Creates a backup of the specified directory and retains only the last 3 backups."
}

# Check if directory path is provided
if [ -z "$1" ]; then
    echo "Error: No directory specified."
    display_help
    exit 1
fi

backup_dir="$1"

ts=$(date +"%Y-%m-%d_%H-%M-%S")
backup_path="$backup_dir/backup_$ts"

# Create backup
mkdir -p "$backup_path"
cp -r "$backup_dir"/* "$backup_path"/
echo "Backup created: $backup_path"

# Rotation mechanism
backups=("$backup_dir"/backup_*)
backup_count=${#backups[@]}

if [ "$backup_count" -gt 3 ]; then
    remove_count=$((backup_count - 3))
    for ((i = 0; i < remove_count; i++)); do
        rm -rf "${backups[$i]}"
        echo "Removed old backup: ${backups[$i]}"
    done
fi
```

### **Cron Job Setup**
To schedule automatic backups, add the following line to the crontab using `crontab -e`:
```
0 2 * * * /path/to/backup_with_rotation.sh /home/user/documents
```
This runs the script every day at 2 AM.

---

## **Summary**
- **`user_management.sh`** allows user account management (create, delete, reset password, list users).
- **`backup_with_rotation.sh`** automates backups with a rotation mechanism, keeping only the last 3 backups.
- **Cron Job** can be used to schedule backups automatically.

