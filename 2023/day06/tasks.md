# Day 6 Task: File Permissions and Access Control Lists

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
created a file
cat > demo.txt
this is first line
this is second line

ls -ltr
chown o=rw,g=r,o=r demo.txt
ls -ltr demo.txt
2) Write an article about File Permissions based on your understanding from the notes.

file permissions are very essential part in any operating system
I beleive what ever the requirement is there that much permission you should give to that user,owner or group its like best practice
my prefered way to set up permission is 
chown u=rwx,g=rw,o=r demo.txt
there are other ways like giving numbers and setting up permissions.
3) Read about ACL and try out the commands `getfacl` and `setfacl`

getfacl command we can use to check default access for files using this command
getfacl -a demo.txt
-but i got to know that we cant see other details of the file like when it was created and size of file
with setfacl command you can set the permissions 
my favourite is to give permission to new user

setfacl -m u:akshay:rw demo.txt

In case of any doubts, post it on [Discord Community](https://discord.gg/hs3Pmc5F)

Happy Learning