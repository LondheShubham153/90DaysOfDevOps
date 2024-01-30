
![shell snap](https://tse3.mm.bing.net/th?id=OIP.j1C_SC9aNWEu6t1bAQcGTgHaDm&pid=Api&P=0&h=220)











### Introduction: 

- In the world of DevOps, understanding Linux shell scripting is like having a superpower for automating tasks and managing systems. Let's explore the basics in simple terms to unlock the magic of shell scripting.


### Getting to Know Kernel and Shell

- The kernel is like the boss of an operating system. It controls everything, like how programs run and how they talk to the hardware.

- Now, think of the shell as your friendly assistant. It's the link between you (the user) and the boss (the kernel). You tell the shell what you want to do, and it makes sure the boss understands.


![kernel and shell](https://www.mvps.net/docs/wp-content/uploads/2019/04/shell.jpg)









### What is Linux Shell Scripting?

- Linux shell scripting is like writing down a set of instructions for your assistant (the shell) to follow. These instructions can do lots of things, like moving files around, running programs, and showing messages.


![Linux shell scripting](https://cdn.hashnode.com/res/hashnode/image/upload/v1679574608940/f61479dc-5c81-4fe5-a005-8766d0d22072.jpeg?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)











### Let's Dive into Tasks

1. Shell Scripting for DevOps: Shell scripting in DevOps is about making your assistant (the shell) do things automatically. It's like giving it a list of chores to do without having to ask every time.

2. Understanding #!/bin/bash: When you see "#!/bin/bash" at the top of a script, it tells your assistant (the shell) which language to use to understand your instructions. It's like speaking the same language.

3. Shell Script for 90DaysOfDevOps Challenge:

```shell
#!/bin/bash
echo "I will complete #90DaysOfDevOps challenge"
```


![90daysofdevops script snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706640028927/7f16cd85-70e7-49a4-8354-5f37dfbed0f2.png)



4. Shell Script for User Input and Arguments:

```shell
#!/bin/bash
# User Input
echo "Enter your name: "
read name
echo "Hello, $name!"

# Arguments Input
echo "First argument: $1"
echo "Second argument: $2"
```


![user input and argument snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706640181457/b3302bc2-0cf4-4db1-8230-b1f8d2ef1895.png)





5. Illustrating If-Else in Shell Scripting:

```shell
#!/bin/bash
# Comparing Two Numbers
num1=5
num2=10

if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]; then
    echo "$num1 is less than $num2"
else
    echo "Both numbers are equal"
fi
```




![If else snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706640284952/d44724ab-717a-464d-be2e-bfde5066919e.png)






### Conclusion:

- In short, getting the hang of basic Linux shell scripting is like empowering your trusty helper (the shell) to work smarter, not harder. It's like having a reliable sidekick in your DevOps adventures, making tasks feel effortless!



##### For further insights, please visit my Hashnode blog: [Link to my Hashnode blog](https://supriyasurkar.hashnode.dev/day-4-task-basic-linux-shell-scripting-for-devops-engineers)
