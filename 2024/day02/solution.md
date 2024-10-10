## Basic linux commands

### Listing commands
```ls option_flag arguments ```--> list the sub directories and files avaiable in the present directory

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 175519.png

Examples:

- ``` ls -l ```--> list the files and directories in long list format with extra information

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 175531.png

- ```ls -a ```--> list all including hidden files and directory

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 175558.png

- ```ls *.sh``` --> list all the files having .sh extension.

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 175830.png

- ```ls -i ``` --> list the files and directories with index numbers inodes

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 175853.png

- ``` ls -d */``` --> list only directories.(we can also specify a pattern)

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 175920.png


### Directoy commands
- ```pwd``` --> print work directory. Gives the present working directory.

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 175934.png

- ```cd path_to_directory``` --> change directory to the provided path

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180007.png

- ```cd ~ ``` or just  ```cd ``` --> change directory to the home directory

### Sample output image 1 : 1.. c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180104.png

### Sample output image 2 : 2.. c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180120.png


- ``` cd - ``` --> Go to the last working directory.

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180145.png

- ``` cd ..``` --> change directory to one step back.

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180259.png

- ``` cd ../.. ``` --> Change directory to 2 levels back.

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180356.png

- ``` mkdir  directoryName ``` --> to make a directory in a specific location

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180434.png


Examples:

- ``` mkdir newFolder ```   --> make a new folder 'newFolder'

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180513.png

- ``` mkdir .NewFolder ```  --> make a hidden directory (also . before a file to make it hidden)

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180544.png

- ``` mkdir A B C D ```     --> make multiple directories at the same time

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 180615.png

- ``` mkdir /home/user/Mydirectory ``` --> make a new folder in a specific location

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 181323.png

- ``` mkdir -p  A/B/C/D ``` --> make a nested directory

### Sample output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 181434.png

### Example output image : c:\Users\amita\Pictures\Screenshots\Screenshot 2024-10-10 181655.png

```
