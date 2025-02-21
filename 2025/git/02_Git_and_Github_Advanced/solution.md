# Git & GitHub Advanced Challenge - Solution

This document contains the solutions and explanations for the **Week 4: Git & GitHub Advanced Challenge**.

---

## **Task 1: Working with Pull Requests (PRs)**

### **Steps to Create a Pull Request**

1. **Fork and Clone a Repository**

   ```bash
   git clone <your-forked-repo-url>
   cd <repo-name>
   ```

2. **Create a Feature Branch and Make Changes**

   ```bash
   git checkout -b feature-branch
   echo "New Feature" >> feature.txt
   git add .
   git commit -m "Added a new feature"
   ```

3. **Push the Changes and Create a Pull Request**

   ```bash
   git push origin feature-branch
   ```

4. **Open a PR on GitHub, Request Review, and Merge After Approval**


### **Best Practices for Writing PR Descriptions**

- Provide a clear title and description.
- Mention related issues (e.g., "Fixes #123").
- Include before/after screenshots if applicable.
- Request reviews from relevant team members.
- Keep PRs small and focused on a single feature/fix.


### **Handling Review Comments**

- Address feedback with additional commits.
- Use `git rebase -i` to squash or amend commits if necessary.
- Resolve merge conflicts before merging.
- Always re-test changes after incorporating feedback.

---

## **Task 2: Undoing Changes – Reset & Revert**

### **Example Scenario**

1. **Create and Commit a File**

   ```bash
   echo "Wrong code" >> wrong.txt
   git add .
   git commit -m "Committed by mistake"
   ```

2. **Soft Reset (Keeps Changes Staged)**

   ```bash
   git reset --soft HEAD~1
   ```

3. **Mixed Reset (Unstages Changes but Keeps Files)**

   ```bash
   git reset --mixed HEAD~1
   ```

4. **Hard Reset (Removes All Changes)**

   ```bash
   git reset --hard HEAD~1
   ```

5. **Revert a Commit Safely**

   ```bash
   git revert HEAD
   ```


### **Differences Between `reset` and `revert`**

| Feature  | `git reset` | `git revert` |
|----------|------------|--------------|
| Removes commit? | Yes (for `--hard`) | No |
| Preserves history? | No | Yes |
| Best for public branches? | No | Yes |

**When to Use Each Method:**

- Use `reset` when working on local commits before pushing.
- Use `revert` when undoing changes in a shared branch.

---

## **Task 3: Stashing - Save Work Without Committing**

### **Example Scenario**

1. **Modify a File Without Committing**

   ```bash
   echo "Temporary Change" >> temp.txt
   git add temp.txt
   ```

2. **Stash the Changes**

   ```bash
   git stash
   ```

3. **Switch to Another Branch and Apply the Stash**

   ```bash
   git checkout main
   git stash pop
   ```

### **Differences Between `git stash pop` and `git stash apply`**

- `git stash pop`: Applies the stashed changes and removes them from the stash list.
- `git stash apply`: Applies the stashed changes but keeps them in the stash list.

---

## **Task 4: Cherry-Picking - Selectively Apply Commits**

### **Example Scenario**

1. **Find the Commit to Cherry-Pick**

   ```bash
   git log --oneline
   ```

2. **Apply a Specific Commit to the Current Branch**

   ```bash
   git cherry-pick <commit-hash>
   ```

3. **Resolve Conflicts (If Any)**

   ```bash
   git cherry-pick --continue
   ```

### **How Cherry-Picking is Used in Bug Fixes**

- Quickly apply critical fixes to different branches without merging unwanted changes.
- Useful in release/hotfix workflows.

### **Risks of Cherry-Picking**

- Can create duplicate commits if not used carefully.
- May cause merge conflicts if the code has changed significantly.

---

## **Task 5: Rebasing - Keeping a Clean Commit History**

### **Example Scenario**

1. **Fetch the Latest Changes**

   ```bash
   git fetch origin main
   ```

2. **Rebase the Feature Branch onto Main**

   ```bash
   git rebase origin/main
   ```

3. **Resolve Conflicts and Continue**

   ```bash
   git rebase --continue
   ```


### **Difference Between `merge` and `rebase`**

| Feature | `git merge` | `git rebase` |
|---------|------------|--------------|
| Creates extra merge commits? | Yes | No |
| Preserves history? | Yes | No |
| Recommended for feature branches? | No | Yes |


### **Best Practices for Rebasing**

- Use interactive rebase (`git rebase -i`) to clean up commits.
- Avoid rebasing shared branches to prevent conflicts.
- Always test after rebasing to ensure functionality.

---

## **Task 6: Branching Strategies Used in Companies**

### **Common Git Workflows**

1. **Git Flow (Feature, Release, Hotfix Branches)**
   - Well-structured, suitable for large teams.
   - Requires more overhead and maintenance.

2. **GitHub Flow (Main + Feature Branches)**
   - Simple and lightweight.
   - Ideal for continuous deployment.

3. **Trunk-Based Development (Continuous Integration)**
   - Encourages frequent merges to `main`.
   - Works well with CI/CD pipelines.


### **Example of Simulating a Git Workflow**

```bash
git branch feature-1
git branch hotfix-1
git checkout feature-1
```

### **Which Strategy is Best for DevOps and CI/CD?**

- **Trunk-Based Development** is preferred for DevOps due to its fast iteration cycle.
- **GitHub Flow** works well for teams practicing continuous delivery.
- **Git Flow** is useful for teams with planned release cycles.

---

## **Final Submission Steps**

1. **Pushing the Work to GitHub**

   ```bash
   git add .
   git commit -m "Completed Git & GitHub Advanced Challenge"
   git push origin main
   ```

2. **Create a Pull Request** with a detailed description.

3. **Share Your Experience on LinkedIn**
   - Summary of the challenge.
   - Key learnings and insights.
   - Screenshots or logs.
   - Use hashtags: `#90DaysOfDevOps #Git #GitHub #VersionControl #DevOps`

---

## **Conclusion**

This challenge covered essential Git concepts that are crucial for DevOps workflows. Mastering these topics will help in real-world version control, collaboration, and CI/CD practices.
