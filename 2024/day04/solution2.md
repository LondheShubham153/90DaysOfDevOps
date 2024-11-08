Day 4 of #90DaysOfDevOps: Exploring Shell Scripting

On Day 4 of my DevOps journey, I explored Shell Scripting, a powerful skill in DevOps that can help automate and streamline repetitive tasks.

What is Shell Scripting in DevOps?

Shell scripting is a way to write a series of commands in a file, called a "script," that can be executed by a shell (like Bash) in Linux. For DevOps, shell scripts can be used for tasks like automating server configurations, deploying applications, managing file backups, and monitoring logs. Instead of manually running each command, a script allows you to automate processes, making them faster and less prone to errors.

Example: 

Imagine needing to check the disk usage of a server every day. Instead of typing df -h manually, you could write a script that runs this command and emails the result daily. This small automation can save time and ensure regular checks.

What is #!/bin/bash?

The line #!/bin/bash is called a "shebang." It tells the system which interpreter to use to execute the script. Here, /bin/bash specifies the Bash shell, a popular shell interpreter.

You can also write #!/bin/sh, which uses the sh shell (a more basic shell). While sh can run many scripts, Bash is often preferred because it offers more features. Choosing between #!/bin/bash and #!/bin/sh depends on your script’s needs, but using bash can be beneficial for DevOps tasks because it provides extra functionality.

Shell Script Example 1: Printing a Simple Message

This script outputs a motivational message for my challenge:

bash

#!/bin/bash
echo "I will complete #90DaysOfDevOps challenge"
When you run this script, it will print: 

I will complete #90DaysOfDevOps challenge

Shell Script Example 2: Taking User Input and Arguments

Shell scripts can handle inputs directly from the user or through arguments in the command line. Here’s a script that does both:

bash

#!/bin/bash
# Taking user input
echo "Enter your name:"
read name

# Taking input from arguments
arg1=$1
arg2=$2

# Displaying the variables
echo "Hello, $name!"
echo "You entered argument 1: $arg1"
echo "You entered argument 2: $arg2"
How to Run: 

To run this script with arguments, use: 

bash

bash script.sh "First Argument" "Second Argument"


Example of an If-Else Statement in Shell Scripting

In shell scripting, if statements let you execute certain commands based on conditions, which is useful for tasks that depend on specific outcomes.

Here’s an example script comparing two numbers:

bash

#!/bin/bash
num1=10
num2=20

if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is less than or equal to $num2"
fi
This script checks if num1 is greater than num2 and prints the appropriate message based on the result.

Final Thoughts

Shell scripting is a core DevOps skill, and I’m excited to keep exploring its potential. These foundational scripts may be simple, but they demonstrate how automation can streamline workflows, saving time and effort. Looking forward to applying these skills in real-world DevOps tasks!
