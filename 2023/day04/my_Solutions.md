- Kernel  
``It is a program whose major aim is to manage communication between software i.e. user-level applications and hardware i.e., CPU and disk memory``  
- Shell  
``A shell is special user program which provide an interface to user to use operating system services. Shell accept human readable commands from user and convert them into something which kernel can understand. It is a command language interpreter that execute commands read from input devices such as keyboards or from files. The shell gets started when the user logs in or start the terminal/command prompt.``  

## Tasks

- Explain in your own words and examples, what is Shell Scripting for DevOps.  
``Shell scripting is a form of programming done to be run on shells, in order to resolve problems related to business need/ infrastructure. Be it data manipulation, interacting across applications and easing on the repititive tasks by using scripts. Shell script can be done by creating .sh scripts or through python scripts.``
- What is #!/bin/bash? can we write #!/bin/sh as well?    
``Before you add anything else to your script, you need to alert the system that a shell script is being started. This is done using the shebang construct. For example −  #!/bin/sh -> It tells the ahead commands are going to be run in bourne shell 
#!/bin/bash -> It tells the ahead commands are going to be run in bash shell``
- Write a Shell Script which prints I will complete #90DaysOofDevOps challenge.  
``` 
#!/usr/bin/bash

echo " I will complete #90DaysOofDevOps challenge" 
```
- Write a Shell Script to take user input, input from arguments and print the variables.  
``` 
#!/usr/bin/bash
echo "Please input the data which you want to print"
read user_input
echo "You have inputed : $user_input" 
```
- Write an Example of If else in Shell Scripting by comparing 2 numbers  
``` 
#!/usr/bin/bash

if [ $1 -gt $2 ]
then
        echo "Hor bai, $1 vadda aa $2 naalo"
elif [ $1 = $2 ]
then
        echo "bai $1 barabr aa $2 de"
else
        echo "jada ni kr reha bai, $1 chota aa $2 naalo"
fi
```

Links : For Shebangs : https://www.tutorialspoint.com/unix/unix-what-is-shell.htm#  
        For if-else : https://www.geeksforgeeks.org/bash-scripting-else-if-statement/
