# Day 6 Task: File Permissions and Access Control Lists Solution by PrithishGc

### Today is more on Reading, Learning and Implementing File permissions

 The concept of Linux File permission and ownership is important in Linux. 
 Here, we will be working on Linux permissions and ownership and will do tasks on
 both of them. 
 Let us start with the Permissions.

1) Create a simple file and do `ls -ltr` to see the details of the files [refer to Notes](https://github.com/LondheShubham153/90DaysOfDevOps/tree/master/2023/day6/notes)
 
 Each of the three permissions are assigned to three defined categories of users. The categories are:
-	   owner   —   The owner of the file or  application.
-	"chown" is used to change the ownership permission of a file or directory.
-	   group   —   The group that owns the file or application.
-	"chgrp" is used to change the gropu permission of a file or directory.
-	   others  —   All users with access to the system. (outised the users are in a group)
-	"chmod" is used to change the other users permissions of a file or directory.

    As a task, change the user permissions of the file and note the changes after `ls -ltr`

2) Write an article about File Permissions based on your understanding from the notes.

- file permissions are set of rules that can provide access to specified users with specific roles such as read , write , group etc. basically these permissions are assigned to the file owners,any members of the file group & other's as well .
for file permissions we need to use chmod set of commands in order to provide access or changing access for special groups and all .
The read permission represented by " r " allows user to view content .
The write permission represented by " w " allows user to edit access .
The execute permissiom represented by " x " allows user to run a file .
The " ls " command can be viewed the permissions of a file or directory .

file permissions is very important aspect of managing files and directories in ubuntu . By understanding how to view and file permissions we can ensure 
files and directories are properly accessible.

3) Read about ACL and try out the commands `getfacl` and `setfacl`

ACL command is used for only managing advanced permission and providing more fine grained control over file and directory access.
By using ACL additional users or groups can be grant specific permissions. it is mainly used to set and manage ACLs using command line tools.

Example : getfactl and setfactl

getfactl : used to display the acls associated with a file or directory .

![](https://github.com/imprithwishghosh/90_days_of_devOps_pics/blob/master/getfacl_acl.png)



setfactl : used to set or modify acl entries for files and directories .

![](https://github.com/imprithwishghosh/90_days_of_devOps_pics/blob/master/setfacl.png)



In case of any doubts, post it on [Discord Community](https://discord.gg/hs3Pmc5F)

Happy Learning
