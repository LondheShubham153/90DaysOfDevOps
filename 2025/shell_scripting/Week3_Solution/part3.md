# User Password Reset Script

## Overview

This script provides a simple way to reset the password of an existing user account in a Linux system. It ensures that the username exists before proceeding with the password reset and provides appropriate feedback.

## Features

- Allows users to reset the password of an existing account.
- Checks if the username exists before attempting a password reset.
- Displays a success message after successfully resetting the password.

## Usage

### Running the Script

To reset a user password, use the following command:

```
./user_management.sh -r
```

or

```
./user_management.sh --reset
```

### Steps

1. The script will prompt you to enter the username of the account whose password needs to be reset.
2. It will check if the username exists.
3. If the username exists, it will prompt for a new password.
4. After entering the new password, it will reset the password for the user.
5. A success message will be displayed confirming the password reset.

## Example

```
$ ./user_management.sh -r
Enter username: testuser
Enter new password: ******
Password for user 'testuser' has been reset successfully!
```

## Error Handling

- If the username does not exist, the script will display:
  ```
  Error: User 'testuser' does not exist!
  ```
- If the user does not have the necessary permissions, the script may require **sudo** privileges.

## Notes

- Ensure you have **sudo** privileges to execute this script.
- The password input is hidden for security purposes.

## Conclusion

This script simplifies the process of resetting a user password while ensuring necessary validation and user-friendly interactions.
