### 1) What is Git and why is it important?
### Ans:-  
         Git is a DevOps tools. It is an open source version control system which helps developers to store, manage their code.
      
      
      
      
### 2) What is difference Between Main Branch and Master Branch??
### Ans:-
         There is no difference between Main Branch and Master Branch. Github recently renamed from Main branch to Master Branch.




### 3) Can you explain the difference between Git and GitHub?
### Ans:-
         Git:- Git is an open source version control system.
         Github:- GitHub is an open source cloud-based git repository helps developers to store their codes.
     
     
     
     
### 4) How do you create a new repository on GitHub?
### Ans:-
         1) Open your GitHub account and navigate to top right corner and click on profile dropdown option.
         2) Click on New option present at the top right corner 
         3) Enter the name of the repository 
         4) Click on Submit and your repository is created succesfully.
      
      
      
      
### 5) What is difference between local & remote repository? How to connect local to remote ?
### Ans:-
         Local repository is a repository which is present in your own local machine.
         Remote repository is a repository which is present in github repository.
      
         HOW TO CONNECT LOCAL TO REMOTE:-
      
         git remote -v ( if your remote repository is not connected to local then use no.2 command )
         git remote set-url origin <Remote_Repo_URL>
       Example --> git remote set-url origin https://github.com/DevMadhup/django-todo-cicd.git
    
    
    
    
### TASKS:-

### Task-1:

### Set your user name and email address, which will be associated with your commits.
### Ans:-
         TO SET USERNAME IN GIT:-
         ---> git config --global user.name "Madhup Pandey"
     
         TO SET EMAIL IN GIT:-
         ---> git config --global user.email "madhuppandey2908@gmail.com"
  
  
  
  
### Task-2:

### 1) Create a repository named "Devops" on GitHub
### Ans:-
         1) Open your GitHub account and navigate to top right corner and click on profile dropdown option.
         2) Click on New option present at the top right corner 
         3) Enter the Devops as the name of the repository 
         4) Click on Submit and your repository is created succesfully.
      
      
      
      
### 2) Connect your local repository to the repository on GitHub.
### Ans:-
         git remote -v ( if your remote repository is not connected to local then use no.2 command )
         git remote set-url origin <Remote_Repo_URL>
       Example --> git remote set-url origin https://github.com/DevMadhup/django-todo-cicd.git
  
  
  
  
### 3) Create a new file in Devops/Git/Day-02.txt & add some content to it
### Ans:-
         STEPS TO CREATE FILE
      
        1) vi Devops/Git/Day-02.txt
        2) press I to write something in a file
        3) add some content to it and press Esc+:+wq




### 4) Push your local commits to the repository on GitHub
reff :- https://youtu.be/AT1uxOLsCdk
### Ans:-
         PUSH FILE TO GITHUB REPOSITORY
     
         1) go to github repository and create new repository 
         2) Now move to git server 
         3) git remote -v
         4) git remote set-url origin https://github.com/DevMadhup/django-todo-cicd.git
         5) git add Day-02.txt
         6) git commit -m "Updated File"
         7) git push origin master
     
     

