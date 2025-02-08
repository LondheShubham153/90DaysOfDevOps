This script helps you manage user accounts on a Linux system. It can:
 - Create a new user.
 - Delete an existing user.
 - Reset a user’s password.
 - List all users and their IDs.
 - Show help information.

Can run the script with different options (like -c, -d, -h, -l, -r) to perform these tasks.


**How Does It Work?**
  1. Help Menu (-h)
      If you don’t know how to use the script, just run: "./user_manager.sh -h"
    It will show:
      Usage: ./user_manager.sh [OPTION]
      Options:
      -c  Create a user
      -d  Delete a user
      -r  Reset a user's password
      -l  List all users
      -h  Show help


  2. Create a User (-c)
        When you run: "sudo ./user_manager.sh -c"
     It will:
     -   Ask you for a username (e.g., user1).
     -   Check if the username already exists:
     -   If it exists, it will tell you: "User 'user1' already exists."
     -   If it doesn’t exist, it will ask for a password.
     -   Create the user with the given username and password.
     -   Show: "User 'user1' created."

  3. Delete a User (-d)
        When you run: "sudo ./user_manager.sh -d"
     It will:
     -   Ask for the username of the account you want to delete (e.g., user1).
     -   Check if the username exists:
     -   If it doesn’t exist, it will tell you: "User 'user1' does not exist."
     -   If it exists, it will delete the user and their files.
     -   Show: "User 'user1' deleted."

  4. Reset a User’s Password (-r)
         When you run: "sudo ./user_manager.sh -r"

     It will:
      -  Ask for the username of the account whose password you want to reset (e.g., user1).
      -  Check if the username exists:
      -  If it doesn’t exist, it will tell you: "User 'user1' does not exist."
      -  If it exists, it will ask for the new password.
      -  Reset the password for that user.
      -  Show: "Password for 'user1' reset."

  5. List All Users (-l)
        When you run: "./user_manager.sh -l"

     It will display all users on your system and their IDs (UIDs). For example:
         root    0
         user1   1000
         user2   1001



**How Does Each Part Work?**


  Check Options:
   - The script uses a case statement to check which option (-c, -d, etc.) you provided and runs the corresponding function.
    
  Create User:
   - It uses the id command to check if the user already exists.
   - If not, it creates the user with useradd and sets their password using chpasswd.
    
  Delete User:
   - It checks if the user exists using id.
   - If they exist, it deletes them using userdel.
    
  Reset Password:
   - It checks if the user exists using id.
   - If they exist, it resets their password using chpasswd.
    
  List Users:
   - It reads /etc/passwd (a file that stores all system users) and extracts usernames and UIDs.
    
  Help Menu:
   - It simply prints instructions on how to use the script.



**How to Run This Script?**

  - Save this script as user_manager.sh.
  - Make it executable by running: "chmod +x user_manager.sh"

    
   Use one of these commands based on what you want to do:
    -  Create a user: sudo "./user_manager.sh -c"    
    -  Delete a user: sudo "./user_manager.sh -d"
    -  Reset a password: "sudo ./user_manager.sh -r"
    -  List users: "./user_manager.sh -l"
    -  Show help: "./user_manager.sh -h"

     




































     

