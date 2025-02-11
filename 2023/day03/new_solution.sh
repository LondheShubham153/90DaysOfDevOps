#!/bin/bash
#how to give file creation dir creation permission to new user so he can create file with out sudo
#To allow a new user to create files and directories without using sudo, you need to grant them the necessary permissions
#on the desired directory. Here’s how you can do that:
#Add User to a Group: First, ensure the user is part of a group that has write permissions on the directory.
#You can create a new group and add the user to it, or use an existing group.

sudo groupadd mygroup       # Create a new group (if needed)
sudo usermod -aG mygroup newuser  # Add user to the group

#Change Group Ownership of the Directory: Change the group ownership of the directory where you want the user to have write permissions.

sudo chown -R :mygroup /path/to/directory

#Set Directory Permissions: Grant write permissions to the group on the directory and ensure new files/directories created within inherit these permissions.

sudo chmod -R 775 /path/to/directory        # Grant read/write/execute permissions
sudo chmod g+s /path/to/directory           # Set the 'setgid' bit for inheritance
su - newuser                                # Switch to the new user
touch /path/to/directory/newfile.txt        # Create a file
mkdir /path/to/directory/newdirectory       # Create a directory

#By following these steps, the new user should be able to create files and directories without needing sudo. Let me know if you have any questions or run into issues!

#Here are the Linux commands to accomplish each task:

## View the content of a file and display line numbers
echo "Viewing file with line numbers:"
nl filename
cat -n filename


> cat -n file.txt
     1  i
     2  am
     3  the
     4  onwer
     5  of this
     6  file
>


#Change the access permissions of files to make them readable, writable, and executable by the owner only
chmod 700 filename

> chmod 700 file.txt
> ls -la
total 12
drwxr-xr-x 2 root  root  4096 Feb 11 15:47 .
drwxr-xr-x 5 shrij shrij 4096 Dec 15 06:41 ..
-rwx------ 1 shrij shrij   30 Feb 11 18:24 file.txt

#Check the last 10 commands you have run
history | tail -10
> history | tail -10
  970  ls -al
  971  whoami
  972  sudo chown $(whoami):$(whoami) file.txt
  973  ls -al
  974  vim file.txt
  975  cat -n filename
  976  cat -n file.txt
  977  chmod 700 file.txt
  978  ls -la
  979  history | tail -10


#Remove a directory and all its contents
rm -rf directory_name

> sudo mkdir temp
> sudo rm -rf directory_name
> ls
file.txt  temp
> sudo rm -rf temp
> ls
file.txt

#Create fruits.txt, add content, and display the content
echo -e "Apple\nMango\nBanana\nCherry\nKiwi\nOrange\nGuava" > fruits.txt
cat fruits.txt

> echo -e "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"> alpha.txt
> cat alpha.txt
a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
>

#Append "Pineapple" to the end of fruits.txt
echo "Pineapple" >> fruits.txt
> echo "qqqqqqqqqqqqqqqqqq">> alpha.txt
> cat alpha.txt
a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
1.2.3.4.5
1\n2\n3\n4\n5
1/n2/n3\n4\n5
1/n2/n3
4
5
1

3
4
5
qqqqqqqqqqqqqqqqqq

#Show the first three fruits from the file in reverse order
head -3 fruits.txt | tac

1\n2\n3\n4\n5
1.2.3.4.5
a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z

#Show the bottom three fruits from the file and then sort them alphabetically
tail -3 fruits.txt | sort
> tail -3 alpha.txt | sort
5
4
3

#Create Colors.txt, add content, and display the content
echo -e "Red\nPink\nWhite\nBlack\nBlue\nOrange\nPurple\nGrey" > Colors.txt
cat Colors.txt
> echo -e "Red\nPink\nWhite\nBlack\nBlue\nOrange\nPurple\nGrey" > Colors.txt
cat Colors.txt
Red
Pink
White
Black
Blue
Orange
Purple
Grey

#Prepend "Yellow" to the beginning of Colors.txt
echo -e "Tale\n$(cat Colors.txt)" > Colors.txt
> echo -e "Tale\n$(cat Colors.txt)" > Colors.txt
> cat Colors.txt
Tale
yellow
Red
Pink
White
Black
Blue
Orange
Purple
Grey

#Find and display the lines that are common between fruits.txt and Colors.txt
comm -12 <(sort fruits.txt) <(sort Colors.txt)
> comm -12 <(sort fruits.txt) <(sort Colors.txt)
Orange

#Count the number of lines, words, and characters in both fruits.txt and Colors.txt
wc fruits.txt Colors.txt
> wc fruits.txt Colors.txt alpha.txt
  7   7  44 fruits.txt
 10  10  57 Colors.txt
 14  13 137 alpha.txt
 31  30 238 total