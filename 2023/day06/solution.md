![File Permissions and Access Control List](https://cdn.hashnode.com/res/hashnode/image/upload/v1684762987175/b344ce92-8758-4f9e-aa07-0f67c6e567e6.avif?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)

# File Permissions and Access Control Lists
Understanding Linux file permissions (how to find them, read them, and change them) is an important part of maintaining and securing your systems.

### File Permissions

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684764093760/66c15250-3096-4429-a089-e3f2ae330ca2.gif )

The Linux filesystem gives us three types of permissions. Here is a simplified review:

* **U**ser (or user owner)
    
* **G**roup (or owner group)
    
* **O**ther (everyone else)
    

With these permissions, we can grant three (actually five, but we’ll get to that in a minute) types of access:

* **R**ead
    
* **W**rite
    
* e**X**ecute
    

The concept of Linux File permission and ownership is important in Linux. Here, we will be working on Linux permissions and ownership and will do tasks on both of them. Let us start with the Permissions.

1. Create a simple file and do `ls -ltr` to see the details of the files
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684764475294/220142f4-b739-4d84-bfb1-876718fc1c27.png )
    

Each of the three permissions are assigned to three defined categories of users. The categories are:

* owner — The owner of the file or application.
    
* "chown" is used to change the ownership permission of a file or directory.
    
    ```bash
    chown ec2-user script.sh
    ```
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684764741974/74019ca2-3e83-4a17-a411-8092cce06b45.png )
    

## **How do you modify Linux file permissions?**

You can modify file and directory permissions with the `chmod` command, which stands for "change mode." To change file permissions in numeric mode, you enter `chmod` and the octal value you desire, such as 744, alongside the file name. To change file permissions in symbolic mode, you enter a user class and the permissions you want to grant them next to the file name. For example:

```bash
$ chmod ug+rwx example.txt
$ chmod o+r example2.txt
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684765933928/c84b92f7-7a27-4b82-a744-c909c6774f69.png )

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684766054248/00786926-8bf3-4f2b-8e07-bdac190b0a3d.png )

This grants read, write, and execute for the user and group, and only read for others. In symbolic mode, `chmod u` represents permissions for the user owner, `chmod g` represents other users in the file's group, `chmod o` represents other users not in the file's group. For all users, use `chmod a`.

## **What are special file permissions?**

Special permissions are available for files and directories and provide additional privileges over the standard permission sets that have been covered.

* **SUID** is the special permission for the user access level and always executes as the user who owns the file, no matter who is passing the command.
    
* **SGID** allows a file to be executed as the group owner of the file; a file created in the directory has its group ownership set to the directory owner. This is helpful for directories used collaboratively among different members of a group because all members can access and execute new files.
    

The "sticky bit" is a directory-level special permission that restricts file deletion, meaning only the file owner can remove a file within the directory.

## Access Control Lists

**What is ACL?**  
Access control list (ACL) provides an additional, more flexible permission mechanism for file systems. It is designed to assist with UNIX file permissions. ACL allows you to give permissions for any user or group to any disc resource.

**Use of ACL :**  
Think of a scenario in which a particular user is not a member of group created by you but still, you want to give some read or write access, how can you do it without making the user a member of the group, here comes in picture Access Control Lists, ACL helps us to do this trick.

Basically, ACLs are used to make a flexible permission mechanism in Linux.

**setfacl** and **getfacl** are used for setting up ACL and showing ACL respectively.

For example :

```bash
getfacl test/declarations.h
```

Output:

```bash
# file: test/declarations.h
# owner: mandeep
# group: mandeep
user::rw-
group::rw-
other::r--
```

**List of commands for setting up ACL :**

```bash
1) To add permission for user
setfacl -m "u:user:permissions" /path/to/file

2) To add permissions for a group
setfacl -m "g:group:permissions" /path/to/file 

3) To allow all files or directories to inherit ACL entries from the directory it is within
setfacl -dm "entry" /path/to/dir

4) To remove a specific entry
setfacl -x "entry" /path/to/file

5) To remove all entries
setfacl -b path/to/file
```

For example :

```bash
setfacl -m u:mandeep:rwx test/declarations.h
```

**Modifying ACL using setfacl :**  
To add permissions for a user (user is either the user name or ID):

```bash
# setfacl -m "u:user:permissions"
```

To add permissions for a group (group is either the group name or ID):

```bash
# setfacl -m "g:group:permissions"
```

To allow all files or directories to inherit ACL entries from the directory it is within:

```bash
# setfacl -dm "entry"
```

Example :

```bash
setfacl -m u:mandeep:r-x test/declarations.h
```

**Using Default ACL :**  
The default ACL is a specific type of permission assigned to a directory, that doesn’t change the permissions of the directory itself, but makes so that specified ACLs are set by default on all the files created inside of it. Let’s demonstrate it : first we are going to create a directory and assign default ACL to it by using the -d option:

```bash
$ mkdir test && setfacl -d -m u:dummy:rw test
```

Happy Learning *Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ )

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)