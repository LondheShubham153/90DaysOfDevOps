# Day 4 Task: Basic Linux Shell Scripting for DevOps Engineers.

 ## What is Kernel

 The kernel is a computer program that is the core of a computer’s operating system, with complete control over everything in the system.
 
 ## What is Shell

 A shell is special user program which provide an interface to user to use operating system services. Shell accept human readable commands from user and convert them into something which kernel can understand. It is a command language interpreter that execute commands read from input devices such as keyboards or from files. The shell gets started when the user logs in or start the terminal.
 
 ## What is Linux Shell Scripting?

 A shell script is a computer program designed to be run by a linux shell, a command-line interpreter. The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text.

 **Tasks**

 - Explain in your own words and examples, what is Shell Scripting for DevOps.
   Ans = A shell script is a computer program designed to be run by the Unix shell, a command-line interpreter.
 - What is `#!/bin/bash?` can we write `#!/bin/sh` as well?
   Ans = bash is the default shell for most Linux distributions, and /bin/sh is normally some sort of link to bash on a Linux system
 - Write a Shell Script which prints `I will complete #90DaysOofDevOps challenge`
   Ans = 1.create an empty file : $ touch devops.sh
         2. open the file : $ vi devops.sh
         3. write content in this file :  #!/bin/sh
                                          echo "#90DaysOfDevOps"
            (#!/bin/sh  is the path of the system shell)                              
         4.Give permission to execute the script :$ chmod +x devops.sh
         (chmod to make file executable)
         6. Run this file :$ ./devops.sh                                  
 - Write a Shell Script to take user input, input from arguments and print the variables.
   Ans = $ cat devops.sh
         #!usr/bin/env bash
          read name
          echo "Hello, $name"
 - Write an Example of If else in Shell Scripting by comparing 2 numbers
   Ans = #!/bin/bash
         a=2
         b=7
         if [ $a -ge $b ]
         then
         echo "The variable 'a' is greater than the variable 'b'."
         else
         echo "The variable 'b' is greater than the variable 'a'."
         fi
      o/p:The variable 'b' is greater than the variable 'a'.   

 Was it difficult?
 
 - Post about it on LinkedIn and Let me know :)

 Article Reference: [Click here to read basic Linux Shell Scripting](https://devopscube.com/linux-shell-scripting-for-devops/)

 YouTube Vedio: [EASIEST Shell Scripting Tutorial for DevOps Engineers](https://www.youtube.com/watch?v=_-D6gkRj7xc&list=PLlfy9GnSVerQr-Se9JRE_tZJk3OUoHCkh&index=3)
