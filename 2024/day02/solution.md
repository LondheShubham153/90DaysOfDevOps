## Basic linux commands

### Listing commands

```ls option_flag arguments``` --> list the subdirectories and files available in the present directory

#### Sample output image: 
![ls:](./images/Screenshot%202024-10-10%20175519.png)

Examples:

- ```ls -l``` --> list the files and directories in long list format with extra information

#### Sample output image: 
![ls -l:](./images/Screenshot%202024-10-10%20175531.png)

- ```ls -a``` --> list all including hidden files and directories

#### Sample output image: 
![ls -a:](./images/Screenshot%202024-10-10%20175558.png)

- ```ls *.sh``` --> list all the files having .sh extension

#### Sample output image: 
![ls *.sh:](./images/Screenshot%202024-10-10%20175830.png)

- ```ls -i``` --> list the files and directories with index numbers (inodes)

#### Sample output image: 
![ls -i:](./images/Screenshot%202024-10-10%20175853.png)

- ```ls -d */``` --> list only directories (we can also specify a pattern)

#### Sample output image: 
![ls -d */:](./images/Screenshot%202024-10-10%20175920.png)

### Directory commands

- ```pwd``` --> print working directory. Gives the present working directory.

#### Sample output image: 
![pwd:](./images/Screenshot%202024-10-10%20175934.png)

- ```cd path_to_directory``` --> change directory to the provided path

#### Sample output image: 
![cd home:](./images/Screenshot%202024-10-10%20180007.png)

- ```cd ~``` or just ```cd``` --> change directory to the home directory

#### Sample output image 1: 
![cd ~:](./images/Screenshot%202024-10-10%20180104.png)

#### Sample output image 2: 
![cd:](./images/Screenshot%202024-10-10%20180120.png)

- ```cd -``` --> go to the last working directory

#### Sample output image: 
![cd -:](./images/Screenshot%202024-10-10%20180145.png)

- ```cd ..``` --> change directory to one step back

#### Sample output image: 
![cd ..:](./images/Screenshot%202024-10-10%20180259.png)

- ```cd ../..``` --> change directory to 2 levels back

#### Sample output image: 
![cd ../..:](./images/Screenshot%202024-10-10%20180356.png)

- ```mkdir directoryName``` --> make a directory in a specific location

#### Sample output image: 
![mkdir devops:](./images/Screenshot%202024-10-10%20180434.png)

Examples:

- ```mkdir newFolder``` --> make a new folder 'newFolder'

#### Sample output image: 
![mkdir newFolder:](./images/Screenshot%202024-10-10%20180513.png)

- ```mkdir .NewFolder``` --> make a hidden directory (also . before a file to make it hidden)

#### Sample output image: 
![mkdir .NewFolder:](./images/Screenshot%202024-10-10%20180544.png)

- ```mkdir A B C D``` --> make multiple directories at the same time

#### Sample output image: 
![mkdir D E V O P S:](./images/Screenshot%202024-10-10%20180615.png)

- ```mkdir /home/user/Mydirectory``` --> make a new folder in a specific location

#### Sample output image: 
![mkdir /home/ubuntu/Shubham:](./images/Screenshot%202024-10-10%20181323.png)

- ```mkdir -p A/B/C/D``` --> make a nested directory

#### Sample output image: 
![mkdir -p A/B/C/D:](./images/Screenshot%202024-10-10%20181434.png)

#### Example output image: 
![mkdir -p amitabh/shubham/devops:](./images/Screenshot%202024-10-10%20181655.png)

