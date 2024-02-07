
# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers


![github snap](https://tse1.mm.bing.net/th?id=OIP.LTaRleqoLmUJdwHQma0QoQHaD4&pid=Api&P=0&h=220)








## Introduction
- In the world of DevOps, becoming proficient in Git and GitHub is like equipping yourself with a potent toolkit that enhances teamwork, tracks changes, and organizes projects efficiently. Join us as we delve into the mechanics of Git and GitHub, uncovering their importance and features for seamless collaboration and project control.

### What is Git?

- Git is a distributed version control system designed to track changes in source code during software development.

- It's like a time machine for your code. It's a tool that helps you keep track of changes you make to your software projects.

- Imagine your project as a storybook. Git takes snapshots of your storybook as you write, so you can always go back and see how your story evolved over time.

### Why is Git important?

- Collaboration: Git allows multiple people to work on the same project at the same time without stepping on each other's toes. It's like having different authors working on different chapters of the same book simultaneously.

- Version Control: Git helps you manage different versions of your project. You can experiment with new ideas without worrying about messing up your main story. If something goes wrong, you can always go back to a previous version.

- History Tracking: Git keeps a detailed history of every change you make to your project. It's like having a diary that records every edit and who made it, so you can understand how your project evolved over time.

- Branching: Git allows you to work on new features or fixes in isolation without affecting the main story. It's like writing alternative endings to your book without changing the original plot. You can merge these changes back into the main story when they're ready.

- Backup: Git provides a safe and secure way to backup your project. Even if your computer crashes or gets lost, your project is safe in Git's repository.

### What is the difference between Main Branch and Master Branch?

- Historically, the term "Master Branch" was commonly used in Git to denote the primary branch where the main line of development resides. However, in recent years, the tech community has recognized the potential negative connotations of the term "master" and shifted towards more inclusive language. Thus, many projects now use "Main Branch" as the default term, signifying the primary branch where development progresses.

### Can you explain the difference between Git and GitHub?

- Git is the version control system itself, whereas GitHub is a web-based platform built around Git, offering additional features such as hosting repositories, collaboration tools, and project management functionalities. In essence, Git is the engine powering version control, while GitHub provides a platform for hosting Git repositories and fostering collaboration among developers.


![git Github snap](https://tse4.mm.bing.net/th?id=OIP.-6Gb1--240P1fATIEb-XvgHaDu&pid=Api&P=0&h=220)






### How do you create a new repository on GitHub?

1. Sign in to your GitHub account.



![github account](https://cdn.hashnode.com/res/hashnode/image/upload/v1707149459062/e5cb3d54-adb6-41ed-bd9c-a14baaeec2f7.png?auto=compress,format&format=webp)




2. Click on the "+" icon in the top-right corner and select "New repository."


![new repo](https://cdn.hashnode.com/res/hashnode/image/upload/v1707148264604/6a92df5a-aefd-42d0-8b21-73bc3e389f9b.png?auto=compress,format&format=webp)







3. Name your repository (e.g., "Devops") and provide a brief description.

4. Choose between creating a public or private repository.

5. Optionally, initialize the repository with a README file.

6. Click on "Create repository" to finalize the creation process.


![create repo](https://cdn.hashnode.com/res/hashnode/image/upload/v1707148432770/4754ec6d-3bb4-4dc8-bdc0-48d8f0711d66.png?auto=compress,format&format=webp)








### What is the difference between local & remote repository? How to connect local to remote?

- A local repository resides on your local machine and stores the project files and version history. On the other hand, a remote repository exists on a server, typically hosted on platforms like GitHub, GitLab, or Bitbucket, enabling collaboration and backup.

- To connect a local repository to a remote one on GitHub:

1. Navigate to the repository on GitHub.

2. Copy the repository's URL.


![repo url](https://cdn.hashnode.com/res/hashnode/image/upload/v1707150065343/e0e8068e-a386-4f75-83c2-a12205851c2a.png?auto=compress,format&format=webp)






3. In your local terminal, use the command:  ```git remote add origin <repository_url>```  to link your local repository to the remote one.

4. Verify the connection using  ```git remote -v``` 


![git remote](https://cdn.hashnode.com/res/hashnode/image/upload/v1707149260537/e90e6250-542b-41be-97ec-e37f8b371475.png?auto=compress,format&format=webp)



5. Push your local commits to the remote repository using  ```git push origin main```  (assuming "main" is your main branch name).

## Tasks:

### Task-1:

- Set your username and email address associated with your commits using the commands:

```shell
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
```


![author snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1707150014379/7805419e-a699-4fd1-9aa5-6832c4155a2d.png?auto=compress,format&format=webp)






### Task-2:

1. Create a repository named "Devops" on GitHub following the steps outlined above.


![new repo create](https://cdn.hashnode.com/res/hashnode/image/upload/v1707150056105/6532af62-9731-42ec-bc01-f275c4ebe6a2.png?auto=compress,format&format=webp)






2. Connect your local repository to the GitHub repository using the commands mentioned earlier.

3. Create a new file named "Day-02.txt" in the "Devops/Git" directory.


![new file](https://cdn.hashnode.com/res/hashnode/image/upload/v1707150217446/534d0fc0-1298-4a6b-bac2-28fc1e72b010.png?auto=compress,format&format=webp)



4. Add content to "Day-02.txt" using your preferred text editor.

5. Commit your changes locally using git commit -m "Add Day-02.txt" and then push your changes to the GitHub repository with git push origin main.



![commit snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1707150907625/3caa79f6-a7d6-435f-bcdf-fd3b8fed7fa6.png?auto=compress,format&format=webp)




## Conclusion:

- By embracing Git and GitHub, DevOps engineers empower themselves with efficient version control and collaboration capabilities, paving the way for streamlined development workflows and enhanced project management.


##### For further insights, please visit my Hashnode blog: [Link to my Hashnode blog](https://supriyasurkar.hashnode.dev/day-9-task-deep-dive-in-git-github-for-devops-engineers)
