## Deep Dive in Git & GitHub.

1) What is Git and why is it important?
ANS:
Git is a popular version control system that helps developers keep track of changes made to their code over time. It allows multiple people to work on the same codebase without overwriting each other's work or losing previous versions of the code.

Git is important because it helps developers collaborate more effectively and work more efficiently. With Git, developers can easily review changes made to the code, revert to previous versions if necessary, and track the progress of a project over time. It also makes it easier to share code and collaborate with other developers around the world. Overall, Git has become an essential tool for software development and is widely used in the industry.

2) What is difference Between Main Branch and Master Branch?
ANS:
In simple terms, the "main" branch and the "master" branch in Git are just two different names for the default branch in a repository. The purpose and functionality of both branches are exactly the same - they both represent the primary development branch in a repository and store the latest version of the code.

The only difference is the naming convention, where "main" is a newer and more inclusive term that some developers and organizations have started using instead of "master". This change in terminology is intended to remove any potentially offensive or exclusionary language from software development practices.

So, technically, there is no practical difference between the "main" branch and the "master" branch in Git, and both can be used interchangeably.

3) Can you explain the difference between Git and GitHub?
ANS:
Git is a tool for version control, while GitHub is a platform for hosting Git repositories and collaborating with other developers.
Git is a version control system that helps developers manage and track changes to their code over time. It allows multiple people to work on the same codebase without overwriting each other's work or losing previous versions of the code. Git is a command-line tool that is installed on a developer's computer.

GitHub, on the other hand, is a web-based platform that provides hosting for Git repositories. It allows developers to store their Git repositories online, collaborate with other developers, and contribute to open-source projects. GitHub provides features like pull requests, issues, and code reviews that make it easier for developers to collaborate and manage their code.
Git and GitHub are two different things that are often used together in software development.

4) How do you create a new repository on GitHub?
ANS: refer the Submission of day08 task.
here's a step-by-step guide on how to create a new repository on GitHub:
 
1. Log in to your GitHub account.
2. Click on the "+" sign in the top-right corner of the screen and select "New repository" from the drop-down menu.
3. On the "Create a new repository" page, enter a name for your repository in the "Repository name" field.
4. You can add a description for your repository in the "Description" field.
5. Choose whether you want your repository to be public or private.
6. Select whether you want to add a README file to your repository. A README file is a good way to provide an overview of your project to others.
7. Click on the "Create repository" button to create your new repository.

Your new repository should now be created on GitHub and you can start adding files and making changes to it. You can also clone the repository to your local machine using Git and start working on it locally.

5) What is difference between local & remote repository? How to connect local to remote
ANS:
In Git, a local repository is the copy of a Git repository that is stored on your local machine, while a remote repository is the copy of the same repository that is stored on a remote server, such as GitHub, GitLab, or Bitbucket.
The main difference between a local and a remote repository is that the local repository is where you make changes to your code, while the remote repository is where you store and share those changes with others.

To connect a local repository to a remote repository, you need to follow these steps:

1. Create a remote repository on a hosting service like GitHub, GitLab, or Bitbucket.
2. In your local repository, use the command "git remote add [remote-name] [remote-url]" to add a remote reference to the remote repository. 
3. Replace [remote-name] with a name of your choice for the remote repository (e.g., "origin"), and replace [remote-url] with the URL of the remote repository (e.g., "https://github.com/your-username/your-repository.git").
4. Use the command "git push [remote-name] [branch-name]" to push your local changes to the remote repository. 
5. Replace [remote-name] with the name you chose for the remote repository in step 2, and replace [branch-name] with the name of the branch you want to push.
Once you have connected your local repository to a remote repository, you can push and pull changes between the two repositories as needed. This allows you to collaborate with other developers, share your code with others, and work on your project from multiple machines.

task-1: 
- Set your user name and email address, which will be associated with your commits.
$ git config --global user.name "userName"
$ git config --global user.email "usermail@mail.com"

![image](https://user-images.githubusercontent.com/119837985/228170957-b6462793-0fb9-4f11-9c0a-bab776f3f557.png)

task-2: 
- Create a repository named "Devops" on GitHub
![image](https://user-images.githubusercontent.com/119837985/228171000-91e159d2-51ca-4a2b-988b-66f61f0ff64d.png)

- Connect your local repository to the repository on GitHub.
![image](https://user-images.githubusercontent.com/119837985/228171061-b6a66ffd-7447-45d2-ba06-b7001e42254d.png)

- Create a new file in Devops/Git/Day-02.txt & add some content to it
![image](https://user-images.githubusercontent.com/119837985/228171102-65074fa0-14af-4a20-b90b-dcc10e2028c8.png)

- Push your local commits to the repository on GitHub

1. git status: New file is added which is still untracked

2. git add . or git add -A: will add all the files ( . = all )

3. git status: Tracked files are shown

4. git commit -m "msg" 

![image](https://user-images.githubusercontent.com/119837985/228171293-801a5724-f9bc-467c-8e35-f3a95190bc00.png)

5. git push origin <branch>  to push the changes to your GitHub repository.

![image](https://user-images.githubusercontent.com/119837985/228171340-653b1893-bda8-4738-abf7-417cd32eaa13.png)

See the changes:
![image](https://user-images.githubusercontent.com/119837985/228171385-605ae7a0-e9d3-4c33-9004-b2cccae9044f.png)
 
 Thanks for Reading 
