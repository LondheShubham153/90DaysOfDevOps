Day 3 Task: Basic Linux Commands

Task: What is the linux command to

1. To view what's written in a file.
Ans: cat filename 
eg. cat abc.txt

2. To change the access permissions of files.
Ans : chmod command
eg .  chmod 777 abc.sh -> chmod commands changes the permissions of files and directories

3. To check which commands you have run till now.
ANs:  history

4. To remove a directory/ Folder.
Ans:  rmdir folderName
eg. rmdir Documents -> will remove the Documents folder
    rm filename will remove empty file
    rm -rf will remove the file forcefully

5. To create a fruits.txt file and to view the content.
Ans:  touch fileName -> will create a file
eg. touch abc.txt -> will create a file
cat fileName -> will view the content of the file
cat abc.txt

or you can easily use the vi filename and or nano filename to create a file and enter some data in it and using cat filename you ca read the contents of the file.

6. Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.
Ans: we can use echo command to concatenate each line to the devops.txt file.
touch devops.txt
echo Apple >> devops.txt
echo Mango >> devops.txt
echo Banana >> devops.txt
echo Cherry >> devops.txt
echo Kiwi >> devops.txt
echo Orange >> devops.txt
echo Guava >> devops.txt

7. To Show only top three fruits from the file.
Ans: head -n 3 devops.txt -> will show the top n fruits from the file

8. To Show only bottom three fruits from the file.
Ans: tail -n 3 devops.txt -> will show the bottom n fruits from the file

9. To create another file Colors.txt and to view the content.
Ans: touch Colors.txt
     cat Colors.txt

10. Add content in Colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey.
Ans:    echo Red >> Colors.txt
        echo Pink >> Colors.txt
        echo White >> Colors.txt
        echo Black >> Colors.txt
        echo Blue >> Colors.txt
        echo Orange >> Colors.txt
        echo Purple >> Colors.txt
        echo Grey >> Colors.txt
        
11. To find the difference between fruits.txt( here devops.txt file ) and Colors.txt file.
Ans: diff  devops.txt  Colors.txt


Reference: https://www.linkedin.com/pulse/linux-commands-devops-used-day-to-day-activit-chetan-/
