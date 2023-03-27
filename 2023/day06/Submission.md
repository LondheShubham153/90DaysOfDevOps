File Permissions and Access Control Lists

The concept of Linux File permission and ownership is important in Linux. Here, we will be working on Linux permissions and ownership and will do tasks on both of them.

Let us start with the Permissions.

Create a simple file and do ls -ltr to see the long details of the files.

![image](https://user-images.githubusercontent.com/119837985/227699358-727bb090-7784-44e9-8e77-c3973405eb30.png)

Each of the three permissions is assigned to three defined categories of users. The categories are:


     owner   —   The owner of the file or  application.
"chown" is used to change the ownership permission of a file or directory.

     group   —   The group that owns the file or application.
"chgrp" is used to change the group permission of a file or directory.

     others  —   All users with access to the system. (outised the users are in a group)
"chmod" is used to change the other user's permissions of a file or directory.

As a task, change the user permissions of the file and note the changes after ls -ltr refer to the image below.
![image](https://user-images.githubusercontent.com/119837985/227699418-0b3cacbc-1e03-4421-a53f-a956876d0ea3.png)


Here chmod 744 will change the permissions of the file for:

user - Read, Write and Execute.

group - Read-only.

others - Read-only.

Summary:
In Linux, file permissions are used to control who can access a file and what actions they can perform on it. There are three types of file permissions: read, write, and execute. These permissions can be set for three types of users: the file owner, members of the file's group, and all other users.

Here is an overview of how file permissions work in Linux:

Read permission (r): Allows a user to view the contents of a file.

Write permission (w): Allows a user to modify the contents of a file.

Execute permission (x): Allows a user to run a file if it is a program or script.

File owner: The user who created the file is the owner of the file.

File group: A file can be assigned to a specific group of users.

Other users: All users who are not the file owner or members of the file's group.

File permissions can be viewed and modified using the chmod command, which stands for "change mode". The chmod command uses a numeric code or symbolic representation to set file permissions. Here are some examples of how to use chmod:

Numeric code: In the numeric code representation, each permission is represented by a number. The numbers 4, 2, and 1 represent read, write, and execute permissions, respectively. The sum of these numbers represents the total permission.

Symbolic representation: In the symbolic representation, permissions are represented by letters: "r" for read, "w" for write, and "x" for execute. The letters are combined with a plus sign to add permissions, a minus sign to remove permissions, or an equals sign to set permissions.

Understanding file permissions is essential for maintaining the security and integrity of your Linux system. It allows you to control who can access and modify files and helps to prevent unauthorized access or modifications.

Access control list (ACL)
Access Control List (ACL) is a feature in Linux that provides more fine-grained control over file and directory permissions beyond the standard file permission model. ACL allows you to give permissions to specific users or groups, in addition to the file owner and group.

By default, each file or directory has an owner, group, and permissions assigned to it. However, sometimes you may need to grant access to specific users or groups without changing the ownership or group of the file or directory. This is where ACL comes into play.

ACLs are defined in terms of a set of rules that specify the users or groups and the permissions they are granted. An ACL rule consists of:

A user or group identifier (UID or GID).

A permission set, which can include read, write, and execute permissions.

Here are some useful commands related to ACL in Linux:

getfacl: This command displays the Access Control List (ACL) for a file or directory.

setfacl: This command is used to set the ACL for a file or directory.

check: This command is used to modify the ACL for a file or directory.

get fatter: This command displays extended attributes for a file or directory, including ACLs.

setfattr: This command is used to set or modify extended attributes, including ACLs.

example:

Overall, ACL provides a powerful way to manage file and directory permissions in Linux, allowing for more fine-grained control over access to resources. It's especially useful in situations where you need to grant specific access to users or groups without changing the ownership or group of the file or directory.

for code - GitHub

Thanks for reading! Hope you find this helpful. https://sumitramchandra.hashnode.dev/file-permissions-and-access-control-lists
