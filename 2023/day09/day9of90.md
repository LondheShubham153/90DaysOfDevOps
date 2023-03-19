# Day 9 Task: Deep Dive in Git & GitHub for DevOps Engineers.

1) What is Git and why is it important?
    
        Git is a Version Control System which helps to keep track of the changes or modifications made in the code.
2) What is difference Between Main Branch and Master Branch?? 
    
        these terms are used interchangeably.Github uses masters branch which is automatically created when we create a repositary.
3) Can you explain the difference between Git and GitHub?
        
        both are used for version controlling . the basic difference is just that git is a command line tool and github is a GUI tool.
4) How do you create a new repository on GitHub?
    
        just click on new  and fill the important information
5) What is difference between local & remote repository? How to connect local to remote? 
   
        Local repositories reside on the computers of team members. remote repositories are hosted on a server 
        git remote add origin <remote_repo_URL>
        git push --all origin


Tasks
task-1:
Set your user name and email address, which will be associated with your commits.
        
        git config --global user.name "Your Name"
        git config --global user.email "Your EmailId'
task-2:

Create a repository named "Devops" on GitHub
Connect your local repository to the repository on GitHub.
        
        git clone [url of the repo] 
Create a new file in Devops/DevOps-Practice/Day9.txt & add some content to it
        
        vi  day9.txt
        [added few lines]
        
Push your local commits to the repository on GitHub
        
        git add .
        git commit -m "message"
        git push origin main

reff :- https://youtu.be/AT1uxOLsCdk

Note: These steps assume that you have already installed Git on your computer and have created a GitHub account. If you need help with these prerequisites, you can refer to the day-08

            
            
