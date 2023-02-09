1.) To set the facl with mask value to a particular user
ans => `setfacl -m u:dinesh:rw,mask:r test_dir`

2.) by default teh umask for the default permission of file and directory in linux is:
    i) umask 0022
    ii) file => 666
    iii) directory => 777

    to change the umask of default: `umask 0044`

3.) To Delete file access control list
    i) setfacl -b [file or directory]
    
    To Delete facl Recursively 
    ii) setfacl -Rb /path/to/directory

4.) To Remove facl for specific user only
    i) setfacl -x dinesh test.sh

5.) for files or directory created under it will inherit the ACL permission.
    i) setfacl -dm u:dinesh:rw test_dir/

6.) To set facl for SUID (User), GID (Group) and Sticky Bit (Others)
    i) chmod u+s test1 (SUID)
    ii) chmod g+s test1 (GID)
    iii) chmod g+t test1 (Sticky Bit)