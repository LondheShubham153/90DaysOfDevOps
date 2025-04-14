Fork and Clone the Repository
Fork the Repository:

Visit this repository and fork it to your own GitHub account. If not done yet.
Clone Your Fork Locally:

Clone the forked repository using HTTPS:
git clone <your-fork-url>
Change directory into the cloned repository:
cd 2025/git/01_Git_and_Github_Basics

=============================================================================================================================================================
![image](https://github.com/user-attachments/assets/a4102229-0f8f-4d79-b7eb-13822b60a059)



Initialize a Local Repository and Create a File
Set Up Your Challenge Directory:

Inside the cloned repository, create a new directory for this challenge:
mkdir week-4-challenge
cd week-4-challenge
Initialize a Git Repository:

Initialize the directory as a new Git repository:
git init
Create a File:

Create a file named info.txt and add some initial content (for example, your name and a brief introduction).
Stage and Commit Your File:

Stage the file:
git add info.txt
Commit the file with a descriptive message:
git commit -m "Initial commit: Add info.txt with introductory content"
======================================================================================================================================================================
![image](https://github.com/user-attachments/assets/b09f617a-e906-4bc4-a408-9fd9eed8557c)

Configure Remote URL with Your PAT:
To avoid entering your Personal Access Token (PAT) every time you push or pull, update your remote URL to include your credentials.

⚠️ Note: Embedding your PAT in the URL is only for this exercise. It is not recommended for production use.

Replace <your-username>, <your-PAT>, and <repository-name> with your actual GitHub username, your PAT, and the repository name respectively:

git remote add origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git
If a remote named origin already exists, update it with:

git remote set-url origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git
Push Your Commit to Remote:

Push your current branch (typically main) and set the upstream:
git push -u origin main
(Optional) Pull Remote Changes:

Verify your configuration by pulling changes:
git pull origin main
Task 4: Explore Your Commit History
View the Git Log:
Check your commit history using:
git log
Take note of the commit hash and details as you will reference these in your documentation.
====================================================================================================================================================================================









