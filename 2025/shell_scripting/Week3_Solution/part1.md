# User Account Creation Script

## Overview

This script provides a simple way to create a new user account in a Linux system using a command-line interface. It allows users to input a username and password while ensuring the username is available before creating the account.

## Features

- Creates a new user account with a specified username and password.
- Checks if the username is already taken before proceeding.
- Displays a success message after successfully creating the account.

## Usage

### Running the Script

To run the script, use the following command:

```
./user_management.sh -c
```

or

```
./user_management.sh --create
```

### Steps

1. The script will prompt you to enter a new username.
2. It will check if the username already exists.
3. If the username is available, it will prompt for a password.
4. After entering the password, the user account will be created.
5. A success message will be displayed.

## Example

```
$ ./user_management.sh -c
Enter new username: testuser
Enter password: ******
User 'testuser' created successfully!
```

## Error Handling

- If the username already exists, the script will display:
  ```
  Error: User 'testuser' already exists!
  ```
- If any required input is missing, the script will exit without making changes.

## Notes

- Ensure you have **sudo** privileges to create user accounts.
- The password input is hidden for security purposes.

## Conclusion

This script simplifies the process of creating user accounts while maintaining basic validation and user-friendly interactions.
