![Mostly Used Commands in DevOps](https://ik.imagekit.io/w8aolfcwcnd/tw/linux-for-devops_DN-TsSDzQ4.jpg?updatedAt=1630756970316)
**Linux for DevOps**:

1. **Ls:** This command is used to list the contents of a directory.
    

if you run ls -l, it will show the permissions, owner, size, and last modified date for each file in the directory.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQGTL5O_9PEBYw/article-inline_image-shrink_1500_2232/0/1671202835340?e=1689811200&v=beta&t=Lx9mqZhUpWdm8YW2eGqOTx1bkbhrPM3kXDTMD26Mljg)

2\. **Sudo:** This command executes only that command with superuser privileges.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQF-KxTDXUC6OA/article-inline_image-shrink_1500_2232/0/1671202870928?e=1689811200&v=beta&t=WzkZ_Zsz6AKmpqTtjns_O-gmK1oUXwzM6Ghnl0FVZVQ)

3\. **Pwd:** This command will print your directory location, where you currently working.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQFiuclw1Oelng/article-inline_image-shrink_1500_2232/0/1671202938046?e=1689811200&v=beta&t=0O70eV7BqFaykjA7iOinctMdBFkt0ZjvxsqUBQFmp6s)

4\. **Cat:** This is used to concatenate and display files on the terminal. It can also be used to modify existing ones.

***cat -b:*** This adds line numbers to non-blank lines

***cat -n:*** This adds line numbers to all lines

***cat -s:*** This squeezes blank lines into one line

***cat –E:*** This shows $ at the end of the line

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQFX2ZTvZDGfUw/article-inline_image-shrink_1500_2232/0/1671203017878?e=1689811200&v=beta&t=hyNGRX1hNcY4ibw2upwJzG0OnJMUFx1b_TBLHsQ4-SY )

5\. **Vim:** This is a text editor used in Linux. It stands for “Vi Improved”.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQHFszYQzynT2g/article-inline_image-shrink_1500_2232/0/1671203035027?e=1689811200&v=beta&t=KdnmPzzaCdUPAyzLzv8P1RmuvEJak57ssOm5Ud6jJKo)

Mostly used modes in VIM:

* **Normal mode:** This is the default mode in which vim starts. In normal mode, you can use various commands to navigate and edit the text.
    
* **Insert mode:** In insert mode, you can type text into the file. To enter insert mode, press the "i" key. To exit insert mode and return to normal mode, press the "Esc" key.
    
* **Command mode:** In command mode, you can enter commands to perform various actions, such as saving the file or quitting vim. To enter command mode, press the ":" key.
    

6\. **Grep:** This command searches for a particular string/ word in a text file. This is similar to “Ctrl+F” but executed via a CLI.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQHxKcfcfhRX8w/article-inline_image-shrink_1500_2232/0/1671203095927?e=1689811200&v=beta&t=98ihvG_hTAhlSqd_V1Qnab4mM9oszVuSa23kJB6w6Hg)

This would print all of the lines in “chxtan.txt” that contain the word “This".

7\. **Sort:** This command is used to sort the results of search either alphabetically or numerically. It also sorts files and directories.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQEgu6Paz3GTgg/article-inline_image-shrink_1500_2232/0/1671203130514?e=1689811200&v=beta&t=xnHAol5vsQaJ3_F8Gw8InNUtQ_cyIH3Zn8QbC9BPg6A)

***sort -r:*** the flag returns the results in reverse order.

***sort -f:*** the flag does case-insensitive sorting.

***sort -n:*** the flag returns the results as per numerical order.

8\. **Tail:** This command prints the last N number of data of the given input. By default, it prints 10 lines.

We can specify the number of lines, that we want to display.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQGt--B3XF0wWw/article-inline_image-shrink_1500_2232/0/1671203289035?e=1689811200&v=beta&t=Faa5N6qAkECX58-57TBBydoO0rN5TVprQwwCF16FoQY)

9\. **Chmod:** This command is used to change the access permissions of files and directories.

For example: Following “chmod” command will give the user permission to read, write and execute a file.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQGgkewPOw1J0A/article-inline_image-shrink_1500_2232/0/1671203318642?e=1689811200&v=beta&t=iWGHnpbPqFKsO5bTjSwQp8bNlGZxs52kuVMjqrUemLo)

10\. **Chown:** This command is used to change the file Owner or group.

