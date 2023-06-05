# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers.

## Find the answers by your understandings(Shoulden't be copied by internet & used hand-made diagrams)  of below quistions and Write blog on it.
1) What is Git and why is it important?
Git is a distributed version control system (DVCS) that allows developers to track changes, collaborate on projects, and manage source code efficiently.

    Version Control: Git helps developers manage and track changes to source code over time. It maintains a complete history of all changes, allowing users to revert to previous versions, compare changes, and understand how the codebase has evolved.

    Collaboration: Git enables seamless collaboration among developers, regardless of their geographical location. Multiple developers can work on the same project simultaneously, merging their changes together. It provides mechanisms for conflict resolution and facilitates teamwork.

    Branching and Merging: Git makes branching and merging operations easy and efficient. Developers can create branches to work on new features, bug fixes, or experiments without affecting the main codebase. Once the changes are tested and approved, they can be merged back into the main branch.

    Distributed Development: Git is a distributed version control system, which means that each developer has a complete copy of the entire repository, including the full history. This allows developers to work offline, make commits locally, and synchronize changes with others when they are online.

    Security and Integrity: Git ensures the integrity and security of source code. Each commit is identified by a unique hash, and the entire repository is checksummed, making it highly resistant to data corruption. Additionally, Git supports authentication and access control mechanisms to protect code repositories.

    Open Source Ecosystem: Git has a vibrant and active open-source community, with a wide range of tools, integrations, and extensions available. Platforms like GitHub, GitLab, and Bitbucket provide hosting services for Git repositories, offering features such as issue tracking, project management, and collaboration tools.

2) What is difference Between Main Branch and Master Branch?? 

In Git, the main difference between the "master" branch and the "main" branch is primarily a matter of naming convention and historical context.

Traditionally, the default branch name in Git repositories was "master." When you initialized a new repository, the first branch created was named "master," and it served as the primary branch for development and version control.

However, the term "master" has been criticized for its historical association with slavery and oppression. As a result, there has been a movement within the Git community to replace the default branch name with a more inclusive and neutral term. This movement gained traction, and many popular software platforms and organizations, including GitHub and GitLab, decided to adopt "main" as the default branch name instead of "master."

From a technical perspective, the main branch (whether it's named "master" or "main") typically serves as the default branch in a Git repository. It is often considered the stable branch that contains the latest production-ready code. Developers create and work on feature branches or topic branches, and once their changes are tested and approved, they merge them into the main branch.

To summarize, the difference between the "master" and "main" branches is primarily a matter of naming convention and the historical context surrounding those terms. Functionally, they serve the same purpose as the primary branch in a Git repository.


3) Can you explain the difference between Git and GitHub?
Git:
Git is a distributed version control system (DVCS) that allows developers to manage and track changes to source code. It is a command-line tool that runs locally on a developer's machine. Git enables version control by creating a repository that contains the complete history of the project, including all the changes made to the codebase over time. Developers can create branches, make commits, merge changes, and revert to previous versions easily using Git. It provides features like distributed development, branching, merging, and conflict resolution. Git is not dependent on any specific platform or service and can be used independently on local repositories.

GitHub:
GitHub, on the other hand, is a web-based platform that provides hosting services for Git repositories. It serves as a remote repository where developers can store their Git repositories and collaborate with others. GitHub enhances the capabilities of Git by offering a graphical user interface (GUI), web-based code browsing, pull requests, issue tracking, project management tools, and more. It adds a layer of collaboration and social features to Git, making it easier for teams to work together and contribute to projects. GitHub also provides additional features such as continuous integration, deployment pipelines, and extensive community support. However, it's important to note that GitHub is not the only platform that hosts Git repositories. Other popular options include GitLab and Bitbucket.

Git is a version control system. It is a tool that helps you to track changes to your code. Git is a distributed system, which means that you can use it to track changes to your code on your own computer, without having to connect to a server.

