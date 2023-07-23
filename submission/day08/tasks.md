# Day 8 Basic Git & GitHub

# Task Install Git on your computer

https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

windows
Just go to https://git-scm.com/download/win and the download will start automatically.
linux
sudo apt install git-all

# Task 2 Create a free account on GitHub 

You can sign up at https://github.com/
Also update basic profile

# Task 3 Create a new repository on GitHub and clone it to your local machine
I have created https://github.com/paragpallavsingh/git_test

I am going to clone the repository in below path
Windows path: F:\Workspace\github
Git bash path: /f/Workspace/github

We'll open installed git bash and go to the above path. Make sure you use the path as described above.
```
cd /f/Workspace/github
git clone https://github.com/paragpallavsingh/git_test.git
cd git_test/
```

# Task 4 Make some changes to a file in the repository and commit them to the repository using Git
# Task 5 Push the changes back to the repository on GitHub
```
ls
vi fileA.txt
git status
git add .
git commit -m "update fileA and push to remote"
git push origin master
```