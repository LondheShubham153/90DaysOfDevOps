### Day 3 Tasks: 
#### Task 1:
Write a single line linux command that finds all the files with a similar pattern and saves the results in a file ```result.txt``` and if there is any error or no such file found then the error message is stored in a file ```err_message.txt```

#### For example, you want to find all the files present in the current directory that ends with ```.sh``` extension.
#### Case 1: There is no error in the command, i.e. some similar files found.
Then the file ```result.txt``` contains the list of returen files. And the file ```err_message.txt``` is empty.

#### Case 2: No such files found or there is some error in the command
Then ```result.txt``` is empty. And file ```err_message.txt```  contains the returned error message.

[This documentation may help you](https://www.redhat.com/sysadmin/linux-shell-redirection-pipelining)


#### Task 2:
Explain the difference between ``` cat > file.txt``` and ``` cat >> file.txt ```
