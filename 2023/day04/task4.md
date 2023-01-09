1).Explain in your own words and examples, what is Shell Scripting for DevOps.
-- Shell scripting is basically writing down command to perform acordingingly as per need, for example engineer wants to perform addition of two numbers before writing a file he can prdouce a certain script that first will add two numbers and then generate this file with this content such example requires scripting of commands in shell.

2). What is #!/bin/bash? can we write #!/bin/sh as well?
-- It is nothing else but a syntax to give that the commands below are bash script commands, yes we can write
#!/bin/sh as well for the cammands that require shell script instead of bash scripts

3). Write a Shell Script which prints I will complete #90DaysOofDevOps challenge
-- #!/bin/bash
echo "I will complete #90DaysOofDevOps challenge"

4). Write a Shell Script to take user input, input from arguments and print the variables.
-- #!/bin/bash
name=string ///defining variables
echo " ${name} has accepted 90DaysofDevOps challange // in this name will take value from user first and then print it

5). Write an Example of If else in Shell Scripting by comparing 2 numbers
-- #!/bin/bash
a=100
b=200
if [a -gt b]
then
echo "a is greatest "
else
echo "b is greatest"
fi

