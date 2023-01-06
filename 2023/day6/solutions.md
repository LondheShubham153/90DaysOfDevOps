## 1. Create a simple file and do ls -ltr



## 2. Write an article about File Permissions based on your understanding


## 3. Read about ACL and try out the commands getfacl and setfacl
- ACL stands for access control list
-  It is a mechanism that allows you to specify fine-grained control over access to files and directories.
- The `getfacl` command allows you to view the ACLs (access control lists) for a file or directory. The `setfacl` command allows you to set or modify the ACLs for a file or directory.

- This output shows the ACLs for the file file.txt. The user field shows that the owner of the file (user1) has read and write permissions (rw-). The group field shows that members of the group (group1) have read-only permissions (r--). The other field shows that all other users have read-only permissions (r--).

Here is an example of how to use setfacl:

- This command sets the ACL for the file file.txt so that the user user2 has read and write permissions. The -m option stands for "modify" and the u:user2:rw specifies that the user user2 should be given read and write permissions.


