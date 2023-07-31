# Day 6 Task: File Permissions and Access Control Lists

### Today is more on Reading, Learning and Implementing File permissions

 The concept of Linux File permission and ownership is important in Linux. 
 Here, we will be working on Linux permissions and ownership and will do tasks on
 both of them. 
 Let us start with the Permissions.

1) Create a simple file and do `ls -ltr` to see the details of the files 
```bash
total 44
-rw-r--r-- 1 nid nid 20480 Jul 28 19:41 backup_up
drwxr-xr-x 2 nid nid  4096 Jul 24 19:10 download
drwxr-xr-x 3 nid nid  4096 Jul 29 09:47 git_learn
drwxr-xr-x 4 nid nid  4096 Jul 28 19:38 linux
drwxr-xr-x 3 nid nid  4096 Jul 29 20:18 shell_scripting_learn
drwx------ 4 nid nid  4096 Jun 23 00:41 snap
drwxr-xr-x 6 nid nid  4096 Jun 28 15:50 terraform_learn
```
 
 Each of the three permissions are assigned to three defined categories of users. The categories are:
-	   owner   —   The owner of the file or  application.
-	"chown" is used to change the ownership permission of a file or directory.
-	   group   —   The group that owns the file or application.
-	"chgrp" is used to change the group permission of a file or directory.
-	   others  —   All users with access to the system. (outised the users are in a group)
-	"chmod" is used to change the other users permissions of a file or directory.

    As a task, change the user permissions of the file and note the changes after `ls -ltr`

2) Write an article about File Permissions based on your understanding from the notes.
> Blog link: https://devxblog.hashnode.dev/day-6-file-permissions-and-access-control-lists
3) Read about ACL and try out the commands `getfacl` and `setfacl`
>ACL stands for Access Control List. It is a set of permissions or rules that determine the access rights for a specific user or group to a file, directory, or system resource. ACLs provide more granular control over permissions than traditional file permissions, allowing for more fine-tuned access management.

>"**getfacl**": Retrieves the ACL information for a file or directory. 

>"**setfacl**": Sets or modifies the ACL of a file or directory,allowing for custom access permissions.

Happy Learning
