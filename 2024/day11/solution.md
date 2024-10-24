# Day 11 Answers: Error Handling in Shell Scripting

# Error handling is a crucial aspect of writing robust shell scripts. Below are the details for each task you will be covering today, including examples and explanations.

# Topics to Cover

# Understanding Exit Status: Each command returns an exit status, where 0 indicates success and any non-zero value indicates failure. You can capture the exit status using $? and handle it accordingly.

# Using if Statements for Error Checking: By using if statements, you can test the success or failure of each command and react appropriately.

# Using trap for Cleanup: The trap command allows you to clean up resources (like temporary files) or execute commands if the script exits unexpectedly.

# Redirecting Errors: You can redirect error messages using the standard error stream (2>), sending them to a file or /dev/null to suppress them.

# Creating Custom Error Messages: Custom error messages help provide context about the problem when errors occur, making debugging easier.

# Tasks

# Task 1: Checking Exit Status

# Objective: Write a script that tries to create a directory and checks if the command was successful. If it fails, print an error message.
```bash
#!/bin/bash
mkdir /tmp/mydir
if [ $? -ne 0 ]; then
  echo "Failed to create directory /tmp/mydir"
else
  echo "Directory /tmp/mydir created successfully."
fi
```

# Task 2: Using if Statements for Error Checking

# Objective: Extend the script to include more commands (e.g., creating a file inside the directory). Use if statements to check if each command is successful.

```bash
#!/bin/bash

# Attempt to create directory
mkdir /tmp/mydir
if [ $? -ne 0 ]; then
  echo "Failed to create directory /tmp/mydir"
  exit 1
fi

# Attempt to create a file inside the directory
touch /tmp/mydir/myfile.txt
if [ $? -ne 0 ]; then
  echo "Failed to create file /tmp/mydir/myfile.txt"
  exit 1
fi

echo "Directory and file created successfully."
```

# Task 3: Using trap for Cleanup

# Objective: Write a script that creates a temporary file and sets a trap to delete the file if the script exits unexpectedly.

```bash
#!/bin/bash

# Create a temporary file
tempfile=$(mktemp)

# Set a trap to clean up the temporary file on exit
trap "rm -f $tempfile" EXIT

# Write some data to the temporary file
echo "This is a temporary file." > $tempfile

# Display the contents of the temporary file
cat $tempfile

# Simulate an error (this will trigger the trap)
exit 1
```

# Task 4: Redirecting Errors

# Objective: Write a script that tries to read a non-existent file and redirects the error message to a file called error.log.

```bash
#!/bin/bash

# Attempt to read a non-existent file
cat non_existent_file.txt 2> error.log

# Check if the error log was written
if [ -s error.log ]; then
  echo "Error log created. Check error.log for details."
else
  echo "No errors encountered."
fi

```

# Task 5: Creating Custom Error Messages

# Objective: Modify one of the previous scripts to include custom error messages that provide more context about what went wrong.

```bash
#!/bin/bash

# Attempt to create a directory with a custom error message
mkdir /tmp/mydir
if [ $? -ne 0 ]; then
  echo "Error: Unable to create directory /tmp/mydir. Please check your permissions or if the directory already exists."
  exit 1
fi

# Attempt to create a file inside the directory
touch /tmp/mydir/myfile.txt
if [ $? -ne 0 ]; then
  echo "Error: Failed to create the file /tmp/mydir/myfile.txt. Please check if the directory is writable."
  exit 1
fi

echo "Directory and file created successfully."
```

# Summary of Key Concepts:

# Exit Status ($?): Use the exit status to check if a command succeeded or failed.

# if Statements: Control the flow of the script based on success/failure of commands.

# trap Command: Automatically clean up resources or handle unexpected exits.

# Error Redirection (2>): Redirect error messages to a file or suppress them.

# Custom Error Messages: Provide meaningful error feedback for better debugging.

# By completing these tasks, you'll gain a deeper understanding of error handling in shell scripting, helping you write more reliable and maintainable scripts

[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)
