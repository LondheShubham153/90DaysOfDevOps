**Document in `solution.md`**  
- Differences between `reset` and `revert`.  
- When to use each method.  

Both git revert and git reset are used to undo changes in a Git repository, but they do so in different ways and serve different purposes. Here's a detailed comparison of the two:

Git Revert
Purpose: Creates a new commit that undoes the changes introduced by a previous commit.

Usage: git revert <commit>

Preserves History: Keeps the original commit in the history and adds a new commit that reverses its changes.

Safe for Shared Repositories: Ideal for undoing changes in a shared repository because it doesn't rewrite history.

Use Case: When you want to undo a commit without affecting other commits or the overall commit history.

Example
Suppose you have a commit history like this:

A -- B -- C (HEAD)
Running git revert HEAD (where HEAD points to commit C) will result in:

A -- B -- C -- D (HEAD)
Here, commit D is a new commit that undoes the changes introduced by commit C.

Git Reset
Purpose: Moves the HEAD pointer to a specified commit, effectively undoing commits and optionally changing the working directory and index.

Usage:

git reset --soft <commit>: Resets HEAD to the specified commit, keeping changes in the index.

git reset --mixed <commit>: Resets HEAD and the index to the specified commit, keeping changes in the working directory.

git reset --hard <commit>: Resets HEAD, the index, and the working directory to the specified commit, discarding all changes.

Rewrites History: Changes the commit history, making it potentially unsafe for shared repositories.

Use Case: When you want to completely undo changes, modify commit history, or clean the working directory.

Example
Suppose you have a commit history like this:

A -- B -- C (HEAD)
Running git reset --soft HEAD~1 (where HEAD points to commit C) will result in:

A -- B (HEAD)
The changes from commit C will remain staged in the index.

Summary
git revert: Safe for shared repositories, creates a new commit to undo changes, preserves commit history.

git reset: Rewrites commit history, can optionally change the working directory and index, should be used with caution in shared repositories.