Here, below the ownership of “Chetan.txt” file got changed to root.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQEDmIFgXtDBKQ/article-inline_image-shrink_1500_2232/0/1671203381032?e=1689811200&v=beta&t=iVZu-Yx3N9TWrSbgGH6oyrxqhKI40HT_ca_5TY4uVPQ)

11. **Ping –** This command will ping a host and check if it is responding.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQEZ_lUIhwl8Ug/article-inline_image-shrink_1500_2232/0/1671203452523?e=1689811200&v=beta&t=9nwdDXtoegHu3U46W6NkVnq8a7EOPnanBL4w6la8fQI)

12\. **Lsof:** It is used to display a list of all the open files on a Linux system.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQE65C8RqbghBA/article-inline_image-shrink_1500_2232/0/1671203483627?e=1689811200&v=beta&t=2RyzkRLMQAZZVuyfdoOYmpUHWM7qLajWLJfyNFV5kIc)

13\. **Ifconfig:** This is used to configure the kernel-resident network interfaces.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQFggVBJPRLZtw/article-inline_image-shrink_1500_2232/0/1671203498025?e=1689811200&v=beta&t=6_hV9XlsFP9ipzA5bE6cHKrFJ8-4jMjkZr39cx54q7o)

14. **ID:** This is used to find out user and group names and numeric ID’s (UID or group ID) of the current user or any other user in the server.

**Syntax:** id &lt;option&gt; &lt;user\_name&gt;

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQHsEEm2IfzJ0A/article-inline_image-shrink_1500_2232/0/1671203511023?e=1689811200&v=beta&t=GG95ful-qaQgmhmtEbsTOwoLpO7SzeY8228bcrEDiIU)

15\. **Cut:** This command is used to extract specific fields or columns from a file or standard input.

It is often combined with other commands, such as sort, uniq, and grep, to perform more complex text-processing tasks.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQE6JdWuD96fTg/article-inline_image-shrink_1500_2232/0/1671203536370?e=1689811200&v=beta&t=Aumo7MlfL1XR0mlZ4gLew0U2B45BgEkIEVgyWV1oYmQ)

16\. **Sed:** This is used to perform basic text transformations on an input file. It stands for "stream editor" and is a powerful tool for editing text files or streams in a Linux environment.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQGo9fGYfS0BQg/article-inline_image-shrink_1500_2232/0/1671203751390?e=1689811200&v=beta&t=ezvpyu47YkfuRQJjXYnFRe7rs-6IX_4hCj7pRe7ZHHA)

17\. **Diff:** This command is used to find the difference between two files.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQGeKt-V-HyJ-A/article-inline_image-shrink_1500_2232/0/1671203799716?e=1689811200&v=beta&t=ai7EmBDLr-hR1kG2IhY39G1ZTPqykSKN0RIEa-uTwSk)

18\. **History:** This command is used to view the previously executed command.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQEipXYqdH79aQ/article-inline_image-shrink_1500_2232/0/1671203863792?e=1689811200&v=beta&t=9kf5mZ5huMRjYtaAiTztkvPysVgvpJw5AsXbwMtSGL8)

“History 10” – Will give you the last 10 executed commands.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQEXfc2bMxhF9g/article-inline_image-shrink_1500_2232/0/1671203841111?e=1689811200&v=beta&t=kgz6J42ksALfomkntZQnOOaTNJaqzVaOVWzTz0yJ74k)

19\. **Find:** This is used to find files and directories and perform subsequent operations on them. 

In the below command, It will search in the present working directory and its subdirectories, and print the name of the file that have “.txt” file extension.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQG0_RIf217sHA/article-inline_image-shrink_1500_2232/0/1671203978450?e=1689811200&v=beta&t=JLi28Pcg9ZfV5ztMW56C4yok6KMXLE_neMlqRTqPdns)

20\. **Free:** This command displays the total amount of free space available along with the amount of memory used and swap memory in the system, and also the buffers used by the kernel.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQHav8Cm-4iOYw/article-inline_image-shrink_1500_2232/0/1671204031678?e=1689811200&v=beta&t=Pg9a6sEbswWSO-9Ii1__MmH9QdpmIZIjSiGxjjcEJ7k)

21\. **ssh user@host –** connect to the host as a user.

22\. **Ssh-keygen:** This command is used to generate a public/private authentication key pair.

This process of authentication allows the user to connect remote server without providing a password.

