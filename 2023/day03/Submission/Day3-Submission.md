### This is Day03 submission file:

#### Are you ready to dive into the world of Linux commands? Let's explore some fundamental commands that every Linux user should know.



![Linux Commands](https://tse3.mm.bing.net/th?id=OIP.LWdA65jkf_aChyhZ_JiAsQHaD4&pid=Api&P=0&h=220)




1. Viewing the Contents of a File: To see what's written in a file, you can use the cat command. For example:


```shell
cat filename.txt
```


![Cat snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516057621/6f4bdac4-25c0-4946-b140-856d86cb8743.png?auto=compress,format&format=webp)



2. Changing File Access Permissions: To modify the access permissions of files, you can use the chmod command. For instance:


```shell
chmod 700 filename
```

![chmod snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516352458/fb512539-91ac-4fae-9d7b-cd811dd49454.png?auto=compress,format&format=webp)




- The first digit (7) indicates that the owner of the file (supriya.txt) has full permissions, meaning they can read, write, and execute the file.

- The second digit (0) indicates that the group owner of the file does not have any permissions.

- The third digit (0) indicates that other users (not the owner or in the group) also do not have any permissions.

- So, in simple terms, the command chmod 700 supriya.txt grants the owner of the file supriya.txt full control over the file, while denying any access to the group owner and other users.

- This ensures that only the owner has the ability to read from, write to, and execute the supriya.txt file.

3. Checking Command History: To review the commands you've executed previously, simply type:


```shell
history
```


![History snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516405162/ba97bd61-ca06-418b-ab30-0e8f4c06abaf.png?auto=compress,format&format=webp)



4. Removing a Directory/Folder: To delete a directory, use the rmdir command. Be cautious, as it removes empty directories.


```shell
rmdir directory_name
```

![rmdir snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516511415/91dcf331-2cb4-4115-8551-ec1dbf56c01c.png?auto=compress,format&format=webp)



5. Creating and Viewing a File: To create a file named fruits.txt and view its content, execute:

```shell
touch fruits.txt
cat fruits.txt
```


![touch and cat snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516653051/a0d3449e-8b71-40c4-8f66-cfc51a6e55b6.png?auto=compress,format&format=webp)


6. Adding Content to a File: To add content to the devops.txt file, one item per line, you can use a text editor like nano or simply append with echo:


```shell
echo -e "Apple\nMango\nBanana\nCherry\nKiwi\nOrange\nGuava" > devops.txt
```

![echo snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516716194/3ae1e42d-6263-439e-beb9-80cff33b7fc4.png?auto=compress,format&format=webp)



7. Displaying Top Three Fruits: To display only the top three fruits from the file, you can use the head command:

```shell
head -n 3 devops.txt
```

![head snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516738820/0d2944f1-404c-417c-92ee-411628d64b6e.png?auto=compress,format&format=webp)



8. Showing Bottom Three Fruits: To show only the bottom three fruits from the file, utilize the tail command:

```shell
tail -n 3 devops.txt
```

![tail snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706516764992/ea66e0e3-0e7b-4959-b996-a4cc52815fa7.png?auto=compress,format&format=webp)


9. Creating and Viewing Another File: Create a file named Colors.txt and view its content:

```shell
touch Colors.txt
cat Colors.txt
```

![touch and cat snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706517260382/4772e288-0a7c-4cce-ba4a-b7bbd0f6655d.png?auto=compress,format&format=webp)



10. Adding Content to Colors.txt: Add colors to the Colors.txt file, one per line:

```shell
echo -e "Red\nPink\nWhite\nBlack\nBlue\nOrange\nPurple\nGrey" > Colors.txt
```


![echo snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706517370974/a19f5b6d-e368-445c-9037-011f15bb57e6.png?auto=compress,format&format=webp)


11. Finding Differences Between Files: To identify the differences between fruits.txt and Colors.txt, use the diff command:

```shell
diff fruits.txt Colors.txt
```

![diff snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706517557767/592e1b34-e5c1-4037-b470-bea91e816460.png?auto=compress,format&format=webp)



#### These Linux commands form the foundation of your journey into the world of Linux.


For further insights, please visit my Hashnode blog: [Link to my Hashnode blog](https://supriyasurkar.hashnode.dev/day-3-task-basic-linux-commands)
