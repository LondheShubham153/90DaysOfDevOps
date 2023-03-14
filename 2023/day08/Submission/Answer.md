# Day 8 Task: Basic Git & GitHub for DevOps Engineers.


## What is **`Git`**?
Git is a version control system that allows you to track changes to files and coordinate work on those files among multiple people. It is commonly used for software development, but it can be used to track changes to any set of files.

With Git, you can keep a record of who made changes to what part of a file, and you can revert back to earlier versions of the file if needed. Git also makes it easy to collaborate with others, as you can share changes and merge the changes made by different people into a single version of a file.

## What is **`Github`**?
GitHub is a web-based platform that provides hosting for version control using Git. It is a subsidiary of Microsoft, and it offers all of the distributed version control and source code management (SCM) functionality of Git as well as adding its own features. GitHub is a very popular platform for developers to share and collaborate on projects, and it is also used for hosting open-source projects.

## What is **`Version Control`**? How many types of version controls we have?
Version control is a system that tracks changes to a file or set of files over time so that you can recall specific versions later. It allows you to revert files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something that might be causing a problem, who introduced an issue and when, and more.

There are two main types of version control systems: centralized version control systems and distributed version control systems.

1) A centralized version control system (CVCS) uses a central server to store all the versions of a project's files. Developers "check out" files from the central server, make changes, and then "check in" the updated files. Examples of CVCS include Subversion and Perforce.

2) A distributed version control system (DVCS) allows developers to "clone" an entire repository, including the entire version history of the project. This means that they have a complete local copy of the repository, including all branches and past versions. Developers can work independently and then later merge their changes back into the main repository. Examples of DVCS include Git, Mercurial, and Darcs.


## Why we use distributed version control over centralized version control? 

1) **`Better collaboration`**: In a DVCS, every developer has a full copy of the repository, including the entire history of all changes. This makes it easier for developers to work together, as they don't have to constantly communicate with a central server to commit their changes or to see the changes made by others.

2) **`Improved speed`**: Because developers have a local copy of the repository, they can commit their changes and perform other version control actions faster, as they don't have to communicate with a central server.

3) **`Greater flexibility`**: With a DVCS, developers can work offline and commit their changes later when they do have an internet connection. They can also choose to share their changes with only a subset of the team, rather than pushing all of their changes to a central server.

4) **`Enhanced security`**: In a DVCS, the repository history is stored on multiple servers and computers, which makes it more resistant to data loss. If the central server in a CVCS goes down or the repository becomes corrupted, it can be difficult to recover the lost data.

Overall, the decentralized nature of a DVCS allows for **greater collaboration**, **flexibility**, and **security**, making it a popular choice for many teams.

---

## Prerequisite:

- Install Git on your computer (Windows or Linux)
### For Windows
- https://git-scm.com/download/win
### For Linux
- run command on Terminal `sudo apt install git`
- check version ` git -- version`

![Git install linux](https://user-images.githubusercontent.com/76991475/225035147-cc169d85-d818-458c-8195-59aa2cdce29d.png)

- After installation **`git`** create free account on **`GitHub`**  https://github.com/

---
## Exercises:

## Create a new repository on GitHub and clone it to your local machine.

![new repo on github](https://user-images.githubusercontent.com/76991475/225039361-0e5210c4-1e98-44de-88a5-be24d3c9ca28.png)

- hit  `create repository` 🎉Congratulation!! we just created our first repository on GitHub.

- Now we land on this page.

![new repo1](https://user-images.githubusercontent.com/76991475/225040414-27f78fc6-ab6b-43e4-8d86-e04cdecae561.png)

- Now we will clone that repository by copying all the elements from GitHub to our local Repository(Here we have use HTTPS method cloning).
- command `git clone https://github.com/Rohit312001/Demo-Project.git` 

![new repo 1](https://user-images.githubusercontent.com/76991475/225042651-c9b7ac4e-dd33-4d28-a1ee-8cae336cab92.gif)

- After cloning to local repository.

![git clone](https://user-images.githubusercontent.com/76991475/225044153-c1a0ddf9-5f4d-47de-9c3c-b7dfc3816835.png)

--- 
## Make some changes to a file in the repository and commit them to the repository using Git

- Now we will some files in that empty repository and upload it to GitHub.

![file for github](https://user-images.githubusercontent.com/76991475/225046987-8cc640d5-496e-4ab3-b98c-178792b1a668.png)
- Save the file and do following commands.

**Commands**:
- **`git add <filename>`** : To add file into staging area.
- **`git status`** : To check which file is **staged** or **unstaged**.
- **`git push -u origin master`** : To push the file from `local repository` to online `GitHub Account`.

---

## Push the changes back to the repository on GitHub.

![git push](https://user-images.githubusercontent.com/76991475/225052341-bf417d8d-90e5-4ebd-b9fa-201457a57e38.png)

**Now we will check the GitHub file repository on GitHub Account**.

![Update  file on github](https://user-images.githubusercontent.com/76991475/225053703-f0884142-e26c-4084-99ce-57a096730e8b.png)