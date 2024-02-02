Day 6 TASK



![cover snap](https://tse4.mm.bing.net/th?id=OIP.Zo56I3Js3n4V4jjxRKbcEwHaD4&pid=Api&P=0&h=220)








## Introduction

- In the world of Linux, understanding how files are protected and who can access them is really important. Today, we're going to dive into file permissions and ownership, and also learn about something called Access Control Lists (ACLs).

### Let's modify the user permissions for the file "supriya.txt" and observe the changes using ls -ltr.


```shell
ls -ltr
```



![user permission snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706889756196/cd26fac8-b902-43d7-8964-8c01b234214b.png)




- Initially, the file "supriya.txt" had extensive permissions set at 777, granting full access with read, write, and execute capabilities.

- Now, I've adjusted the permissions to 755. The alteration means that the owner retains read, write, and execute rights, the group has read and execute permissions, while others have only read access. This adjustment aims to strike a balance between access and security for the file.




![user snap](https://tse3.mm.bing.net/th?id=OIP.V0PJtogLgEtG9b0IcArUYwAAAA&pid=Api&P=0&h=220)



### Write an article about File Permissions based on your understanding from the notes.

- File permissions are like the rules that determine who can read, write, or run a file. Every file and directory has its own set of permissions that say what users or groups can do with it.

- Read (r): This lets a user look at the contents of a file or see what's inside a directory.

- Write (w): With write permission, a user can change or delete a file, or add, remove, or rename files in a directory.

- Execute (x): Execute permission allows a user to run a file like a program or a script.




![file permission](https://tse4.mm.bing.net/th?id=OIP.3GlMU6EBwGQgdXJCtO8VSQHaDK&pid=Api&P=0&h=220)





### Ownership and Groups:

- Every file has an owner, who's usually the person who made it. There's also a group, which is a bunch of users with similar needs for accessing files.

- Setting Permissions: You can change who can do what with a file using the  ```chmod```  command. And if you need to change who owns a file, you can use the  ```chown```  command.



![owner permission](https://tse1.mm.bing.net/th?id=OIP.rXbbP_MRdKNvrLjOTepJUQHaEK&pid=Api&P=0&h=220)






### Numeric Permissions:

- In Linux, file permissions can also be represented by numbers. It's like a shortcut to show who can do what with a file.

- Numeric Representation: There are three numbers, each representing the permissions for the owner, group, and everyone else.

- Understanding the Numbers: Each number is a combination of 4 (read), 2 (write), and 1 (execute). So, if you see 7, it means full permissions, 6 means read and write, and so on.

- For example, if a file has numeric permission of 755, it means the owner has full permissions, the group and everyone else can read and execute the file.


![permission of file](https://tse2.mm.bing.net/th?id=OIP.d4uXtn3tPTcEsYQUtI4vGAAAAA&pid=Api&P=0&h=220)




![permission](https://tse4.mm.bing.net/th?id=OIP.sgM9L1X4nYrk2Gh3ii2a0wHaEP&pid=Api&P=0&h=220)




### Understanding Access Control Lists (ACLs):

- In Linux, Access Control Lists (ACLs) are like an extra layer of security for your files and directories. They allow you to control who can access what in a more detailed way than standard file permissions.

- Here's how ACLs work:

- What are ACLs?: ACLs are additional permissions beyond the basic owner, group, and others permissions. They let you specify access rights for specific users or groups.

- Why Use ACLs?: Sometimes, you need more granular control over file access. ACLs help you do that by allowing you to set permissions for individual users or groups, even if they're not the owner or in the group associated with the file.

- Commands for ACLs:

- getfacl: This command shows you the ACL of a file or directory. It displays all the permissions, including those set by ACLs.




![getfacl snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706894419928/5ffb28e2-48aa-4ba2-b99f-382506b1c5ff.png)






- setfacl: With this command, you can set or modify ACLs for files and directories. It lets you grant or revoke specific permissions for specific users or groups.


![setfacl snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706894302082/9a5e5ed7-d2a6-447e-96b3-32fad11597f5.png)





- Example: Let's say you have a file that you want only certain users to be able to read and write to. With ACLs, you can grant those specific users the permissions they need without changing the file's owner or group.

- Flexibility: ACLs add flexibility to file permissions, allowing for more nuanced control over who can access files and what they can do with them.

- By understanding and leveraging ACLs, you can enhance the security and accessibility of your files and directories in Linux environments.


##### For further insights, please visit my Hashnode blog: [Link to my Hashnode blog](https://supriyasurkar.hashnode.dev/day-6-task-file-permissions-and-access-control-lists)
