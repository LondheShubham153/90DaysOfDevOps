# Deep Dive in Git & GitHub

## task-1: Set your user name and email address, which will be associated with your commit

## task-2: 
* Create a repository named "90DaysOfDevOps" on GitHub
* Connect your local repository to the repository on GitHub.
```
cd /f/Workspace/github
git clone https://github.com/paragpallavsingh/90DaysOfDevOps.git
```
* Create a new file 90DaysOfDevOps\submission\tasks.md & add some content to it.
```
cd 90DaysOfDevOps\submission

#in linux terminal
vi tasks.md
#in windows - make a new file tasks.md in respective folder
```
* Push your local commits to the repository on GitHub
```
git status
git add .
git commit -m "update tasks.md"
git push origin master
```
