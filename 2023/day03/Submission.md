Refer my blog on - [Hashnode](https://sumitramchandra.hashnode.dev/basic-linux-commands)
Let's see some basic Linux commands to get you started:

To view what's written in a file.

~ cat <filename>



To change the access permissions of files.

~ chmod 744 <file/folder name>

it will change the access permissions for:

user - read, write and execute

groups - read-only

others - read-only



To check which commands you have run till now.

~ history



To remove a directory/Folder or file.

~rm <file name> --> use to remove files.

~ rmdir <folder name> --> use to remove folder.



To create a devops.txt file and to view the content.

~ touch devops.txt --> This command will create an empty file.

~ cat devops.txt --> use this command to see what's inside the file.

the file is empty so it will show nothing.



Add content in fruits.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.

~ cat > fruits.txt --> using this command you can directly add your content.

or

~vim fruits.txt --> open up an editor and add your content.



Show only the top three fruits from the file.

~ head -3 fruits.txt



Show only the bottom three fruits from the file.

~ tail -3 fruits.txt



To create another file Colors.txt and to view the content.

~ touch Colors.txt --> create an empty file with this command.

~ cat Colors.txt --> See the content.



Add content in Colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, and Grey.

~ vim Colors.txt --> add colors in the vi editor with this command.



To find the difference between the fruits.txt and Colors.txt files.

~ diff fruits.txt Colors.txt



Thanks for reading. Hope you find this helpful.
