# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers.

1) What is Git and why is it important?
- Git is a version control system. As a team member in a team it is important to know about the version controlling tool. It works even in offline. 
- Git is a version control system that is used to track changes to a computer file or set of files over time. It is important because it allows developers to work on a project without overwriting each other's changes, and it allows for easy rollback of changes if necessary. Git also makes it easy for multiple people to work on the same project simultaneously, and it allows for easy collaboration and code review. Git is widely used in the software industry, and it is an essential tool for many software development projects.
3) What is difference Between Main Branch and Master Branch?? 

- In general, the main branch and the master branch are the central branches in a Git repository, and they are used to track the current state of the project's source code. The main branch is the branch that developers are expected to commit their changes to, and it is the branch that is used to create releases of the project. The master branch is a special branch that is used to track the main branch and ensure that the project's source code is always in a stable and deployable state
5) Can you explain the difference between Git and GitHub?
| Git | Github |
|-----|--------|
|It was started in 2005| It was started in 2008|
|It is a software and CLI | It is a website , GUI & service|
| It was developed by Linux foundation | It was developed by Microsoft|
| It is user independent | It is user dependent|
| It is installed locally on the system | It is hosted on the web|
| It can manage source code history | It is a hosting service for git repos |
| It is focused on the code sharing and version controlling | It is focussed on the centralised source code hosting |
| It works without internet | It works only with internet|

7) How do you create a new repository on GitHub?
   To create a new repository on GitHub, follow these steps:

Go to the GitHub website and log in to your account.

Click on the "+" icon in the top right corner of the page and select "New repository" from the dropdown menu.

Enter a name for your repository in the "Repository name" field.

Choose whether you want the repository to be public or private. Public repositories are visible to everyone and can be contributed to by anyone, while private repositories are only visible to you and the people you invite.

Optionally, you can add a description for your repository and select a license for your code.

Click the "Create repository" button to create the repository.

Once the repository is created, you can start adding files to it and committing changes to the repository using Gi

9) What is difference between local & remote repository? How to connect local to remote? 

A local repository is a version control repository that is stored on your local computer. It is a copy of a project that you can work on and make changes to, and it allows you to track the history of your code changes using Git.

A remote repository, on the other hand, is a version control repository that is stored on a remote server, such as GitHub or GitLab. It is a central location where multiple people can collaborate on a project, and it allows developers to share their code changes with each other.

To connect a local repository to a remote repository, you need to use the Git command line. Here are the steps to follow:

Open a terminal window and navigate to the local repository on your computer.

Use the git remote add command to add the URL of the remote repository as a remote for your local repository. For example:
`$ git remote add origin https://github.com/USERNAME/REPOSITORY.git` 

Use the git push command to push the changes from your local repository to the remote repository. For example:
`$ git push origin master `

This will push the changes from your local "master" branch to the "master" branch on the remote repository. You can also specify a different branch name if you want to push to a different branch on the remote repository.


## Tasks
task-1: 
- Set your user name and email address, which will be associated with your commits.

![image](https://user-images.githubusercontent.com/89054489/211333770-5737b062-20a7-41bb-beea-e5b9cc4af10a.png)

![image](https://user-images.githubusercontent.com/89054489/211334779-2e17921e-a867-4944-b838-745ace187f0d.png)

task-2: 
- Create a repository named "Devops" on GitHub
![image](https://user-images.githubusercontent.com/89054489/211334200-614b7c0d-2f40-44e6-9178-d858c3813622.png)

- Connect your local repository to the repository on GitHub.
![image](https://user-images.githubusercontent.com/89054489/211335312-4eeda782-3a0a-4914-a8f3-e04d09d23fff.png)

- Create a new file in Devops/Git/Day-02.txt & add some content to it
![image](https://user-images.githubusercontent.com/89054489/211336194-c190f7fe-8b23-4346-87a5-a1866d0151b8.png)


- Push your local commits to the repository on GitHub
![image](https://user-images.githubusercontent.com/89054489/211336893-4187ab69-05d6-4b95-a861-7ca2ffd330a9.png)

![image](https://user-images.githubusercontent.com/89054489/211337811-1288917b-8b7d-4ec2-a359-9907ada05832.png)

![image](https://user-images.githubusercontent.com/89054489/211337909-c758570e-3e2b-4bcb-b668-f721e1bfc2c0.png)


[Learn onjob githubworkflow](https://profy.dev/project/github-minesweeper)
[Learn git by visuals](https://ohmygit.org/)
