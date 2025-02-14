# Week 4: Git and GitHub Challenge
+# Git Branching Strategies
+
+GitHub enables developers to collaborate on code with teammates through features like commits and branches. These features help teams organize code and efficiently manage version control.

+Different development and deployment teams within organizations use Git branching strategies to maintain code versions effectively.

+In Git branching strategies, developers create separate branches for individual work. This allows them to easily pull changes from different branches and merge their code into the main branch when ready.

### GitHub Branching Terminologies

Git Branch: A parallel version the code within a git repository allowing for separate development.

Main Branch (Means master branch): This the primary branch of git repository where the production ready code.

Feature Branch: This branch is used to work on the specific feature task from the main branch.

Merge: Merge is the process to combine the code from one branch to another branch.

Pull Request (PR): PR is the request by the developer to merge one branch to another branch.

CI/CD Pipeline: Continuous integration and continuous deployment pipeline to automate the process of building, testing, and deploying code changes.
Here all command that used to perform Git and GitHub Challenge are listed below with explanation

Git and GitHub Command
git init -> Git init is used to initialized the empty repository.

git add -> Git add is used stage before committing or update the file in commit.

ex: 
git add # Stage the single file

git add # Stage the single folder

git add . #Stage all changes

git add -u # Stage only modified file

git commit -> Git commit is used to commit all the changes that add in the git add command

ex:
git commit -m “Solution.md file uploaded”

git clone -> Git clone is used to clone the remote repository to your local system.

ex:
git clone

git remote add origin -> It is used to link your local repository to remote repository

ex:
git remote add origin https://:@github.com//90DaysOfDevOps.git

git remote set-url origin -> It is used to update the url of remote repository or change the repository location.

ex:
git remote set-url origin https://:@github.com//90DaysOfDevOps.git

git push -u origin main -> It is used to push local branch (main) to remote repository (origin)

ex:
git push -u origin

git pull origin main -> it is used to fetch the changes from remote branch and merge into your local branch.

ex:
git pull origin

git log -> Display the commit history of your reposotory.

commit 68e42ef9ac5959e95cd8b2878fb88650cdf909ac (HEAD -> main, origin/main, master)

Author: AWS-DevOps-shubh devshubh2204@gmail.com

Date: Wed Feb 12 21:42:03 2025 +0530

Initial commit: Add info.txt with introductory content

git branch -> Git branch is used to List, Create, rename, delete branche.

ex:

git branch # This create the new branch but does
nit switch.

git switch # Switch to the new branch.

git checkout # Switch to the new branch

git checkout -b # Create and switch to the new branch.

git branch -m old-name new-name # Rename the branch name

git branch -d # to delete local branch.

git push origin --delete # To delete remote branch
