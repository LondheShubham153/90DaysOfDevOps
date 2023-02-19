## 1. Create a simple file and do ls -ltr


![image](https://user-images.githubusercontent.com/89054489/211139858-99e38a5c-e742-44af-988b-6bfcfd9db90f.png)

## 2. Write an article about File Permissions based on your understanding
[My article](https://charanwrites.hashnode.dev/series/devops)
![image](https://user-images.githubusercontent.com/89054489/211143768-579a3d7c-e283-4fd4-87ce-fb83763b9714.png)

## 3. Read about ACL and try out the commands getfacl and setfacl
- ACL stands for access control list
-  It is a mechanism that allows you to specify fine-grained control over access to files and directories.
- The `getfacl` command allows you to view the ACLs (access control lists) for a file or directory. The `setfacl` command allows you to set or modify the ACLs for a file or directory.
![image](https://user-images.githubusercontent.com/89054489/211140052-fd355fa7-3995-4489-80fe-c6393a4ba173.png)
![image](https://user-images.githubusercontent.com/89054489/211140083-1703d2f9-4cfe-4732-bee7-2d68ff1e24a3.png)

- This output shows the ACLs for the file file.txt. The user field shows that the owner of the file (user1) has read and write permissions (rw-). The group field shows that members of the group (group1) have read-only permissions (r--). The other field shows that all other users have read-only permissions (r--).

Here is an example of how to use setfacl:
![image](https://user-images.githubusercontent.com/89054489/211140103-8569fb17-f8c4-4823-a9fc-76be0b8ee220.png)

- This command sets the ACL for the file file.txt so that the user user2 has read and write permissions. The -m option stands for "modify" and the u:user2:rw specifies that the user user1 should be given read and write permissions.

| symbol | Explanation |
|-------------------------|---|
| / | This is a  top level directory <br> It is a parent directory of all other directories <br> It is a root directory <br> It is denoted by slash(/)<br> It is like c:/ of windows for linux |
|/root | It is home directory for root user (super user)<br>-> it provides working environment for root user |
|/home | It is a home directory for other users <br> it provide working environment for other users (other than root) |
| /boot | It contains bootable files in linux <br> like GRUB, boot.ini, ntldr|
| /etc | It contains all configuration files <br> like /etc/passwd, /etc/resolv.conf etc |
| /usr | By default softwares are installed in /usr directory <br> usr = Unix Sherable resources|
| /opt | it is optional directory for /usr <br> It contains third party softwares |
| /sbin | it contains commands used by only super user (root) <br> super user's binary files |
| /dev | it contains device files <br> like /dev/hda |
| /proc | it contains process files <br> Its contents are not permanent, they keep changing <br> it is also called as virtual directory <br> It's file contain useful information used by OS <br> like /proc/meminfo --information of RAM/SWAP |
| /var |  It contains variable data like mail, log files |
| /mnt | It is default mount point for any partition <br> It is empty by default |
| /media | It contains all of removable media like CD-ROM, pendrive |
| /lib | It is simmilar files which are used by OS <br> it is simmilar to dll files of windows<br> Library files in linux are SO (shared object ) files. |

There are two types of links :

|soft link | hardlink|
|------|---------|
|size of linkfile is equal to no.of characters in the name of original file|size of both file is same |
| can be created across partition | can't be created across partition |
| inode no.of source and link file is different | inode no.of both files is same |
| if original file is deleted, link is broken and data is lost | if original file is deleted then also link will contain data |
| shortcut file | backup file |
| creation : `$ ln -s <sourcefile> <destination>` | creation : `$ ln <sourcefile> <destination>` |

For complete details of this task [Read Here](https://charanwrites.hashnode.dev/series/devops)
