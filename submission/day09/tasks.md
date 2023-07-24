# Deep Dive in Git & GitHub

## task-1: Set your user name and email address, which will be associated with your commit
```
git config --global user.name "Parag Pallav Singh"
git config --global user.email "thxxxxparag@gmail.com"
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/c4826de5-0060-41c1-b5a1-c10b2540070b)

## task-2: 
* Create a repository named "90DaysOfDevOps" on GitHub

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/360d6d91-20a0-4e5b-9432-ca225a2da7e2)
 
* Connect your local repository to the repository on GitHub.
```
cd /f/Workspace/github
git clone https://github.com/paragpallavsingh/90DaysOfDevOps.git
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/792d3314-0713-48f6-82d6-df29c10ab246)


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
