# User Management Script

## Overview
This Bash script provides functionalities for managing user accounts on a Linux system. It allows the creation, deletion, password resetting, and listing of users. The script ensures proper validation and security while performing these operations.

## Features
- **Create a new user** (-c)
- **Delete an existing user** (-d)
- **Reset user password** (-r)
- **List all users** (-l)
- **Display help message** (-h)

## Usage
To use this script, execute it with one of the following options:

```sh
./user_management.sh [OPTION]
```

### Options
| Option | Description |
|--------|-------------|
| -c | Create a new user |
| -d | Delete an existing user |
| -r | Reset a user's password |
| -l | List all users |
| -h | Show help message |

## Implementation Details

### 1. User Creation (`-c`)
- The script prompts for a username and checks if it already exists.
- If the user does not exist, it asks for a password.
- The password is securely entered (hidden input).
- The new user is created and the password is set.
- A success message is displayed upon successful creation.

### 2. User Deletion (`-d`)
- The script prompts for a username.
- It verifies if the user exists before attempting to delete it.
- The user is deleted along with their home directory.
- A success message is displayed upon deletion.

### 3. Password Reset (`-r`)
- The script prompts for a username.
- It verifies if the user exists before proceeding.
- The user is asked to enter a new password with the following constraints:
  - Minimum length of 6 characters.
  - Only `@` is allowed as a special character.
- If the password is valid, it is updated, and a success message is displayed.

### 4. List Users (`-l`)
- Displays a list of all system users.
- Extracts usernames from `/etc/passwd`.

### 5. Help Message (`-h`)
- Displays usage information and available command-line options.

## Error Handling
- If a username already exists during creation, an error message is displayed.
- If a username does not exist during deletion or password reset, an error message is displayed.
- Invalid options prompt the help message.

## Example Usage
```sh
# Create a new user
./user_management.sh -c

# Delete a user
./user_management.sh -d

# Reset a user's password
./user_management.sh -r

# List all users
./user_management.sh -l

# Show help
./user_management.sh -h
```

## Requirements
- The script must be run with **sudo** privileges for user management operations.
- Linux system with Bash shell.

## Security Considerations
- Password input is hidden for security.
- Proper validation is done to ensure only valid users and passwords are processed.
- The script should be executed with appropriate user permissions to prevent unauthorized access.

## Author
This script was developed as a beginner-friendly approach to Linux user management using Bash scripting.

## License
This project is open-source and available for modification and distribution.

