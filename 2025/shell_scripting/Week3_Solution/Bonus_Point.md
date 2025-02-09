# Bonus Points (Optional)

If you want to enhance the functionality of the script, consider adding the following features:

- Display detailed information about user accounts (e.g., home directory, shell, groups, last login time, etc.).
- Allow modification of user account properties (e.g., username, user ID, home directory, shell, etc.).
- Implement logging for user management activities for better tracking and security.
- Add an option to disable or lock user accounts instead of deleting them.

Remember to handle errors effectively, provide clear user prompts, and add comments to explain the logic behind each part of the script.

## Example Interaction: User Account Management Script

```
$ ./user_management.sh -c
Enter new username: testuser
Enter password: ******
User 'testuser' created successfully!

$ ./user_management.sh -l
User Accounts:
root UID: 0
user1 UID: 1001
testuser UID: 1002
...

$ ./user_management.sh -d
Enter username to delete: testuser
User 'testuser' deleted successfully!
```

## Submission Instructions

Create a bash script named `user_management.sh` that implements the User Account Management functionalities as described in the challenge.

- Ensure the script adheres to the specified functionalities.
- Add comments within the script to explain its logic and structure.
- Test the script thoroughly to handle different scenarios gracefully, including error cases.
- Validate user input to avoid incorrect actions.

By following these guidelines, you ensure that the script is user-friendly, efficient, and robust.
