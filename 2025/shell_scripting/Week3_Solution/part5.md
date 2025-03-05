# Help and Usage Information Script

## Overview

This script provides help and usage information for the **User Management Script**. It lists all available command-line options and their descriptions to ensure users can easily understand and use the script.

## Features

- Displays usage instructions.
- Lists all available command-line options with descriptions.
- Helps users navigate the script efficiently.

## Usage

### Running the Script

To view the help information, use the following command:

```bash
./user_management.sh -h
```

or

```bash
./user_management.sh --help
```

## Terminal Output

When you run the command, the following output appears in the terminal:

```bash
$ ./user_management.sh -h
User Account Management Script
Usage: ./user_management.sh [OPTION]

Options:
  -c, --create     Create a new user account
  -d, --delete     Delete an existing user account
  -r, --reset      Reset password for a user account
  -l, --list       List all system user accounts with UID
  -h, --help       Display this help message
```

## Notes

- If no option is provided, the script will default to displaying the help menu.
- Users should have **sudo** privileges for account management actions.
- Running the script without parameters ensures new users can understand available options without confusion.

## Conclusion

This help function ensures that users can quickly understand and use the script effectively by providing clear instructions on available commands.

For any modifications or additional features, update the script accordingly to improve usability.
