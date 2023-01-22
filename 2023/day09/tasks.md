# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers.

## Find the answers by your understandings(Shoulden't be copied by internet & used hand-made diagrams)  of below quistions and Write blog on it.
1) What is Git and why is it important?
Ans => `Git is an version control software`

2) What is difference Between Main Branch and Master Branch?
Ans => `Master Branch is the default branch in git in local environment`
        `Main Branch is the default branch in github when Repo is initilized remotely`

3) Can you explain the difference between Git and GitHub?
Ans => `Git is VCS in local Environment and Github is an Remote Server to store the VCS data`

4) How do you create a new repository on GitHub?
Ans => By typing this in URL `https://github.new`

5) What is difference between local & remote repository? How to connect local to remote? 
Ans => `the local Repo is the repo that is available locally in our machine`
        `Remote repo is the repository that is stored in the remote server on the internet`
        to connect local repo with remote repo `git remote add origin https://github.com/dineshtamang14/Devops.git`

## Tasks
task-1: 
- Set your user name and email address, which will be associated with your commits.
Ans => `git config --global.username "dineshtamang14"`
        `git config --global.email "dineshtamang7263@gmail.com"`

task-2: 
- Create a repository named "Devops" on GitHub
Ans => `mkdir Devops && cd Devops`
        `git init`
        `git add -A`
        `git commit -m "initial commit"`

- Connect your local repository to the repository on GitHub.
Ans => `git remote add origin https://github.com/dineshtamang14/Devops.git`

- Create a new file in Devops/Git/Day-02.txt & add some content to it
Ans => `touch Day-02.txt`
        `echo "This is my Day 9" > Day-02.txt`

- Push your local commits to the repository on GitHub
Ans => `git push origin master`

reff :- https://youtu.be/AT1uxOLsCdk


Note: These steps assume that you have already installed Git on your computer and have created a GitHub account. If you need help with these prerequisites, you can refer to the [day-08](https://github.com/LondheShubham153/90DaysOfDevOps/blob/ee7c53f276edb02a85a97282027028295be17c04/2023/day08/tasks.md)
