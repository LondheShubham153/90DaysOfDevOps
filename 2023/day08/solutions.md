# Basic Git & GitHub for DevOps Engineers.


## What is Git?
- Git is a version control system that allows you to track changes to files and coordinate work on those files among multiple people. It is commonly used for software development, but it can be used to track changes to any set of files.

With Git, you can keep a record of who made changes to what part of a file, and you can revert back to earlier versions of the file if needed. Git also makes it easy to collaborate with others, as you can share changes and merge the changes made by different people into a single version of a file.

## What is Github?
- GitHub is a web-based platform that provides hosting for version control using Git. It is a subsidiary of Microsoft, and it offers all of the distributed version control and source code management (SCM) functionality of Git as well as adding its own features. GitHub is a very popular platform for developers to share and collaborate on projects, and it is also used for hosting open-source projects.

## What is Version Control? How many types of version controls we have?
- Version control is a system that tracks changes to a file or set of files over time so that you can recall specific versions later. It allows you to revert files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something that might be causing a problem, who introduced an issue and when, and more.

There are two main types of version control systems: centralized version control systems and distributed version control systems.

1) A centralized version control system (CVCS) uses a central server to store all the versions of a project's files. Developers "check out" files from the central server, make changes, and then "check in" the updated files. Examples of CVCS include Subversion and Perforce.

2) A distributed version control system (DVCS) allows developers to "clone" an entire repository, including the entire version history of the project. This means that they have a complete local copy of the repository, including all branches and past versions. Developers can work independently and then later merge their changes back into the main repository. Examples of DVCS include Git, Mercurial, and Darcs.


## Why we use distributed version control over centralized version control? 

1) Better collaboration: In a DVCS, every developer has a full copy of the repository, including the entire history of all changes. This makes it easier for developers to work together, as they don't have to constantly communicate with a central server to commit their changes or to see the changes made by others.

2) Improved speed: Because developers have a local copy of the repository, they can commit their changes and perform other version control actions faster, as they don't have to communicate with a central server.

3) Greater flexibility: With a DVCS, developers can work offline and commit their changes later when they do have an internet connection. They can also choose to share their changes with only a subset of the team, rather than pushing all of their changes to a central server.

4) Enhanced security: In a DVCS, the repository history is stored on multiple servers and computers, which makes it more resistant to data loss. If the central server in a CVCS goes down or the repository becomes corrupted, it can be difficult to recover the lost data.

Overall, the decentralized nature of a DVCS allows for greater collaboration, flexibility, and security, making it a popular choice for many teams.


## Task:

- Install Git on your computer (if it is not already installed). You can download it from the official website at https://git-scm.com/downloads

- Create a free account on GitHub (if you don't already have one). You can sign up at https://github.com/
[Here is my github account](https://www.github.com/Charan-happy/)
- Learn the basics of Git .
        - Here is my understanding of git
              - It is a version control system.
              - Git has three stages they are working area, staging area and remote repository 
   
   Differences between git and github
   | Git | Github |
   |---------|-----------------|
   | it is version controlling system  | It is a source code management platform |
   | It is a software | it is a website |
   | No user administration | user administration |
   | Developed and managed by Linux foundation | Developed and managed by Microsoft |
   

## Exercises:

1) Create a new repository on GitHub and clone it to your local machine
- on our git software we need to give the following command in order to clone from github
In github we can create a new repository . Once we click on our profile on top right then we can able to see our github home . In that on right side there is a new button with blue colour would visible for us .
![image](https://user-images.githubusercontent.com/89054489/211209413-3629d440-19f3-408a-a813-b2b5a74737a7.png)

once we click on new button then we can able to see screen like below image. let me explain each of these things. come down to the image 👇
![image](https://user-images.githubusercontent.com/89054489/211209491-40767236-ddd5-4b5d-83ea-1460291d90a5.png)

- ![image](https://user-images.githubusercontent.com/89054489/211209534-9a7c110e-ffb6-40cb-b5c5-be91a00ceb27.png)
![image](https://user-images.githubusercontent.com/89054489/211209550-8b2452de-0551-404b-904a-cd57ec30ffbb.png)
![image](https://user-images.githubusercontent.com/89054489/211209566-1b174ffd-70df-4835-b11d-ac27643e7c56.png)



  `$ git clone <remote repository url>`
  
3) Make some changes to a file in the repository and commit them to the repository using Git

`$ git commit -m "Uploaded day8 tasks "`

5) Push the changes back to the repository on GitHub


`$ git push -u origin [branchname]`
