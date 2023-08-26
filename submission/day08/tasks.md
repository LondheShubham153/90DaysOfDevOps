# Day 8 Basic Git & GitHub

# Task Install Git on your computer

https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

windows

Just go to https://git-scm.com/download/win and the download will start automatically.

Linux
```
sudo apt install git-all
```
# Task 2 Create a free account on GitHub 

You can sign up at https://github.com/

Also, update basic profile
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/af8fa834-b1d2-4d8b-88f7-7dd2856a8b2b)


# Task 3 Create a new repository on GitHub and clone it to your local machine
I have created https://github.com/paragpallavsingh/git_test
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/3d1a8ccf-eb73-47cd-87ed-bf9cfaf61313)


I am going to clone the repository in the below path on my local system. You can change folder as per your choice
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/8e9d4979-168a-48c3-b956-21c2a5dbdff7)

Windows path: F:\Workspace\github
Git bash path: /f/Workspace/GitHub

We'll open the installed git bash and go to the above path. Make sure you use the path as described above.
```
cd /f/Workspace/github
git clone https://github.com/paragpallavsingh/git_test.git
cd git_test/
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/686aebaf-7c9b-4566-bef6-076d5e7d533f)

# Task 4 Make some changes to a file in the repository and commit them to the repository using Git
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/fe4e4800-248a-4d18-9808-0da784d59de1)

# Task 5 Push the changes back to the repository on GitHub
```
ls
vi fileA.txt
git status
git add .
git commit -m "update fileA and push to remote"
git push origin master
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/5bc468f5-98fc-4118-ad55-887e4e3e8dbf)
