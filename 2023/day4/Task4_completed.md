### Tasks

### Explain in your own words and examples, what is Shell Scripting for DevOps.
### Ans:- 
         Shell scripting is a program written by user which is designed to run by a linux shell. 
         It is used in devops to automate daily tasks. 
 
 
 
 
### What is `#!/bin/bash?` can we write `#!/bin/sh` as well?
### Ans:- 
         #!/bin/bash is a shebang line or we write this line to tell kernel that we are using bash shell. Yes, we can write #!/bin/sh.
 
 
 
 
### Write a Shell Script which prints `I will complete #90DaysOofDevOps challenge`
### Ans:- 
         #!/bin/bash
         echo " I will complete #90DaysOfDevOps challenge";
         
         
         
         
### Write a Shell Script to take user input, input from arguments and print the variables.
### Ans:-  
         #!/bin/bash
           echo "The number your passed throught arguments are : $1 and $2"
         Note: you have to pass argument while executing script.
       
       
       
       
### Write an Example of If else in Shell Scripting by comparing 2 numbers
### Ans:- 
         #!/bin/sh
           echo " Enter number1:"
           read Num1;
           echo " Enter number2"
           read Num2;

          if [ "$Num1" -gt "$Num2" ]
           then
             echo "$Num1 is greater than $Num2"
           else
             echo "$Num2 is greater than $Num1"
         fi
