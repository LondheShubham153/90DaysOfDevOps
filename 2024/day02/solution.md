## Basic Linux Commands

### Listing Commands

- ```bash
  ls 
  ``` 

- #### List the subdirectories and files available in the present directory.

#### Sample output image: 

![ls:](./images/Screenshot%202024-10-10%20175519.png)

---


## Examples:

- ```bash
  ls -l
  ``` 

- #### List the files and directories in long list format with extra information.

#### Sample output image: 

![ls -l:](./images/Screenshot%202024-10-10%20175531.png)

---


- ```bash
  ls -a
  ``` 

- #### List all including hidden files and directories.

#### Sample output image: 

![ls -a:](./images/Screenshot%202024-10-10%20175558.png)

---


- ```bash
  ls *.sh
  ``` 

- #### List all the files having .sh extension.

#### Sample output image: 

![ls *.sh:](./images/Screenshot%202024-10-10%20175830.png)

---


- ```bash
  ls -i
  ``` 

- #### List the files and directories with index numbers (inodes).

#### Sample output image: 

![ls -i:](./images/Screenshot%202024-10-10%20175853.png)

---


- ```bash
  ls -d */
  ``` 

- #### List only directories (we can also specify a pattern).

#### Sample output image: 

![ls -d */:](./images/Screenshot%202024-10-10%20175920.png)

---


### Directory Commands

- ```bash
  pwd
  ``` 

- #### Print working directory. Gives the present working directory.

#### Sample output image: 

![pwd:](./images/Screenshot%202024-10-10%20175934.png)

---


- ```bash
  cd path_to_directory
  ``` 

- #### Change directory to the provided path.

#### Sample output image: 

![cd home:](./images/Screenshot%202024-10-10%20180007.png)

---


- ```bash
  cd ~
  ``` 
or just 

- ```bash
  cd
  ``` 

- #### Change directory to the home directory.

#### Sample output image 1: 

![cd ~:](./images/Screenshot%202024-10-10%20180104.png)

#### Sample output image 2: 

![cd:](./images/Screenshot%202024-10-10%20180120.png)

---


- ```bash
  cd -
  ``` 

- #### Go to the last working directory.

#### Sample output image: 

![cd -:](./images/Screenshot%202024-10-10%20180145.png)

---


- ```bash
  cd ..
  ``` 

- #### Change directory to one step back.

#### Sample output image: 

![cd ..:](./images/Screenshot%202024-10-10%20180259.png)

---


- ```bash
  cd ../..
  ``` 

- #### Change directory to 2 levels back.

#### Sample output image: 

![cd ../..:](./images/Screenshot%202024-10-10%20180356.png)

---


- ```bash
  mkdir directoryName
  ``` 

- #### Make a directory in a specific location.

#### Sample output image: 

![mkdir devops:](./images/Screenshot%202024-10-10%20180434.png)

---


## Examples:

- ```bash
  mkdir newFolder
  ``` 

- #### Make a new folder 'newFolder'.

#### Sample output image: 

![mkdir newFolder:](./images/Screenshot%202024-10-10%20180513.png)

---


- ```bash
  mkdir .NewFolder
  ``` 

- #### Make a hidden directory (also . before a file to make it hidden).

#### Sample output image: 

![mkdir .NewFolder:](./images/Screenshot%202024-10-10%20180544.png)

---


- ```bash
  mkdir A B C D
  ``` 

- #### Make multiple directories at the same time.

#### Sample output image: 

![mkdir D E V O P S:](./images/Screenshot%202024-10-10%20180615.png)

---


- ```bash
  mkdir /home/user/Mydirectory
  ``` 

- #### Make a new folder in a specific location.

#### Sample output image: 

![mkdir /home/ubuntu/Shubham:](./images/Screenshot%202024-10-10%20181323.png)

---


- ```bash
  mkdir -p A/B/C/D
  ``` 

- #### Make a nested directory.

#### Sample output image: 

![mkdir -p A/B/C/D:](./images/Screenshot%202024-10-10%20181434.png)

#### Example output image: 

![mkdir -p amitabh/shubham/devops:](./images/Screenshot%202024-10-10%20181655.png)

---
