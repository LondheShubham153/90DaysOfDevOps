Linux commands to perform following tasks:

1. To view what's written in a file.
   --> "cat filename.txt"

2. To change access permission of files.
   --> "chmod mode filename.txt"
   where mode==777,755,etc.

3. To check which command you have run till now.
   --> "history"

4. To remove a directory or a folder.
   --> "rm -r directoryname"

5. To create a fruits.txt file and to view the content.
   --> "touch fruits.txt"
   "cat fruits.txt"

6. Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.
   --> "echo "Apple" > devops.txt
   echo "Mango" >> devops.txt
   echo "Banana" >> devops.txt
   echo "Cherry" >> devops.txt
   echo "Kiwi" >> devops.txt
   echo "Orange" >> devops.txt
   echo "Guava" >> devops.txt"

7. To Show only top three fruits from the file.
   --> "head -3 devops.txt"

8. To Show only bottom three fruits from the file.
   --> "tail -3 devops.txt"

9. To create another file Colors.txt and to view the content.
   --> "touch Colors.txt"
   "cat Colors.txt"

10. Add content in Colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey.
    --> "echo "Red" > Colors.txt
    echo "Pink" >> Colors.txt
    echo "White" >> Colors.txt
    echo "Black" >> Colors.txt
    echo "Blue" >> Colors.txt
    echo "Orange" >> Colors.txt
    echo "Purple" >> Colors.txt
    echo "Grey" >> Colors.txt"

11. To find the difference between fruits.txt and Colors.txt file.
    --> "diff fruits.txt Colors.txt"
