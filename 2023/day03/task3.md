## Task: What is the linux command to

// 1. To view what's written in a file.
-- cat <filename>

// 2. To change the access permissions of files.
-- 1) chmod 777 foldername will give read, write, and execute permissions for everyone. 2) chmod 700 foldername will give read, write, and execute permissions for the user only.

        Permission numbers are:
        0 = ---
        1 = --x
        2 = -w-
        3 = -wx
        4 = r-
        5 = r-x
        6 = rw-
        7 = rwx

// 3. To check which commands you have run till now.
-- history

// 4. To remove a directory/ Folder.
-- rm -d <foldername/directoryname> //to remove empty directory
rm -r <foldername/directoryname> //to remove directory along it's files

// 5. To create a fruits.txt file and to view the content.
-- touch fruits.txt //will create the text file
cat fruits.txt // will view the content of text file in terminal

// 6. Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.
-- vi fruits.txt

// 7. To Show only top three fruits from the file.
-- head -n 3 fruits.txt

// 8. To Show only bottom three fruits from the file.
-- tail -n 3 fruits.txt

// 9. To create another file Colors.txt and to view the content.
-- touch colors.txt //will create the text file
cat colors.txt // will view the content of text file in terminal

// 10. Add content in Colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey.
-- vi colors.txt

// 11. To find the difference between fruits.txt and Colors.txt file.
-- diff fruits.txt colors.txt
