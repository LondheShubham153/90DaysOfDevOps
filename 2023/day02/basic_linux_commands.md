## Basic linux commands

Uname commands and it's varients:--
-``` uname option_flag ----> It will display OS related information..
Examples:

-``` uname --> It wil display which Operating system i logged in.
- `` uname -m --> It will display microsystem name details
- ```uname -r --> It will display the kernal version
- ```uname -n --> It will display the hostname of the Operating System..
- ```uname -a --> It will display all the details related to the Operating System,like as mentioned below
-`````Kernelname Hostname Kernalrelease Kernalversion machinehardware(microsystemname) Operatingsystemname..
-`````whoami---> It will display switched username or child name


### Listing commands
```ls option_flag arguments ```--> list the sub directories and files avaiable in the present directory

Examples:

- ``` ls -l ```--> list the files and directories in long list format with extra information. It has seven fields Where as the first field represents the type of object. In the first field it has 10 coloumns, here 1st coloumn represents whether the object is directory, regular file,charector device, link, socket or block device. 
- " - `` It represents regular file and d--> directory, c--> charector device, l--> link s--> socket, b --> block device ``
- " 2nd field represents link(hard link).3rd field represents username. 4th field---> groupname 5th field---> size of file,6th field--> file's last modification time and the 7th field--> file name. for example
- [root@localhost devops]# ls -lrt
total 36
-rw-r--r-- 1 root root   12 Jun  3 17:59 hello.txt
drwxr-xr-x 2 root root 4096 Jun  3 18:04 test
-rw-r--r-- 1 root root    0 Jun  3 18:05 dev.txt
drwxr-xr-x 2 root root 4096 Jun  3 18:08 prod
drwxr-xr-x 2 root root 4096 Jun  3 18:08 qa

- ``1s -S ``--> It will list out the objects with respect to thier size in decreasing order.It wont work in sun solaris.
- ``ls -F ``--> It provides more ways to display all the objects ending with /, @, * respectively. / --> directory, @---> link & * --> executable file.
- ``ls -1``--> Display all the objects in a single coloumn.
- ```ls -a ```--> list all including hidden files and directory
- ```ls *.sh``` --> list all the files having .sh extension.

- ```ls -i ``` --> list the files and directories with index numbers inodes
- ``` ls -d */``` --> list only directories.(we can also specify a pattern)

### Directoy commands
- ```pwd``` --> print work directory. Gives the present working directory.

- ```cd path_to_directory``` --> change directory to the provided path

- ```cd ~ ``` or just  ```cd ``` --> change directory to the home directory

- ``` cd - ``` --> Go to the last working directory.

- ``` cd ..``` --> change directory to one step back.

- ``` cd ../..``` --> Change directory to 2 levels back.

- ``` mkdir  directoryName``` --> to make a directory in a specific location

Examples:
```
mkdir newFolder              # make a new folder 'newFolder'

mkdir .NewFolder              # make a hidden directory (also . before a file to make it hidden)

mkdir A B C D                  #make multiple directories at the same time

mkdir /home/user/Mydirectory   # make a new folder in a specific location

mkdir -p  A/B/C/D              # make a nested directory
```
