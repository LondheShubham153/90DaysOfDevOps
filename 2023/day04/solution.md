
![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684675860779/826140cd-3c88-4c85-a2ab-70b6754cf122.webp)

## What is Kernel

The kernel is the heart of the operating system. The term kernel often refers to the operating system. The critical code of the kernel is stored in a special memory area to protect it from other programs. It is a vital component as it is the basis for the proper functioning of the entire system. The kernel performs a variety of tasks including process management, managing hardware devices and handling interrupts.

## What is Shell

A shell is a special user program which provides an interface for the user to use operating system services. Shell accepts human-readable commands from a user and converts them into something the kernel can understand. It is a command language interpreter that executes commands read from input devices such as keyboards or from files. The shell gets started when the user logs in or start the terminal.

The main difference between kernel and shell is that the **kernel is the core of the operating system that controls all the tasks of the system while the shell is the interface that allows the users to communicate with the kernel.**

## What is Linux Shell Scripting?

A shell script is a computer program designed to be run by a Linux shell, a command-line interpreter. The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text.

## What is `#!/bin/bash?` can we write `#!/bin/sh` as well?

`#!/bin/bash or #!/bin/sh` is known as ‘**she-bang**‘(**shabang**)

This derives from the concatenation of the tokens *sharp* (#) and *bang* (!). It is also called as sh-bang, **hashbang**, **poundbang** or **hash-pling**. In computing, a she-bang is the character sequence consisting of the characters number sign and exclamation mark (#!) at the beginning of a script.

```bash
#!/bin/bash
echo "I will complete #90DaysOofDevOps challenge" > ~/output.txt
```

### Write a Shell Script to take user input, input from arguments and print the variables.

```bash
#!/bin/bash
# Ask the user for their name
echo "Hello, who am I talking to?"
read varname
echo "It\'s nice to meet you $varname"
```

### Write an Example of If else in Shell Scripting by comparing 2 numbers

```bash
#!/bin/bash
# Script to do numeric comparisons
var1=10
var2=20
if [ $var2 -gt $var1 ]
    then
        echo "$var2 is greater than $var1"
fi
# Second comparison
If [ $var1 -gt 30]
    then
        echo "$var is greater than 30"
    else
        echo "$var1 is less than 30"
fi
```

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)