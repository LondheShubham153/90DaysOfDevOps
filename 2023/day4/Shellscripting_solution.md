Hi there..

Today i learned about shell scripting.Below is my learning along with resources refered and solutions for tasks.

First thing first,
## what is shell scripting ? why we need these ? where we will use this

- Shell is a macro processor which allows for an interactive or non-interactive command execution.
- (or) The shell can be defined as a command interpreter within an operating system like Linux/GNU or Unix
- shell allows you by use of commands to interact with your computer, hence retrieve or store data, process information and various other simple or even extremely complex tasks.
- the shell, which acts as the user interface, interpreting user commands and starting applications
**Scripting**

- Scripting allows for an automatic commands execution that would otherwise be executed interactively one-by-one.

Now, let's solve today's tasks<br>
**1. what is #/bin/bash ? can we write #!/bin/sh as well ?**

There are [different types of shells](https://www.digitalocean.com/community/tutorials/different-types-of-shells-in-linux) in linux.Each of these shells has properties that make them highly efficient for a specific type of use over other shells.
some of them are bash (Bourne again shell), bourne shell(sh),cshell(csh),kornshell(kshell) etc.
- Adding #!/bin/bash as the first line of your script, tells the OS to invoke the specified shell to execute the commands that follow in the script. #! is often referred to as a "hash-bang", "she-bang" or "sha-bang".
- #!/bin/sh: It is used to execute the file using sh, which is a Bourne shell, or a compatible shell
- we can find out which shell we are using in our system by giving a command `$ which shell`

**Write a Shell Script which prints I will complete #90DaysOofDevOps challenge**
![image](https://user-images.githubusercontent.com/89054489/210556660-4ac70d5b-3774-4472-8ba4-1741830044bc.png)

**Write a Shell Script to take user input, input from arguments and print the variables.**
![image](https://user-images.githubusercontent.com/89054489/210556460-d53eca4c-41ed-4c92-acef-044cd7eee4ac.png)

**Write an Example of If else in Shell Scripting by comparing 2 numbers**

![image](https://user-images.githubusercontent.com/89054489/210556246-c8601dd8-6218-4784-95f6-b5a6cf1796ac.png)

![image](https://user-images.githubusercontent.com/89054489/210556151-3815f751-86c5-4299-9094-8dbc722003af.png)

**Topics to be learned in shell scripting as a DevOps Engineer**

 - History and usage of shell script ?
- Variables
- Passing Arguments to the Script
- Arrays
- Basic Operators
- Basic String Operations
- Decision Making
- Loops
- Shell Functions
- Bash trap command
- File Testing
- Input Parameter Parsing
- Pipelines
- Process Substitution
- Regular Expressions
- Special Commands sed,awk,grep,sort


[Interactive Learning source](https://www.learnshell.org/)

[youtube videos](https://youtu.be/39oyFIStuaI)

[Indetail Explanation source](https://www.gnu.org/software/bash/manual/html_node/) 
