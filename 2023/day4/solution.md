
## What is Shell Scripting for DevOps.
 
 Shell scripting is a way to automate tasks in a shell environment (e.g., bash). It involves writing scripts, which are essentially a series of commands that are executed in order. These scripts can be used to automate a wide variety of tasks, such as deploying software, building and testing applications, and managing systems. In the context of DevOps, shell scripting is often used to automate tasks related to continuous integration, continuous delivery, and infrastructure management.
 
 
 ## What is #!/bin/bash? can we write #!/bin/sh as well?
 
 #!/bin/bash is a shebang that tells the operating system to use the bash shell to interpret and execute the commands in a script.

Yes, you can also write #!/bin/sh as the shebang to use the Bourne shell to interpret and execute the commands in a script.



## Write a Shell Script which prints I will complete #90DaysOofDevOps challenge

```plaintext
#!/bin/bash

echo "I will complete #90DaysOofDevOps challenge"
```

![4 1](https://user-images.githubusercontent.com/76457594/210493628-508b9912-76cf-4023-96fa-325f9fd2474d.png)

![4 2](https://user-images.githubusercontent.com/76457594/210493627-6a43f061-cf4d-4b37-a510-3ab7beddf2a0.png)


## Write a Shell Script to take user input, input from arguments and print the variables.
```plaintext
#!/bin/bash

Take user input
echo "Enter your name: "
read name

Input from arguments
echo "Enter your age: "
read age

Print the variables
echo "Your name is $name and your age is $age."
```

![3 4](https://user-images.githubusercontent.com/76457594/210495815-ff44b01a-d5aa-4fc5-92e7-e56444404265.png)
![4 6](https://user-images.githubusercontent.com/76457594/210495429-5a6ae140-1c19-4d97-8dd5-742fe21a56d8.png)




## Write an Example of If else in Shell Scripting by comparing 2 numbers?

```plaintext
#!/bin/bash

Assign values to variables
num1=6
num2=30

Compare the values of the variables
if [ $num1 -gt $num2 ]
then
echo "$num1 is greater than $num2"
else
echo "$num1 is less than $num2"
fi
```

![4 8](https://user-images.githubusercontent.com/76457594/210496930-a47dad47-e19d-4a72-82ac-84f0c52d0eaf.png)
![4 66](https://user-images.githubusercontent.com/76457594/210496887-c586ea38-efe7-4491-a7fd-26555b166784.png)





