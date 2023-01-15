Day 3 Task: Basic Linux Commands

Task: What is the linux command to

1. To view what's written in a file.
ans => `cat filename`
2. To change the access permissions of files.
ans => `chmod 400 filename`
3. To check which commands you have run till now.
ans => `history`
4. To remove a directory/ Folder.
ans => `rm -rf directory_name`
5. To create a fruits.txt file and to view the content.
ans => `vim fruits.txt`
       `cat fruits.txt`
6. Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.
ans => `for i in Apple Mango Banana Cherry Kiwi Orange Guava; do $i >> devops.txt; done`
7. To Show only top three fruits from the file.
ans => `head 3 fruits.txt`
8. To Show only bottom three fruits from the file.
ans => `tail 3 fruits.txt`
9. To create another file Colors.txt and to view the content.
ans => `vim Colors.txt`
       `cat Colors.txt`
10. Add content in Colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey.
ans => `for i in Red Pink White Black Blue Orange Purple Grey; do $i >> Colors.txt; done`
11. To find the difference between fruits.txt and Colors.txt file.
ans => `diff fruits.txt Colors.txt`


Reference: https://www.linkedin.com/pulse/linux-commands-devops-used-day-to-day-activit-chetan-/
