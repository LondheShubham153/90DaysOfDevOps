This is Day 8 TASK

## Introduction

- Welcome to Day 8 of our DevOps journey! Today, we're diving into the world of Git and GitHub, two indispensable tools for version control and collaboration in software development.

- Let's explore what Git and GitHub are, why they matter, and how you can start using them effectively.

## What is Git?

- Git is like a magic wand for tracking changes in files and coordinating teamwork. Imagine you're working on a project with others. Git helps you keep track of who changed what, when, and why.

- It's like having a superpower to rewind time and undo mistakes, ensuring your project stays on track.

With Git, you can:

- Track Changes: Git remembers every tweak and tweak-back, creating a timeline of your project's evolution.

- Collaborate Seamlessly: You and your team can work on the same project without stepping on each other's toes. Git merges everyone's contributions gracefully.

- Undo and Redo: Made a wrong turn? No worries! Git lets you rewind to a previous version, saving you from disaster.




![git](https://cdn.educba.com/academy/wp-content/uploads/2019/04/What-is-Git.jpg)





## What is GitHub?

- GitHub is a web-based platform that provides hosting for Git repositories. It extends the capabilities of Git by adding features such as issue tracking, project management tools, and collaboration features like pull requests and code reviews.

#### Key features of GitHub include:

- Repository Hosting: GitHub hosts Git repositories, making it easy for developers to create, share, and collaborate on projects.

- Social Coding: GitHub fosters a community-driven approach to software development, allowing users to discover, fork, and contribute to open-source projects.

- Workflow Integration: GitHub integrates with popular development workflows, including continuous integration/continuous deployment (CI/CD) pipelines and third-party services.


![github](https://tse1.mm.bing.net/th?id=OIP.msA-e47nZwLjSVOURus9fwHaF7&pid=Api&P=0&h=220)



## Understanding Version Control: The Time Machine for Your Code

- Version control is like a time machine for your code, allowing you to revisit past versions and track changes over time. Here's why version control is essential:

- Historical Insights: Review the history of your project to understand how it has evolved and who has contributed to it.

- Safety Net: Experiment with confidence, knowing that you can revert to a previous version if something goes wrong.

- Team Collaboration: Coordinate with your team members effectively, knowing that version control keeps everyone on the same page.

## Choosing Between CVCS and DVCS: Centralized vs. Distributed

- In version control, there are two main types: centralized and distributed systems. For DevOps engineers, distributed version control systems (DVCS) are the way to go. Here's why:

- Better Collaboration: Everyone gets a copy of the project, making teamwork smoother.

- Faster Work: With DVCS, you don't have to wait for a central server to do your work.

- More Flexibility: Work offline, share changes when you're ready, and choose who sees your updates.

- Safer Storage: Your project's history is stored in multiple places, so it's safer from accidents.




![CVCS and DVCS](https://media.geeksforgeeks.org/wp-content/cdn-uploads/20190820174942/CVCS-vs-DVCS.png)





### Exercise 1: Create a New Repository on GitHub and Clone it to Your Local Machine

1. Creating a New Repository on GitHub:

- Go to the GitHub website (https://github.com/) and log in to your account.

- Once logged in, click on the "+" icon in the upper-right corner of the page and select "New repository".



![new repo](https://cdn.hashnode.com/res/hashnode/image/upload/v1707046051739/dbcb8939-8a0d-4a4d-af77-b7fea2857757.png)







- Give your repository a name, choose whether it will be public or private, and add a description if desired.

- Optionally, you can initialize the repository with a README file, which is a good practice to provide initial project documentation.

- Click on the "Create repository" button to create your new repository on GitHub.




![repo](https://cdn.hashnode.com/res/hashnode/image/upload/v1707046314487/2133f977-a8bc-49bc-ba6c-739cf0b4164a.png)






2. Cloning the Repository to Your Local Machine:

- Open your terminal or command prompt on your local machine.

- Navigate to the directory where you want to store the repository.

- Use the git clone command followed by the URL of your repository on GitHub. For example:

```shell
git clone https://github.com/Supu-27/Supriya-Git-Repo.git
```


![git clone](https://cdn.hashnode.com/res/hashnode/image/upload/v1707046722350/97f1a886-7ad5-40e6-ab75-f53c2c33dd04.png)




- This command will create a local copy of your GitHub repository in the specified directory on your machine.

### Exercise 2: Make Some Changes to a File in the Repository and Commit Them Using Git

1. Making Changes to a File:

- Navigate to the directory where you cloned the repository using the  ```cd```  command in your terminal or command prompt.



![cd](https://cdn.hashnode.com/res/hashnode/image/upload/v1707046745191/716fbf72-7c7f-48c5-992d-484daa073204.png)




- Open the file you want to edit using a text editor or IDE of your choice.

- Make the desired changes to the file, such as adding new code, modifying existing content, or deleting lines.


![file](https://cdn.hashnode.com/res/hashnode/image/upload/v1707046853103/c25ac92a-b804-4b91-90aa-358109cd9e53.png)




2. Committing the Changes Using Git:

- Once you've made your changes, save the file.

- In your terminal or command prompt, navigate back to the root directory of your repository if you're not already there.

- Use the following Git commands to commit your changes:

```shell
git add .            # This command stages all changes in the repository for commit
git commit -m "Your commit message here"   # This command commits the changes with a descriptive message
```


![git add](https://cdn.hashnode.com/res/hashnode/image/upload/v1707046934599/b3362fa9-40f8-4f67-80e5-2efb6169b280.png)







### Exercise 3: Push the Changes Back to the Repository on GitHub

1. Pushing Changes to GitHub:

- After committing your changes locally, you need to push them to the repository on GitHub.

- In your terminal or command prompt, enter the following command:

```shell
git push origin master
```


![git push](https://cdn.hashnode.com/res/hashnode/image/upload/v1707047029727/33a0fc24-7f5a-4800-b884-d0f0bd561ba0.png)




- Replace "origin" with the name of your remote repository (by default, it's "origin").

- Replace "master" with the name of the branch you're pushing to (typically "master" for the main branch).

2. Authentication:

- If this is your first time pushing to the repository, Git may prompt you to enter your GitHub username and password or authenticate using an access token.

3. View Changes on GitHub:

- Once the push is successful, go back to your repository on the GitHub website.

- Refresh the page, and you should see the changes you made reflected in the repository files.



![changes](https://cdn.hashnode.com/res/hashnode/image/upload/v1707047266467/0a1ac406-e06f-4abc-bdb8-99cdc8c20ca9.png)




### Conclusion:

- As DevOps engineers, Git and GitHub are your allies in building great software. Git helps you keep track of changes, while GitHub makes it easy to collaborate with others. Together, they're a powerful duo that helps you turn ideas into reality. So don't be afraid to dive in and start using Git and GitHub today!

If you found this post helpful, I'd be delighted to hear from you! Please drop any questions you have in the comments below, and I'll happily assist. 😄

##### For further insights, please visit my Hashnode blog: [Link to my Hashnode blog](https://supriyasurkar.hashnode.dev/day-8-task-basic-git-github-for-devops-engineers)
