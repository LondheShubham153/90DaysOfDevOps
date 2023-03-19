# Day 4 Task: Basic Linux Shell Scripting for DevOps Engineers.

 ## What is Kernel

 The kernel is a computer program that is the core of a computer’s operating system, with complete control over everything in the system.
 
 ## What is Shell

 A shell is special user program which provide an interface to user to use operating system services. Shell accept human readable commands from user and convert them into something which kernel can understand. It is a command language interpreter that execute commands read from input devices such as keyboards or from files. The shell gets started when the user logs in or start the terminal.
 
 ## What is Linux Shell Scripting?

 A shell script is a computer program designed to be run by a linux shell, a command-line interpreter. The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text.

 **Tasks**

 - Explain in your own words and examples, what is Shell Scripting for DevOps.
      scripts are small piece of code  mostly used for automation in DevOps.
 - What is `#!/bin/bash?` can we write `#!/bin/sh` as well?
      bash and sh are two different shells. Basically bash is sh, with more features and better syntax.So yes , we can use both.         
 - Write a Shell Script which prints `I will complete #90DaysOofDevOps challenge`
      #!/bin/bash
      echo "I will complete #90DaysOofDevOps challenge"
      
 - Write a Shell Script to take user input, input from arguments and print the variables.
         
       #!/bin/bash
       name=damini
       #defining variables
       echo " ${name} has accepted 90DaysofDevOps challenge"
       #user argument
       echo " I completed $1 tasks "
       #$1 takes the 1st argument
       #save this file and run with arguments.
 
 - Write an Example of If else in Shell Scripting by comparing 2 numbers
      
       #!/bin/bash
       if [2 -gt 7]
       then
        echo "2 is greater than 7"
       else
        echo "2 is not greater than 7"
       fi

 Was it difficult?
       
       No


 Article Reference: [Click here to read basic Linux Shell Scripting](https://devopscube.com/linux-shell-scripting-for-devops/)

 YouTube Vedio: [EASIEST Shell Scripting Tutorial for DevOps Engineers](https://www.youtube.com/watch?v=_-D6gkRj7xc&list=PLlfy9GnSVerQr-Se9JRE_tZJk3OUoHCkh&index=3)
