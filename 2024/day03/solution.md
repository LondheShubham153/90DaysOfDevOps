
# Basic Linux Commands - Day 3

**Task 1**: View the content of a file and display line numbers.
```bash
cat -n filename
```
![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%201.png)

Task 2: Change the access permissions of files to make them readable, writable, and executable by the owner only.
```bash
chmod 700 filename
```
![image](https://github.com/harshitsahu2311/90DaysOfDevOps-with-Harshit-Sahu/blob/new-feature/2024/day03/image/Tasking2.png)

Task 3: Check the last 10 commands you have run.
```bash
history | tail -10
```

![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%203.png)

Task 4: Remove a directory and all its contents.
```bash
rm -rf directory_name
```

![image](https://github.com/harshitsahu2311/90DaysOfDevOps-with-Harshit-Sahu/blob/new-feature/2024/day03/image/Tasking4.png)

Task 5: Create a `fruits.txt` file, add content (one fruit per line), and display the content.
```bash
vim fruits.txt
cat fruits.txt
```

![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%205.png)

Task 6: Add content in `devops.txt` (one in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava. Then, append "Pineapple" to the end of the file.
```bash
#Method1
vim devops.txt
cat devops.txt
echo "Pineapple" >> devops.txt

#Method2
echo -e "Apple\nMango\nBanana\nCherry\nKiwi\nOrange\nGuava" > devops.txt
echo "Pineapple" >> devops.txt
```
![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%206.png)
![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%2066.png)

Task 7: Show the first three fruits from the file in reverse order.
```bash
head -n 3 fruits.txt | tac

```

![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%207.png)

Task 8: Show the bottom three fruits from the file, and then sort them alphabetically.
```bash
tail -n 3 fruits.txt | sort

```

![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%208.png)

Task 9: Create another file `Colors.txt`, add content (one color per line), and display the content.
```bash
echo -e "Red\nPink\nWhite\nBlack\nBlue\nOrange\nPurple\nGrey" > Colors.txt
cat Colors.txt
```

![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%209.png)

Task 10: Add content in `Colors.txt` (one in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey. Then, prepend "Yellow" to the beginning of the file.
```bash
echo -e "Yellow\n$(cat Colors.txt)" > Colors.txt #Method1
echo "Yellow" | cat - Colors.txt > temp.txt && mv temp.txt Colors.txt #Method2
cat Colors.txt
```

![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%2010.png)

Task 11: Find and display the lines that are common between `fruits.txt` and `Colors.txt`.
```bash
sort fruits.txt -o fruits_sorted.txt
sort Colors.txt -o colors_sorted.txt
comm -12 fruits_sorted.txt colors_sorted.txt
```

![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%2011.png)

Task 12: Count the number of lines, words, and characters in both `fruits.txt` and `Colors.txt`.
```bash
wc fruits.txt Colors.txt
```
![image](https://github.com/Bhavin213/90DaysOfDevOps/blob/master/2024/day03/image/task%2012.png)
