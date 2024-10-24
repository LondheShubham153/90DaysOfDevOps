
# Day 13 Task: Advanced Git & GitHub for DevOps Engineers

## Understanding Key Concepts

1. **Git Branching**:
   - Branches help you work on different tasks separately. This means you can create a branch for new features or bug fixes without changing the main project right away. 
   - For example, if you have a branch called `dev`, you can add new features there while keeping the `master` branch stable.

2. **Git Revert vs. Git Reset**:
   - **Git Reset**: This command removes commits from the history. Use it carefully because it can change the history for everyone working on the project.
   - **Git Revert**: This command creates a new commit that undoes the changes made by earlier commits. It keeps the project history safe.

3. **Git Rebase vs. Git Merge**:
   - **Git Rebase**: This command allows you to take changes from one branch and put them on top of another branch. It helps keep the history clean and linear.
   - **Git Merge**: This command combines two branches while keeping all the commit logs from both branches. It shows a complete picture of how the project developed over time.

---

## Tasks

### Task 1: Feature Development with Branches

1. **Create a Branch and Add a Feature**:
   - Create a new branch named `dev`.
   ```bash
   git checkout -b dev
   ```
   - Create a file called `version01.txt` in the `Devops/Git/` folder and write the text: "This is the first feature of our application."
   ```bash
   echo "This is the first feature of our application" > Devops/Git/version01.txt
   git add Devops/Git/version01.txt
   git commit -m "Added new feature"
   ```

2. **Push Changes to GitHub**:
   - Send your changes to GitHub.
   ```bash
   git push origin dev
   ```

3. **Add More Features with Separate Commits**:
   - Update `version01.txt` and commit each change separately:
   
   **1st Change:**
   ```bash
   echo "This is the bug fix in development branch" >> Devops/Git/version01.txt
   git commit -am "Added feature2 in development branch"
   ```

   **2nd Change (Buggy Code):**
   ```bash
   echo "This is gadbad code" >> Devops/Git/version01.txt
   git commit -am "Added feature3 in development branch"
   ```

   **3rd Change (More Bugs):**
   ```bash
   echo "This feature will gadbad everything from now" >> Devops/Git/version01.txt
   git commit -am "Added feature4 in development branch"
   ```

4. **Restore the File to a Previous Version**:
   - Use the revert command to return the file to an earlier state:
   ```bash
   git revert HEAD~2
   ```

---

### Task 2: Working with Branches

1. **Demonstrate Branches**:
   - Create at least two more branches, make changes, and take screenshots to show how they look.
   ```bash
   git checkout -b feature1
   # Make changes and commit
   git checkout -b feature2
   # Make changes and commit
   ```

2. **Merge Changes into Master**:
   - Merge the `dev` branch back into `master`:
   ```bash
   git checkout master
   git merge dev
   git push origin master
   ```

3. **Practice Rebase**:
   - Try rebasing the `dev` branch onto `master`:
   ```bash
   git checkout dev
   git rebase master
   # Fix any conflicts if they occur
   git push origin dev --force
   ```

---

## Key Learnings and Best Practices

- **Use Branches Wisely**: Keep your work organized by using branches for different tasks like adding features or fixing bugs.
- **Git Revert for Safety**: When you want to undo changes, use `git revert` so you don’t mess up the project history.
- **Rebase vs. Merge**: 
   - **Rebase** helps keep a clear project history (great for feature branches).
   - **Merge** keeps all the details of how the project developed (good for tracking progress).

---



Happy learning! 😊
