Week 4 Git and GitHub Advanced Challenge


Task 1: Working with Pull Requests (PRs)


F:\DevOpsStudy>git clone https://github.com/LondheShubham153/90DaysOfDevOps

F:\DevOpsStudy\90DaysOfDevOps>


Task 2: Initialize a Local Repository and Create a File


F:\DevOpsStudy\90DaysOfDevOps>git checkout -b feature-branch
Switched to a new branch 'feature-branch'

==> Using Ubuntu Terminal [WSL]

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ echo "New Feature" >> feature.txt

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git add .

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git commit -m "Added a new feature"

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git push origin feature-branch


### Creating A Pull Requests

1. Go to the original repository (the one you're contributing to) on GitHub.

2. You should see an option to create a new PR since you’ve pushed a branch with changes.

3. Click the Compare & Pull Request button (usually appears after pushing).

4. Add a title and description for your PR.

5. Make sure you’re comparing the correct branches (e.g., your feature branch with the main or master branch of the original repository).

6. Once ready, click the Create Pull Request button


Task 2: Undoing Changes – Reset & Revert

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ echo "Wrong code" >> wrong.txt

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git add .


kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git commit -m "Committed by mistake"

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git reset --soft HEAD~1

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git reset --mixed HEAD~1

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git reset --hard HEAD~1


kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git revert HEAD


### Differences between reset and revert

In Git, both git reset and git revert are used to undo changes, but they work in different ways and have distinct purposes. Here’s a breakdown of the differences:

1. git reset
Purpose: It is used to move the current branch’s HEAD to a specific commit, effectively undoing commits, and can change the staging area and working directory.

Effects:

It can remove commits from history, and you have the option to modify your working directory (whether or not changes are kept or discarded).

It is often used to rewrite history.

###Types of git reset:

--soft: Moves the HEAD to a specific commit but keeps the changes in the staging area (index).

Use case: If you want to uncommit changes but keep them staged for a new commit.

--mixed (default): Moves the HEAD to a specific commit and unstages the changes but leaves them in the working directory.

Use case: If you want to uncommit changes and unstage them, but keep the modifications in your working directory.

--hard: Moves the HEAD to a specific commit and resets both the staging area and working directory. Any changes after the reset commit are lost.

Use case: If you want to discard all changes (both staged and unstaged) after a certain commit and return to the state of that commit.

Example Command:

git reset --hard <commit_hash>: Resets the current branch to the specified commit and discards all changes after that commit.

2. git revert
Purpose: It is used to undo a specific commit by creating a new commit that reverses the changes introduced by the original commit.

Effects:

It does not remove any commits from history. Instead, it creates a new commit that undoes the changes made in the specified commit.

It is a safe operation for undoing changes in shared/public branches because it does not rewrite history.

###How it works:

git revert will create a new commit that undoes the effects of a previous commit.

This can be done on any commit in the history, and the new commit is added to the current branch.

Example Command:

git revert <commit_hash>: Creates a new commit that undoes the changes made in the commit with <commit_hash>.


### When to Use git reset

git reset is a powerful tool and is typically used when you want to rewrite history or undo local changes. It's mainly for private branches or before pushing to a shared repository

###When to Use git revert

git revert is a safer alternative for undoing changes, especially in shared or public repositories. It doesn't rewrite history; instead, it creates a new commit that undoes the changes introduced by a previous commit.


Task 3: Stashing - Save Work Without Committing


kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ echo "Temporary Change" >> temp.txt


kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git stash

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git checkout -b main1

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git stash pop


### When to use git stash.

Use git stash when you need to temporarily save your uncommitted changes without committing them, typically in these situations:

1.Switching branches: You need to switch branches but have uncommitted changes.

2.Pulling updates: You want to pull the latest changes without committing your current work.

3.Work in progress: You want to clean your working directory but plan to come back to your changes later.

4.Temporary cleanup: You need to quickly reset your working directory (for example, for debugging or testing) but don't want to lose your changes.


### Difference between git stash pop and git stash apply as follows:

1.git stash pop: Applies the stashed changes and removes them from the stash list.

2.git stash apply: Applies the stashed changes but keeps them in the stash list, allowing you to apply them again later if needed.

In short:

pop removes the stash after applying.

apply keeps the stash after applying


Task 4: Cherry-Picking - Selectively Apply Commits


kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git log --oneline

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git cherry-pick 73166dd


kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git cherry-pick --continue


### How cherry-picking is used in bug fixes

In bug fixes, cherry-picking is used to apply a specific commit from one branch (usually a development branch) to another branch (typically a bug-fix or release branch). This allows you to quickly transfer just the fix (and not other unrelated changes) to a different branch


###

In short, cherry-picking in Git can introduce conflicts, inconsistencies, and a confusing project history.


Task 5: Rebasing - Keeping a Clean Commit History



kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git fetch origin main

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git rebase origin/main

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/90daysofdevops/2025/git/02_Git_and_Github_Advanced/Week 4 Git and GitHub Adavanced Challenge$ git rebase --continue


### Difference between merge and rebase In short as follows:

1.Merge keeps the history intact and creates a merge commit.

2.Rebase rewrites history to create a cleaner, linear progression of commits.

### Best practices for rebasing.

In short, rebase often on local branches, avoid rebasing public commits, and clean up your commit history before sharing.


Task 6: Branching Strategies Used in Companies

###Git Flow (Feature, Release, Hotfix branches).

Git Flow is a branching model that defines a strict branching structure for managing development. 
It includes Feature, Release, and Hotfix branches:

1.Feature Branches:

Used for developing new features.

Created from the develop branch and merged back into develop when done.

Names usually start with feature/.

2.Release Branches:

Used to prepare for production releases.

Created from develop and contains final bug fixes, preparation, and versioning.

Merged into both master and develop after the release.

3.Hotfix Branches:

Used to quickly fix issues in production.

Created from master and merged back into both master and develop once the fix is complete.

Typically named hotfix/.

In short, Feature branches for development, Release branches for prepping new versions, and Hotfix branches for urgent production fixes.

###GitHub Flow (Main + Feature branches)

GitHub Flow is a simpler Git branching model focused on continuous delivery.
 It involves two main types of branches:

1.Main Branch:

The production-ready branch where the latest stable version of the code resides.

Changes to the main branch are typically deployed to production.

2.Feature Branches:

Used to develop new features or work on fixes.

Created from main and merged back into main once the feature is complete, reviewed, and tested.

Feature branches are usually short-lived.


###Trunk-Based Development (Continuous Integration).


Trunk-Based Development (TBD) is a software development approach where all developers work on a single main branch (often called "trunk") and integrate their changes frequently.

###Key points:

1.Frequent commits: Developers commit small changes to the trunk at least once a day (often multiple times a day).

2.Continuous Integration: Code is integrated and tested continuously, ensuring that the main branch always remains in a deployable state.

3.Short-lived feature branches: If used, feature branches are kept very short-lived and merged back into the trunk quickly.

4.No long-running branches: Avoid long-lived feature or release branches to reduce complexity and integration issues.

###In short, Trunk-Based Development supports fast, reliable delivery and continuous integration, making it ideal for DevOps and CI/CD environments.