GitHub is a web-based hosting service for Git repositories. A repository is a collection of files that are tracked by Git. GitHub allows you to store your Git repositories online, and it provides a number of features that make it easy to collaborate on projects with other developers.

In simple terms, you can use git without Github, but you cannot use GitHub without Git.

4) How do you create a new repository on GitHub?

To create a new repository on GitHub, you can follow these steps:

    Go to the GitHub website and sign in to your account.
    Click on the "+" button in the top right corner of the page.
    Select "New Repository" from the menu.
    Enter a name for your repository.
    Select whether you want your repository to be public or private.
    (Optional) Add a description for your repository.
    (Optional) Initialize your repository with a README file.
    Click on the "Create repository" button.

Your new repository will be created and you will be taken to the repository's page. You can then start adding files to your repository and committing changes.

Here are some additional details about creating a new repository on GitHub:

    The name of your repository should be descriptive and easy to remember.
    You can choose to make your repository public or private. Public repositories are visible to everyone, while private repositories are only visible to you and the people you invite.
    A README file is a text file that provides information about your repository. It is a good idea to include a README file in every repository you create.



5) What is difference between local & remote repository? How to connect local to remote? 

A local repository and a remote repository are two separate copies of a Git repository that serve different purposes.

Local Repository:
A local repository is the copy of a Git repository that resides on your local machine. It contains the entire history of the project, including all the branches, commits, and files. The local repository allows you to make changes to the code, create branches, commit changes, merge branches, and perform other Git operations. It provides a workspace where you can develop and test your code. The local repository is typically stored in a directory on your computer.

Remote Repository:
A remote repository, on the other hand, is a copy of the Git repository that is hosted on a remote server or a cloud-based platform like GitHub, GitLab, or Bitbucket. The remote repository serves as a central location where multiple developers can collaborate, share their changes, and synchronize their work. It acts as a shared repository accessible to team members. Remote repositories enable seamless collaboration, allow for code review through pull requests, and provide a backup and central reference for the project. Remote repositories can also have additional features like issue tracking, project management tools, and continuous integration capabilities.

To connect your local repository to a remote repository, you typically need to follow these steps:

    Create a remote repository: If you haven't already created a remote repository, you can do so on a hosting platform like GitHub, GitLab, or Bitbucket. Follow the platform-specific instructions to create a new repository.

    Get the remote repository URL: Once the remote repository is created, you'll need to obtain its URL. This URL is used to establish the connection between your local and remote repositories. You can find the repository URL on the remote hosting platform.

    Set up the remote in your local repository: Open a terminal or command prompt and navigate to the directory of your local repository. Use the git remote add command followed by a name for the remote (e.g., "origin") and the repository URL. For example:

csharp

git remote add origin https://github.com/your-username/your-repo.git

    Verify the connection: You can verify if the remote is successfully added to your local repository by using the git remote -v command. It will display the remote repository URL associated with the specified name.

    Push changes to the remote repository: After establishing the connection, you can push your local repository changes to the remote repository using the git push command. This command uploads your local commits, branches, and files to the remote repository. For example:

css

git push -u origin main

This command pushes the changes from the local "main" branch to the remote repository named "origin." The -u flag sets the upstream branch, allowing you to simply use git push in the future.

Once connected, you can continue working locally, making changes, committing them, and pushing them to the remote repository to collaborate with others and synchronize your work.

## Tasks
task-1: 
- Set your user name and email address, which will be associated with your commits.



task-2: 
- Create a repository named "Devops" on GitHub
- Connect your local repository to the repository on GitHub.
- Create a new file in Devops/Git/Day-02.txt & add some content to it
- Push your local commits to the repository on GitHub

reff :- https://youtu.be/AT1uxOLsCdk


Note: These steps assume that you have already installed Git on your computer and have created a GitHub account. If you need help with these prerequisites, you can refer to the [day-08](https://github.com/LondheShubham153/90DaysOfDevOps/blob/ee7c53f276edb02a85a97282027028295be17c04/2023/day08/tasks.md)
