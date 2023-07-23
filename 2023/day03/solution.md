
# Solution for day03 Tasks
# Adding screenshots for reference

1. To view what's written in a file.
    - ``` cat <filename> ``` 

2. To change the access permissions of files.
    - ``` chmod 777 foldername ``` : This will allow user, group and others to perform all three operations i.e., read, write and execute on the respective file/folder.

3. To check which commands you have run till now.
    - ``` history ``` 

4. To remove a directory/folder. 
    - ``` rmdir <foldername> ``` or ``` rm -r <foldername> ```

5. To create a fruits.txt file and to view the content.
    - ``` vim fruits.txt ``` : This will open a new file in vim editor and we can then insert the contents of the file.
    - ``` cat fruits.txt ``` : To view the content of the file.

6. Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.
    - ``` vim devops.txt ``` : This will open a new file in vim editor and we can then insert the contents of the file.

7. To show only top three fruits from the file.
    - ``` head -3 devops.txt ``` : This will print the top three fruits from the file.

8. To show only bottom three fruits from the file.
    - ``` tail -3 devops.txt ``` : This will print the bottom three fruits from the file.
9. To create another file colors.txt and to view the content.
    - ``` vim colors.txt ``` : This will open a new file in vim editor and we can then insert the contents of the file.
    - ``` cat colors.txt ``` : To view the content of the file.

10. Add content in colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey.
    - ``` vim colors.txt ``` : This will open a new file in vim editor and we can then insert the contents of the file.

11. To find the difference between fruits.txt and colors.txt file.
    - ``` diff fruits.txt colors.txt ``` : This will print the difference between the two mentioned files.