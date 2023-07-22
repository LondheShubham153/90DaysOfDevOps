Day 3 Task: Basic Linux Commands

Task: What is the linux command to

Prerequisite commands to replicate below

#make 5 folders

```
mkdir folder-{1..5}
```

#go to folder 1

```
cd folder-1
```

#make fileA.txt to fileM.txt

```
touch file{A..M}.txt
```

#start editing fileA

```
vi fileA.txt
```

#make a student list of Bilogy marks

#copy paste below data
```
James Walker    Biology 05/06/2016      31
Velma Clemons   Biology 05/06/2016      43
Kibo Underwood  Biology 05/06/2016      81
Louis Mcgee     Biology 05/06/2016      11
Phyllis Paul    Biology 05/06/2016      18
Zenaida Decker  Biology 05/06/2016      55
Gillian Tillman Biology 05/06/2016      38
Constance Boone Biology 05/06/2016      16
```
#rename it to students.txt

```
mv fileA.txt students.txt
```

### Now begin below commands

### 1. To view what's written in a file.

```
cat students.txt
```

<img width="326" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/edcc40e6-de11-4bed-b142-02a92261f44e">

### 2. To change the access permissions of files.
```
chmod 700 students.txt
ls -l students.txt
chmod 707 students.txt
ls -l students.txt
chmod 070 students.txt
ls -l students.txt
ls -l students.txt fileM.txt
ls
cat students.txt
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/9d5d4ef7-846b-4f6d-8d8a-9555fbbaf1d9)

## 3. To check which commands you have run till now
```
history
```

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/d37caef4-2e65-4ea2-9e60-d2b09d2c9f95)

### 4. To remove a directory/ Folder.
```
rm -r file{F..I}.txt
cd ..
rm -r folder-{3..5}
```
<img width="418" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/635dab12-517d-4310-a244-498315eaeab4">

5. To create a fruits.txt file and to view the content.
6. Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.
7. To Show only top three fruits from the file.
8. To Show only bottom three fruits from the file.
```
vi fruits.txt
Apple
Mango
Banana
Cherry
Kiwi
Orange
Guava
cat fruits.txt
head fruits.txt
head -3 fruits.txt
tail -3 fruits.txt
```
<img width="368" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/82582c1b-25ab-40e8-ad9a-fefa82f93397">

9. To create another file Colors.txt and to view the content.
10. Add content in Colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey.
11. To find the difference between fruits.txt and Colors.txt file.
```
vi colors.txt
Red
Pink
White
Black
Blue
Orange
Purple
Green
Grey
diff colors.txt fruits.txt
diff fruits.txt colors.txt
```
<img width="374" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/8dc85e5b-64e8-4925-bbeb-08d8138728c1">
