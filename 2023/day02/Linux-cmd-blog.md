![Basic linux commands](https://fossbytes.com/wp-content/uploads/2021/01/Basic-Linux-Commands.jpg)
## **What Is a Linux Command?**

A Linux command is a program or utility that runs on the CLI – a console that interacts with the system via texts and processes. It’s similar to the Command Prompt application in Windows.

Here’s what a Linux command’s general syntax looks like:

**CommandName \[option(s)\] \[parameter(s)\]**

A command may contain an option or a parameter. In some cases, it can still run without them. These are the three most common parts of a command:

* **CommandName** is the rule that you want to perform.
    
* **Option** or **flag** modifies a command’s operation. To invoke it, use hyphens (**–**) or double hyphens (**—**).
    
* **Parameter** or **argument** specifies any necessary information for the command.
    

Keep in mind that all Linux commands are case-sensitive.    

### Listing commands

`ls option_flag arguments` --&gt; List the sub-directories and files available in the present directory.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684212135191/59858e9b-5d4d-4f95-82bb-268c437070f7.png)

* `ls -l`\--&gt; List the files and directories in a long list format with extra information
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684212167259/b5d01477-b624-4268-bd61-fcf16bd1702c.png)
    
* `ls -a` --&gt; List all including hidden files and directories.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684212186050/09371ed8-1f3b-4bbf-b0ec-dd6f8d34c678.png)
    
* `ls *.sh` --&gt; List all the files having .sh extension
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684212300531/928847a7-e963-4426-9034-23b82b73a502.png)
    
* `ls -i`\--&gt; List the files and directories with index numbers Inodes.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684212321723/b22325b5-8f9e-4f0e-bda9-b5ebb494e556.png)
    
* `ls -d */` --&gt; list only directories.(we can also specify a pattern)
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684214094719/85b3e2db-8619-4c45-8bd5-5fc0f7aad890.png)
    

### Directory commands

* `pwd` --&gt; Print work directory. Gives the present working directory.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684214147967/13659c34-202c-44c9-bf24-71aa99178016.png)
    
* `cd path_to_directory` --&gt; Change the directory to the provided path
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684214273789/f77e04d8-ff0d-4e04-b441-ff550c792ff0.png)
    
* `cd ~` or just `cd` --&gt; Change the directory to the home directory
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684214314780/352918a4-82ac-4f73-ba31-e3628d51d9b1.png)
    
* `cd -` --&gt; Go to the last working directory.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684214337284/02e99152-2c42-4b22-a80b-6c96ab84ea5f.png)
    
* `cd ..` --&gt; Change the directory to one step back.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684214417972/c3513080-ee01-490c-b968-017fcb8f27ec.png)
    
* Mkdir Examples:
    
* `mkdir FolderSK` --&gt; Make a new folder 'new folder'.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684215347183/ddc709c9-6659-4c7b-ba8b-304f3d936db1.png)
    
* `mkdir .HideMe` --&gt; Make a hidden directory (also . before a file to make it hidden).
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684215407388/c1410181-4c0f-4c47-a4ce-0aa1c7b043d8.png)
    
* `mkdir A B C D` --&gt; Make multiple directories at the same time.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684215464701/b5dea40e-387d-4424-b9aa-7eba04f60958.png)
    

* `mkdir /home/user/Mydirectory` --&gt; Make a new folder in a specific location.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684215871921/9960f425-c606-4051-bfce-fd4e83301386.png)
    
* `mkdir -p A/B/C/D` --&gt; Make a nested directory.
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684215841672/df4e90f8-cadd-4ff2-b06d-e8f03bc6bf6b.png)


## Commonly Used Linux commands:
```bash
sudo (command)       #lets you perform tasks that require administrative or root permissions.

pwd [option]         #To find path of your current working directory

cat filename.txt.    #It lists, combines, and writes file content to the standard output.

cp filename1.txt filename2.txt    #to copy files or directories and their content.

touch /home/username.html     #to create an empty file or generate and modify a timestamp in the Linux command line.

locate -i school*note   #find a file in the database system.

grep blue notepad.txt   #to find a word by searching through all the texts in a specific file.

df -h     #to report the system’s disk space usage, shown in percentage and kilobyte (KB).

du /home/user/Documents  #to check how much space a file or a directory takes up

head note.txt         # to view the first ten lines of a text

tail -n colors.txt      #to displays the last ten lines of a file.

diff note.txt note_update.txt       #the diff command compares two contents of a file line by line.

tar -cvf newarchive.tar /home/user/Documents    #archives multiple files into a TAR file – a common Linux format similar to ZIP, with optional compression.

chmod 777 note.txt #to modifies a file or directory’s read, write, and execute permissions.

kill SIGKILL 63773    # to terminate an unresponsive program manually.

ping google.com     #for checking whether a network or a server is reachable.

wget https://wordpress.org/latest.zip       # lets you download files from the internet

```
*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)
