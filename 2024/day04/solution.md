
# Day 4 Answers: Basic Linux Shell Scripting for DevOps Engineers

Task 1: Explain in your own words and with examples what Shell Scripting means for DevOps.
- 'Shell scripting in DevOps is like giving the computer a list of instructions to automate repetitive tasks. Instead of manually typing commands every time, we write a script (a small program) to handle the work for us.

Why is it Important in DevOps?

In DevOps, automation is key. DevOps engineers use shell scripts to:
  Automate deployments (e.g., push new code to servers).
  Manage servers (e.g., restart services or clean up logs).
  Monitor systems (e.g., check if a server is running smoothly).

Shell scripting helps in automating these daily operations, saving time, and reducing human errors.

  Simple Company Example

  Imagine you're working in a company that hosts a web app, and every day the following tasks need to be done:

    Check if the web server is running.
    Clean up old log files to free up space.
    Take a backup of the database.

  Now, instead of doing these tasks manually every day, we can create a shell script that runs these commands automatically!'


Task 2: What is `#!/bin/bash`? Can we write `#!/bin/sh` as well?

The line #!/bin/bash (or #!/bin/sh) at the beginning of a script is known as a shebang. It tells the operating system which interpreter to use to execute the script. Here’s a simple breakdown, along with an example relevant to a company context:

What is #!/bin/bash?

Purpose: This line indicates that the script should be run using the Bash shell. Bash is a common shell used for scripting on Unix-like operating systems.

Location: The path /bin/bash specifies where the Bash interpreter is located on the system.

What about #!/bin/sh?

Purpose: Similarly, #!/bin/sh indicates that the script should be executed using the sh shell (often referred to as the Bourne shell). This is a more minimal shell and often has fewer features than Bash.

Usage: Using #!/bin/sh is sometimes preferred for compatibility, especially if the script is simple and doesn’t require Bash-specific features.

Task 3: Write a Shell Script that prints `I will complete #90DaysOfDevOps challenge`.

![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day04/image/task3.png)

Task 4: Write a Shell Script that takes user input, input from arguments, and prints the variables.

![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day04/image/task4.png)
![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day04/image/task4.1.png)

Task 5: Provide an example of an If-Else statement in Shell Scripting by comparing two numbers.

![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day04/image/task5.png)
![image](https://github.com/Faizan2727/90DaysOfDevOps/blob/master/2024/day04/image/task5.1.png)
