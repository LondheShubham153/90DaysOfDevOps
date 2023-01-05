### Day 5 Task
If you noticed that there are total 90 sub directories in the directory '2023' of this repository. What did you think, how Shubham sir created 90 directories. Manually one by one or using a script ?

Ofcourse he created all 90 directories within seconds using a bash script.

So todays task is-

Write a bash script createDirectories.sh that when the script is executed with two given arguments (one is directory name and one is number of directories) it creates specified number of directories with a dynamic directory name.

Example 1: When the script is executed as

```./createDirectories.sh day 90```

then it creates 90 directories as ```day1 day2 day3 .... day90```

Example 3: When the script is executed as

```./createDirectories.sh Movie 50```
then it creates 50 directories as ```Movie1 Movie2 Movie3 ...Movie50```

Notes:
You may need to use loops. [Check out this reference: https://www.geeksforgeeks.org/bash-scripting-for-loop/](https://www.geeksforgeeks.org/bash-scripting-for-loop/)
