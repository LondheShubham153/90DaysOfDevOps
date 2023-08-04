# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers.

## Find the answers by your understandings(Shoulden't be copied by internet & used hand-made diagrams)  of below quistions and Write blog on it.
1) What is Git and why is it important?
  > Git is a version control system that tracks code changes, making collaboration and code management efficient. It's crucial for developers to work seamlessly, maintain code history, and facilitate teamwork.

2) What is difference Between Main Branch and Master Branch?? 
> In Git, there is no difference between "Main" and "Master" branches; they are just alternative naming conventions for the default branch in a repository..

3) Can you explain the difference between Git and GitHub?
> Git is a version control system used to track code changes locally, while GitHub is a web-based platform that hosts Git repositories and enables collaboration and remote code storage.

4) How do you create a new repository on GitHub?
> By clicking on the "New Repository" button

5) What is difference between local & remote repository? How to connect local to remote? 
> Local repositories reside on the computers of team members. In contrast, remote repositories are hosted on a server that is accessible for all team members - most likely on the internet or on a local network.
````bash
rohan@RB MINGW64 ~/d/Git (master)$ git remote add repo_url
````
## Tasks
task-1: 
- Set your user name and email address, which will be associated with your commits.
````bash
rohan@RB MINGW64 ~/d/Git (master)$ git config --global user.name "Rohan Balgotra"
rohan@RB MINGW64 ~/d/Git (master)$ git config --global user.email "rohanbalgotra12345@gmail.com"
````

task-2: 
- Create a repository named "Devops" on GitHub <br>
 <b>Status ✅</b>
 
- Connect your local repository to the repository on GitHub. <br>
  <b>Status ✅</b>

- Create a new file in Devops/Git/Day-02.txt & add some content to it <br>
  <b>Status ✅</b>

- Push your local commits to the repository on GitHub <br>
  <b>Status ✅</b>
  ```bash
  rohan@RB MINGW64 ~/d/Git (master)$ git push origin master
  ````