(This authentication method we will use to authenticate the server with Jenkins while deploying CI/CD pipelines).

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQHlV8crlNw2Zw/article-inline_image-shrink_1500_2232/0/1671205801638?e=1689811200&v=beta&t=Q35-FVD4BNksHjrIhDznEx94hmsUUlCG5t8n5snL0DY)

23\. **Nslookup:** This stands for “Name server Lookup”. This is a tool for checking DNS hostname to Ip or Ip to Hostname. This is very helpful while troubleshooting.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQHbQ5z5_2SVDQ/article-inline_image-shrink_1500_2232/0/1671205820503?e=1689811200&v=beta&t=G6sdbPeWqhFrN-9kYeG6xxaYiANKxClf9gsjyOPus2M)

24\. **Curl:** Curl is a tool used for transferring data to or from a server, using various protocols, such as HTTP, HTTPS, FTP, and more. Basic example:

**Syntax:** curl &lt;url&gt;

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQEQYksUtrAH2w/article-inline_image-shrink_1500_2232/0/1671205856271?e=1689811200&v=beta&t=sp9l4IEM5RUhT9Y_TpTgb4SsUP_8rmLP0QxVQiuDVgE)

 **-o:** It will save downloaded file on the local machine with the name provided in parameters.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQFX0jcVzHWJNg/article-inline_image-shrink_1500_2232/0/1671205883567?e=1689811200&v=beta&t=NvJ2SuA7arHJjYOZG62OxU21F-FhDN3kEtPb0MxdE18)

25\. **Tr: Tr** stands for translation. This command is for translating or deleting characters. 

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQH-P1oRcfhllA/article-inline_image-shrink_1500_2232/0/1671205911156?e=1689811200&v=beta&t=H_UpNfJ84VMdcFm90cwPwJJrHrI0rbLiN1S_5Har5tM)

26\. **Apt-get:** This command is used to install, update, and remove packages, as well as to manage the package repository sources.

Here are some common apt-get commands:

* apt-get update: This updates the package index files from the package repositories listed in the /etc/apt/sources.list file. This is usually the first command you should run after adding a new repository or package to your system.
    
* apt-get upgrade: This installs newer versions of packages that are already installed on the system. It will also remove any packages that are no longer required.
    
* apt-get install: This installs one or more packages. For example, to install the nano text editor, you would run apt-get install nano.
    
* apt-get remove: This removes one or more packages, but it does not remove the configuration files for the package.
    
* apt-get purge: This removes one or more packages and their configuration files.
    
* apt-get autoremove: This removes packages that were installed as dependencies but are no longer needed.
    

27\. **Df, du:**

Df (disk free) command will have an account of available disk space, used by file system.

Du (disk usage) command reports the size of directory tree including all the content.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQFxznwXiml6Sw/article-inline_image-shrink_1500_2232/0/1671206007845?e=1689811200&v=beta&t=80OacC5j3Dt-Lyqf9DxUTj5RDU5haMsn2kf8O7Awn_4)

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQGSGJyNklXrwg/article-inline_image-shrink_1500_2232/0/1671206017239?e=1689811200&v=beta&t=FjrrwLNMbTITJkmmZ2G7DVye1cM6P3W01KH9F5cU3uw)

28\. **Htop:** This command is used to monitor the system’s resources and processes that are running in real time.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQHjNeyy4If5ow/article-inline_image-shrink_1500_2232/0/1671206041031?e=1689811200&v=beta&t=F9PS_wFSIwAmg7Yj6_4yHnj5hCojGyuEJeoWSZBJkBg)

29\. **Ps:** We use ps command to check the unique id behind every process.

* **a** = show processes for all users
    
* **u** = display the process’s user/owner
    
* **x** = also show processes not attached to a terminal
    

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQEoqdd491CP0Q/article-inline_image-shrink_1500_2232/0/1671206093832?e=1689811200&v=beta&t=CFhiW_mBM1qewdIFG-Y6AScI24ovSQk3GzZh8valIKQ)

30\. **Kill:** This command is used to terminate processes manually. This command basically, will send a signal that terminates it.

![No alt text provided for this image](https://media.licdn.com/dms/image/D4E12AQFK0MfgkDHBbg/article-inline_image-shrink_1500_2232/0/1671206121830?e=1689811200&v=beta&t=J0IMjAT21kys9VgX4eK2t6RB90oT729_jIhsrFSvviY)

31\. **TNC:** This is “Test Network Connection” command. Mostly used command while troubleshooting. It displays diagnostic information for a connection.

**Command:** tnc &lt;server\_name&gt; -port &lt;port&gt;


*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)
