**Document in `solution.md`**  
- How cherry-picking is used in bug fixes.  
- Risks of cherry-picking.

Cherry-Picking in Bug Fixes
How Cherry-Picking is Used in Bug Fixes
Cherry-picking is a useful Git feature that allows you to apply a specific commit from one branch to another without merging the entire branch. This is particularly handy for bug fixes that have been committed to a different branch, and you want to apply only that specific fix to your current branch.

Steps to Cherry-Pick a Bug Fix:

Find the Commit to Cherry-Pick:
Use the git log --oneline command to view the commit history and identify the commit hash of the bug fix.
git log --oneline
Apply the Specific Commit:

Use the git cherry-pick <commit-hash> command to apply the commit with the specific hash to your current branch.
git cherry-pick <commit-hash>
Resolve Conflicts (If Any):

If there are conflicts, manually resolve them in the conflicting files, stage the resolved files, and continue the cherry-pick process.
git add <file>
git cherry-pick --continue

Example: If you need to cherry-pick a commit with hash abc123, you would do the following:
git log --oneline
git cherry-pick abc123

If conflicts arise, resolve them, stage the files, and continue:
git add path/to/conflicting-file
git cherry-pick --continue


**Risks of Cherry-Picking**
While cherry-picking can be very useful, it also comes with some risks:

Code Duplication:
Cherry-picking commits can lead to code duplication, especially if the same changes are applied to multiple branches. This can make it harder to maintain the codebase.

Merge Conflicts:
Cherry-picking can introduce merge conflicts, particularly if the codebase has diverged significantly since the commit being cherry-picked. Resolving these conflicts can be time-consuming.

History Complexity:
Frequent use of cherry-picking can complicate the commit history, making it harder to track changes and understand the context of specific commits.

Inconsistencies:
Cherry-picking can cause inconsistencies if changes in the original branch are not properly integrated into the target branch. This can lead to unexpected behavior or bugs.

Best Practices:

Use cherry-picking sparingly and only when necessary.
Ensure that the cherry-picked changes are well-tested and do not introduce new issues.
Document the reasons for cherry-picking and the commits that were cherry-picked to maintain clarity in the commit history.