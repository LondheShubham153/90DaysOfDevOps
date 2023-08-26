# Day 11 Task: Advance Git & GitHub Part 2

## Task 1: Cherry-pick
Git cherry-pick is a command that allows you to select specific commits from one branch and apply them to another.
```
git checkout master
git checkout -b cherrypick/day11
#add a cpfile.txt. We will cherry-pick the changes in the following commit to the master branch
git status
git add .
git commit -m "add cpfile"
git log -n 3 #to find the commit id that needs to be cherry-picked
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/056f1466-05a9-46f3-8583-1a76ada3f710)

```
#actual cherry-picking a commit
git checkout master
git cherry-pick 140275676a03cb9e53416f39d38c0e8ff68d50dc
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/fc8da22c-cd96-4e8b-8e94-9939788ff962)

## Task 2: Git Stash
```
git status
git add .
git stash

```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/cf90ae49-df17-4fa8-b706-09670c92481d)

```
git stash pop
git add .
git push origin day11
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/7d7234a0-4fb1-4a6b-877d-8caaedb5056a)


