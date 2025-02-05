# Issue in adding Permisions to users
```
ubuntu@ip-172-31-25-72:/home$ ls -l
total 16
drwxr-x--- 3 Devops-user Developer 4096 Feb  5 04:42 Devops-user
drwxr-x--- 2 Mahesh      Mahesh    4096 Feb  4 17:59 Mahesh
drwxr-x--- 2 Mukesh      Mukesh    4096 Feb  4 15:03 Mukesh
drwxr-x--- 5 ubuntu      ubuntu    4096 Feb  5 04:37 ubuntu
ubuntu@ip-172-31-25-72:/home$ sudo su Mahesh
$ cd /home/Devops-user/Devops-workspace
sh: 1: cd: can't cd to /home/Devops-user/Devops-workspace
$ cd /home
$ ls
Devops-user  Mahesh  Mukesh  ubuntu
$ cd Devops-user
$ ls
Devops-workspace
$ cd Devops-workspace
sh: 6: cd: can't cd to Devops-workspace
```
## What i want is to access the file inside the Devops-user/Devops-workspace/project.txt from the super user Mahesh.



The issue encountering is due to the permissions set on the `Devops-user` directory and its subdirectories. Based on the output of your `ls -l` command, the `Devops-user` directory has the following permissions:

```
drwxr-x--- 3 Devops-user Developer 4096 Feb  5 04:42 Devops-user
```

This means:
- The owner (`Devops-user`) has read, write, and execute permissions.
- The group (`Developer`) has read and execute permissions.
- Others have no permissions.

Since the user `Mahesh` is not the owner and is not part of the `Developer` group, he cannot access the `Devops-user` directory or its contents.

### Solution

To allow `Mahesh` to access the `Devops-user/Devops-workspace/project.txt` file, you can either:

1. **Add `Mahesh` to the `Developer` group**:
   This will give him access to the `Devops-user` directory and its contents.

   ```bash
   sudo usermod -aG Developer Mahesh
   ```

   After running this command, `Mahesh` will need to log out and log back in for the group changes to take effect.

2. **Change the permissions of the `Devops-user` directory**:
   If you want to allow all users to access the directory, you can change the permissions to allow read and execute access for others. However, be cautious with this approach as it opens up access to all users.

   ```bash
   sudo chmod o+rx /home/Devops-user
   ```

3. **Change the ownership of the `Devops-workspace` directory**:
   If you want `Mahesh` to have access specifically to the `Devops-workspace` directory, you can change the ownership of that directory to `Mahesh`.

   ```bash
   sudo chown -R Mahesh:Mahesh /home/Devops-user/Devops-workspace
   ```

### After Making Changes

Once you have made one of the above changes, try accessing the `project.txt` file again:

```bash
cd /home/Devops-user/Devops-workspace
cat project.txt
```

This should allow `Mahesh` to access the file as intended.
```
ubuntu@ip-172-31-25-72:/home$ sudo usermod -aG Developer Mahesh
ubuntu@ip-172-31-25-72:/home$ sudo chmod o+rx /home/Devops-user
ubuntu@ip-172-31-25-72:/home$ ls -l
total 16
drwxr-xr-x 3 Devops-user Developer 4096 Feb  5 04:42 Devops-user
drwxr-x--- 2 Mahesh      Mahesh    4096 Feb  4 17:59 Mahesh
drwxr-x--- 2 Mukesh      Mukesh    4096 Feb  4 15:03 Mukesh
drwxr-x--- 5 ubuntu      ubuntu    4096 Feb  5 04:37 ubuntu
ubuntu@ip-172-31-25-72:/home$ sudo chown -R Mahesh:Mahesh /home/Devops-user/Devops-workspace
ubuntu@ip-172-31-25-72:/home$ sudo su Mahesh
$ cd /home
$ ls
Devops-user  Mahesh  Mukesh  ubuntu
$ cd Devops-user
$ ls
Devops-workspace
$ cd Devops-workspace
$ ls
Project.txt
$ cat Project.txt
This is the Project File
List of projects i have done 
1.Devops-pipeline 
2. linux 
3. networking
4.AWS cloud
$ 
```
