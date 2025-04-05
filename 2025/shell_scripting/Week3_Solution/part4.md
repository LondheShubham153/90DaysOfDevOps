# List User Accounts Script

## Overview

This script provides a simple way to list all user accounts on a Linux system along with their corresponding User IDs (UIDs). It ensures a clear and structured output for easy reference.

## Features

- Lists all system users.
- Displays usernames along with their corresponding UIDs.

## Usage

### Running the Script

To list all user accounts, use the following command:

```
./user_management.sh -l
```

or

```
./user_management.sh --list
```

### Output

The script will display usernames along with their UIDs in a structured format.

## Example

```
$ ./user_management.sh -l
User Accounts:
root UID: 0
user1 UID: 1001
user2 UID: 1002
...
```

## Notes

- The script extracts user information from the `/etc/passwd` file.
- It filters out system service accounts to focus on actual users (if needed).

## Conclusion

This script provides an easy way to view all user accounts on a system, making it useful for system administrators and user management tasks.
