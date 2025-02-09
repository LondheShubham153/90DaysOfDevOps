### 1. `show_help` Function
This function displays usage information for the script.

```bash
function show_help() {
    echo "Usage: $0 [options]"
    echo "Options:"
    echo "  -c, --create    Create a new user account"
    echo "  -d, --delete    Delete an existing user account"
    echo "  -r, --reset     Reset the password of an existing user account"
    echo "  -l, --list      List all user accounts"
    echo "  -h, --help      Display this help message"
}
```

- **`function show_help() {`**: Defines a new function named `show_help`.
- **`echo "Usage: $0 [options]"`**: Prints the usage of the script. `$0` is the name of the script.
- **`echo "Options:"`**: Prints the header for the options section.
- **Subsequent `echo` statements**: Each line describes a command-line option available in the script.

### 2. `create_user` Function
This function creates a new user account.

```bash
function create_user() {
    read -p "Enter new username: " username
```
- **`function create_user() {`**: Defines a new function named `create_user`.
- **`read -p "Enter new username: " username`**: Prompts the user to enter a new username and stores it in the variable `username`.

```bash
    if id "$username" &>/dev/null; then
        echo "Error: User '$username' already exists."
        exit 1
    fi
```
- **`if id "$username" &>/dev/null; then`**: Checks if a user with the given username already exists. The `id` command returns success if the user exists.
- **`echo "Error: User '$username' already exists."`**: Prints an error message if the user already exists.
- **`exit 1`**: Exits the script with a status code of 1, indicating an error.

```bash
    read -sp "Enter password for $username: " password
    echo
```
- **`read -sp "Enter password for $username: " password`**: Prompts the user to enter a password for the new user without echoing it to the terminal (due to the `-s` flag).
- **`echo`**: Prints a newline after the password input.

```bash
    sudo useradd -m -p "$(openssl passwd -1 "$password")" "$username"
    echo "User '$username' created successfully."
}
```
- **`sudo useradd -m -p "$(openssl passwd -1 "$password")" "$username"`**: Creates a new user with the specified username and password. The `-m` flag creates a home directory, and `openssl passwd -1` hashes the password.
- **`echo "User '$username' created successfully."`**: Prints a success message indicating the user was created.

### 3. `delete_user` Function
This function deletes an existing user account.

```bash
function delete_user() {
    read -p "Enter username to delete: " username
```
- **`function delete_user() {`**: Defines a new function named `delete_user`.
- **`read -p "Enter username to delete: " username`**: Prompts the user to enter the username of the account to delete.

```bash
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi
```
- **`if ! id "$username" &>/dev/null; then`**: Checks if the user does not exist. The `!` negates the condition.
- **`echo "Error: User '$username' does not exist."`**: Prints an error message if the user does not exist.
- **`exit 1`**: Exits the script with a status code of 1.

```bash
    sudo userdel -r "$username"
    echo "User '$username' deleted successfully."
}
```
- **`sudo userdel -r "$username"`**: Deletes the user account and their home directory (`-r` flag).
- **`echo "User '$username' deleted successfully."`**: Prints a success message indicating the user was deleted.

### 4. `reset_password` Function
This function resets the password of an existing user account.

```bash
function reset_password() {
    read -p "Enter username to reset password: " username
```
- **`function reset_password() {`**: Defines a new function named `reset_password`.
- **`read -p "Enter username to reset password: " username`**: Prompts the user to enter the username for which to reset the password.

```bash
    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' does not exist."
        exit 1
    fi
```
- **`if ! id "$username" &>/dev/null; then`**: Checks if the user does not exist.
- **`echo "Error: User '$username' does not exist."`**: Prints an error message if the user does not exist.
- **`exit 1`**: Exits the script with a status code of 1.

```bash
    read -sp "Enter new password for $username: " password
    echo
```
- **`read -sp "Enter new password for $username: " password`**: Prompts the user to enter a new password for the existing user without echoing it.
- **`echo`**: Prints a newline after the password input.

```bash
    echo "$username:$(openssl passwd -1 "$password")" | sudo chpasswd
    echo "Password for user '$username' reset successfully."
}
```
- **`echo "$username:$(openssl passwd -1 "$password")" | sudo chpasswd`**: Resets the password for the user by piping the username and hashed password to the `chpasswd` command.
- **`echo "Password for user '$username' reset successfully."`**: Prints a success message indicating the password was reset.

### 5. `list_users` Function
This function lists all user accounts on the system.

```bash
function list_users() {
    echo "User accounts on the system:"
```
- **`function list_users() {`**: Defines a new function named `list_users`.
- **`echo "User accounts on the system:"`**: Prints a header for the user accounts list.

```bash
    awk -F: '{ print $1, $3 }' /etc/passwd
}
```
- **`awk -F: '{ print $1, $3 }' /etc/passwd`**: Uses `awk` to read the `/etc/passwd` file, which contains user account information. It prints the first field (username) and the third field (user ID or UID) for each user.

### Main Script Logic
This part of the script handles command-line arguments and calls the appropriate functions.

```bash
if [[ $# -eq 0 ]]; then
    show_help
    exit 1
fi
```
- **`if [[ $# -eq 0 ]]; then`**: Checks if no arguments were provided (`$#` is the number of arguments).
- **`show_help`**: Calls the `show_help` function to display usage information.
- **`exit 1`**: Exits the script with a status code of 1.

```bash
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
        show_help
        ;;
    *)
        echo "Invalid option: $1"
        show_help
        exit 1
        ;;
esac
```
- **`case "$1" in`**: Starts a `case` statement to handle the first argument passed to the script.
- Each case checks for a specific option (`-c`, `-d`, `-r`, `-l`, `-h`) and calls the corresponding function.
- **`*)`**: The default case that handles invalid options, printing an error message and showing help.
