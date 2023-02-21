### 1) Create a simple file and do ls -ltr to see the details of the files refer to Notes.
### ANSWER:-
            [root@ip-172-31-42-218 scripts]# ls -lrt
                                           total 0
                                           -rw-rw-r-- 1 ec2-user ec2-user 0 Jan  9 04:07 Day1File6.txt
                                           -rw-rw-r-- 1 ec2-user ec2-user 0 Jan  9 04:07 Day1File5.txt
                                           -rw-rw-r-- 1 ec2-user ec2-user 0 Jan  9 04:07 Day1File4.txt
                                           -rw-rw-r-- 1 ec2-user ec2-user 0 Jan  9 04:07 Day1File3.txt
                                           -rw-rw-r-- 1 ec2-user ec2-user 0 Jan  9 04:07 Day1File2.txt
                                           -rw-rw-r-- 1 ec2-user ec2-user 0 Jan  9 04:07 Day1File1.txt
                                           
                                           
                                           
                                           
                                        
2) Write an article about File Permissions based on your understanding from the notes.
ANSWER:-
      File permission ---> File permission is used to give and remove permissions to a particular file/Directory.
                           There are 3 types of permissions for 3 types of users -
                           1) Read (-r) 4
                           2) Write (-w) 2
                           3) Execute (-x) 1
                           
                           USERS -
                           1) Owner
                           2) User
                           3) Others
                           
      To change permission of a file "chmod" command is used with the following options --->
                                        chmod 777 file1.txt
                                        
      For example, 
               Suppose you want to give read,write.execute permission to owner, read,execute to user and read to others, so how can we do this ---->
               
               what is the number of read --> 4 , write --> 2 , execute --> 1 right ?
               i) so if we want to give read write execute permission to owner, we need to add all 3 --> 4+2+1 = 7
               ii) Now, for user we want to give read execute so --> 4+1 = 5 
               iii) And for others read permission --> 4
               
               So, command looks like 
                                        chmod 754 file1.txt
                                        
3) Read about ACL and try out the commands getfacl and setfacl.
ANSWER:- ACL ---> It allows you to give more specific permissions to a file or directory without changing the base ownership and permissions.
         Commands ---> getfacl and setfacl
         
         i) For adding permissions for user 
         ---> setfacl -m "u:<username>:<permission>" <filename>
         ii) For adding permissions for group 
         ---> setfacl -m "g:<username>:<permission>" <filename>
         iii) To remove a specific entry 
         ---> setfacl -x "u:<username>" <filename>
         iv) To remove all entries 
         ---> setfacl -b <targetfile>
         v) For adding permissions for user in all files inside a folder 
         ---> setfacl -Rm "u:<username>:<permission>" <directory>

