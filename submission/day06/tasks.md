touch test test1 test2
# Task 1: Change the Permission of file/directories
```
ls -lrt test
chmod g+s test
```
# Task 2: Change the ownership of a file/directory
```
ls -lrt test
sudo chown paragp test
```
# Task 3: Change the group permission of a file/directory
```
ls -lrt test
sudo chgrp dev test
```
# Access Control Lists (ACL) commands getfacl and setfacl
sudo apt install acl
getfact ParagFolder-9