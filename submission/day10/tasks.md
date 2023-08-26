# Day 10 Task: Advance Git & GitHub

# Task 1: Git Branch
```
git checkout master
git checkout -b day10
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/5fc9ba30-4159-41fb-96c8-4f17f1aebf71)


# Task2: Update some files and push the branch to the remote
```
git status
git add .
git commit -m "Add feature 1"
git push origin day10
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/ddca6e76-2dd7-44f2-9541-7c26abc06402)

# Task 3: Git Revert

Assume you are adding a new feature B. and updating small tasks in small commits. 
You accidentally modified the content of feature A. Now you need to revert that change
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/848ee298-3dd8-4f01-b364-5bf5fcb87c36)

```
# Try to revert the wrong code using the commit id
git log -n 5
git revert 0254bc3099d39a9c6b2d2d0c0427c3b7a282d3eb
#if there's a conflict, remove that using mergetool=> p4merge
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/cc6cf745-1376-4dae-8c96-7d4e0d3df941)
# Task 4: Git Merge
Now you are done with newfeature and you try to merge to main branch
```
git checkout master #target branch
git merge day10 #branch to be merged
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/23f471fa-efe6-40f5-a1ff-9afb7aecbdad)

# Task 4: Git rebase
Rebasing is the process of moving or combining a sequence of commits to a new base commit
```
git rebase day10
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/27974a81-39e5-42aa-83e3-d18bed621244)

After rebase, the out looks like
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/c82da8b0-e591-458f-92e0-78b75c515696)

## Addon
When you are done with merging your changes to main/master, you can safely remove branches.
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/fa3fdc02-7b52-4bb8-9230-b9a5b09412ec)

