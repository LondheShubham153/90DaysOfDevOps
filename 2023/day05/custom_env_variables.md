# Utilizing Built-in Variables in Linux and Creating Your Own

## Description
The goal of this task is to demonstrate the usage of built-in variables in Linux and how to create your own persistent environment variable. Built-in variables are predefined variables provided by the Linux operating system that can be accessed directly without explicit declaration, making shell scripts more dynamic and efficient.

## Tasks to Complete

### Create a New Shell Script

1. Create a new shell script named "linux_variables.sh". This script will contain examples of using various built-in variables.

2. Use the "echo" command to display the values of the following built-in variables:
   a. `HOSTNAME`: Holds the name of the current host machine.
   b. `RANDOM`: Generates a random number each time it's accessed.
   c. `USER`: Contains the username of the current user running the script.

Example code for "linux_variables.sh":

```bash
#!/bin/bash

# Display the hostname
echo "Hostname: $HOSTNAME"

# Generate a random number
echo "Random number: $RANDOM"

# Display the username of the current user
echo "Current User: $USER"

# Add more important and handy built-in variables here:
# Example:
# echo "Current Working Directory: $PWD"
# echo "Home Directory: $HOME"
# echo "Operating System: $OSTYPE"
# echo "Current Date: $(date)"
# ... (add more as needed)

# Save this script and proceed to the next step.
```

### Creating Your Own Persistent Environment Variable

To create your own variable in Linux and make it persistent even after a system restart, you can set environment variables. Environment variables are available to all processes running in a Linux session, and you can define them at the system level to make them persistent.

1. Open the shell configuration file:
   The specific file you need to edit may depend on the shell you are using (e.g., Bash, Zsh, etc.). For Bash, you can edit the `~/.bashrc` file, and for Zsh, you can edit the `~/.zshrc` file.
   For example, to edit the `.bashrc` file, you can use a text editor like nano or vi:
   ```
   nano ~/.bashrc
   ```

2. Define your environment variable:
   Add the following line at the end of the file to create your custom variable. Replace `YOUR_VARIABLE_NAME` with the name of your variable and `your_variable_value` with the desired value:
   ```
   export YOUR_VARIABLE_NAME="your_variable_value"
   ```

3. Save and exit the text editor:
   For nano, press `Ctrl + X`, then `Y` to save the changes, and `Enter` to confirm.

4. Apply the changes:
   To apply the changes immediately without restarting your shell, you can run the following command in your current shell:
   ```
   source ~/.bashrc
   ```
   This command reloads the `.bashrc` file, making the newly defined environment variable available in your current session.

5. Verify the variable:
   To verify that your custom variable is set correctly, you can use the echo command:
   ```
   echo $YOUR_VARIABLE_NAME
   ```
   The output should display the value you assigned to the variable.

6. Persist the variable after restart:
   Now, your variable is set for the current session. To make it persistent even after a system restart, the changes you made to the `.bashrc` file (or equivalent) will take effect automatically for each new shell session you open in the future.

   **Note:** Environment variables are available to processes running in your user's context. If you need system-wide variables accessible to all users, you may want to define the variables in system-wide configuration files (e.g., `/etc/profile`, `/etc/environment`, etc.). However, modifying system-wide configuration files may require administrator privileges.
