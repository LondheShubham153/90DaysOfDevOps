# User Account Deletion Script

## Overview

This script provides a simple way to delete an existing user account from a Linux system. It ensures the username exists before proceeding with the deletion and provides appropriate feedback.

## Features

- Allows users to delete an account using a specified username.
- Checks if the username exists before attempting deletion.
- Displays a confirmation message after successful deletion.

## Usage

### Running the Script

To delete a user account, use the following command:

```
./user_management.sh -d
```

or

```
./user_management.sh --delete
```

### Steps

1. The script will prompt you to enter the username of the account to delete.
2. It will check if the username exists.
3. If the username exists, the account will be deleted.
4. A confirmation message will be displayed after deletion.

## Example

```
$ ./user_management.sh -d
Enter username to delete: testuser
User 'testuser' deleted successfully!
```

## Error Handling

- If the username does not exist, the script will display:
  ```
  Error: User 'testuser' does not exist!
  ```
- If the user does not have proper permissions, the script may require **sudo** privileges.

## Notes

- Deleting a user will remove their home directory and associated files.
- Ensure you have **sudo** privileges to execute this script.

## Conclusion

This script simplifies the user account deletion process while providing necessary validation to prevent errors.
