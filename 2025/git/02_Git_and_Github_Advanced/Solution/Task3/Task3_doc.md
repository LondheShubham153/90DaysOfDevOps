
**Document in `solution.md`**  
- When to use `git stash`.  
- Difference between `git stash pop` and `git stash apply`.  

Using git stash
git stash is used to save your local modifications temporarily and clean your working directory. It’s particularly useful in the following scenarios:

. Switching Branches: When you need to switch branches but don't want to commit incomplete work.

. Pulling Changes: When you want to pull changes from a remote repository, but you have uncommitted changes that might cause conflicts.

. Temporary Hold: When you want to save your work temporarily to focus on another task and come back to it later.


Difference Between git stash pop and git stash apply
git stash pop:
Applies the most recent stash and then removes that stash entry from the stack.
Command: git stash pop
Use Case: When you want to apply the stashed changes and do not need to keep them in the stash list anymore.

git stash apply:
Applies the most recent stash (or a specific stash) but keeps the stash entry in the stack.
Command: git stash apply
Use Case: When you want to apply the stashed changes but might need to apply them again later or on another branch.

Example Commands
Stash Changes:
git stash

Apply and Remove Stash:
git stash pop

Apply and Keep Stash:
git stash apply


Summary
Use git stash to save your local modifications temporarily without committing them.
Use git stash pop to apply stashed changes and remove the stash entry.
Use git stash apply to apply stashed changes while keeping the stash entry for future use.