# Git and GitHub Challenge - Week 4

## Overview
This repository contains solutions for the Week 4 Git and GitHub Challenge, where I practiced essential Git and GitHub commands. The tasks include repository management, branching, authentication, and exploring commit history.

---

## Tasks Completed

### Task 1: Fork and Clone the Repository
- Forked the repository on GitHub.
- Cloned the forked repository using HTTPS.
- Navigated into the cloned directory.

```sh
git clone <your-fork-url>
cd 2025/git/01_Git_and_Github_Basics
```

![Task 1](images/task1.png)

---

### Task 2: Initialize a Local Repository and Create a File
- Created a new directory for the challenge.
- Initialized a new Git repository.
- Created an `info.txt` file and added initial content.
- Staged and committed the file.

```sh
mkdir week-4-challenge
cd week-4-challenge
git init
echo "My Name - DevOps Enthusiast" > info.txt
git add info.txt
git commit -m "Initial commit: Add info.txt with introductory content"
```

![Task 2](images/task2.png)

---

### Task 3: Configure Remote URL with PAT and Push/Pull
- Configured remote URL using a Personal Access Token (PAT).
- Pushed the commit to the remote repository.
- Pulled changes from the remote repository.

```sh
git remote add origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git
git push -u origin main
git pull origin main
```

![Task 3](images/task3.png)

---

### Task 4: Explore Your Commit History
- Used `git log` to view commit history and noted commit hashes.

```sh
git log
```

![Task 4](images/task4.png)

---

### Task 5: Advanced Branching and Switching
- Created a new branch `feature-update`.
- Switched to the new branch and modified `info.txt`.
- Staged and committed the changes.
- Pushed the branch to the remote repository.

```sh
git branch feature-update
git switch feature-update
echo "Adding more details to info.txt" >> info.txt
git add info.txt
git commit -m "Feature update: Enhance info.txt with additional details"
git push origin feature-update
```

![Task 5](images/task5.png)

---

### Task 6: Explain Branching Strategies  

Branching strategies are essential in collaborative software development, particularly in Git-based workflows. They help developers work on multiple features, bug fixes, or experiments simultaneously without disrupting the main production code.  

#### 1️⃣ Isolating Features and Bug Fixes  
- Each new feature or bug fix can be developed in a separate branch, preventing incomplete or unstable changes from affecting the main branch.  
- **Example**: If you are working on a new login feature, you create a branch `feature-login` and implement changes there without affecting others' work.  

#### 2️⃣ Facilitating Parallel Development  
- Multiple developers can work on different features at the same time without interfering with each other's code.  
- **Example**: One team member works on `feature-authentication`, while another works on `feature-dashboard`. Both branches exist independently and merge into `main` only when complete.  

#### 3️⃣ Reducing Merge Conflicts  
- Structured branching reduces conflicts by keeping changes modular.  
- Regularly merging changes from the `main` branch into feature branches keeps them updated and minimizes large conflicts.  

#### 4️⃣ Enabling Effective Code Reviews  
- Using **pull requests (PRs)** ensures that all changes are reviewed before merging into the `main` branch.  
- PRs allow comments, suggestions, and discussions, improving code quality and collaboration.  

#### 🔥 Common Branching Strategies in DevOps  
- **Git Flow**: A structured model with `main`, `develop`, `feature`, `release`, and `hotfix` branches.  
- **GitHub Flow**: A simpler strategy with a `main` branch and short-lived feature branches.  
- **Trunk-Based Development**: Developers work in short-lived branches and merge frequently into `main`.  

By following a well-defined **branching strategy**, teams can maintain a **clean, organized, and scalable** codebase while enhancing **collaboration and code stability**. 🚀  


![Task 6](images/task6.png)

---

### Bonus Task: Explore SSH Authentication
- Generated an SSH key and added it to GitHub.
- Switched the remote URL from HTTPS to SSH.
- Tested SSH connection by pushing changes.

```sh
ssh-keygen
cat ~/.ssh/id_ed25519.pub # Copy this key to GitHub

git remote set-url origin git@github.com:<your-username>/90DaysOfDevOps.git
git push origin feature-update
```

![Bonus Task](images/bonus-task.png)

---

## Conclusion
Successfully completed the Git and GitHub challenge by performing repository management, branching, authentication, and commit history exploration. 🚀

