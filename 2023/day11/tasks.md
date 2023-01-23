# Day 11 Task: Advance Git & GitHub for DevOps Engineers: Part-2

## Git Stash:
Git stash is a command that allows you to temporarily save changes you have made in your working directory, without committing them. This is useful when you need to switch to a different branch to work on something else, but you don't want to commit the changes you've made in your current branch yet.

To use Git stash, you first create a new branch and make some changes to it. Then you can use the command `git stash` to save those changes. This will remove the changes from your working directory and record them in a new stash. You can apply these changes later. `git stash list` command shows the list of stashed changes.

You can also use `git stash drop 2` to delete a stash and `git stash clear` to delete all the stashes.
To reapply the changes, use the command `git stash apply` apply will reapply the most recent stash. This will reapply the changes to the repository and update the working tree. another stash with `git stash apply stash@{n}` or `git stash apply 1`, where n is the number of the stash you want to apply.
to create a stash with more descriptions `git stash push -m "added awesome feature"`. 
to reapply the stash and delete the stash `git stash pop 2` where 2 is the index number of stash.
`git stash pop` here pop apply the recent stash.
## Cherry-pick:
Git cherry-pick is a command that allows you to select specific commits from one branch and apply them to another. This can be useful when you want to selectively apply changes that were made in one branch to another.

To use git cherry-pick, you first create two new branches and make some commits to them. Then you use `git cherry-pick <commit_hash>` command to select the specific commits from one branch and apply them to the other.
i. Cherry-pick is used if you want to apply particular commit from one branch into another branch.
ii. Cherry pick is mainly used if you don't want to merge the whole branch and you want some of the commits only to be merge.
iii. cherry pick can cause a duplicate commits
iv. Mainly cherry pick is used for the Bug fixes where you want to place that bugfix commit in all the version branches.
v. it is also used when we accidently made a commit in wrong branch.

## Resolving Conflicts:
Conflicts can occur when you merge or rebase branches that have diverged, and you need to manually resolve the conflicts before git can proceed with the merge/rebase.
`git status` command shows the files that have conflicts, `git diff` command shows the difference between the conflicting versions and `git add` command is used to add the resolved files.

# Task-01 
- Create a new branch and make some changes to it.
Ans => `git checkout -b prod`
      `echo "This is the prod branch" > list.txt`
      
- Use git stash to save the changes without committing them.
Ans => `git stash push -m "temporary feature list added to list file"`

- Switch to a different branch, make some changes and commit them.
Ans => `git checkout dev`
        `touch app.js`
        `git add .`
        `git commit -m "added app.js file"`
    
- Use git stash pop to bring the changes back and apply them on top of the new commits.
Ans => `git stash pop`

# Task-02
- In version01.txt of development branch add below lines after “This is the bug fix in development branch” that you added in Day10 and reverted to this commit.
- Line2>> After bug fixing, this is the new feature with minor alteration”
  `echo "After bug fixing, this is the new feature with minor alteration" >> version01.txt`
  Commit this with message “ Added feature2.1 in development branch”
  `git commit -am "Added feature2.1 in development branch"`

- Line3>> This is the advancement of previous feature
  `echo "This is the advancement of previous feature" >> version01.txt`
  Commit this with message “ Added feature2.2 in development branch”
  `git commit -am "Feature 2 is completed and ready for release"`

- Line4>> Feature 2 is completed and ready for release
  `echo "Feature 2 is completed and ready for release" >> version01.txt`
  Commit this with message “ Feature2 completed”
  `git commit -am "Feature2 completed"`
- All these commits messages should be reflected in Production branch too which will come out from Master branch (Hint: try rebase).
Ans => `git checkout master`
        `git rebase dev` if erros occurs then `git rebase --continue`

# Task-03
- In Production branch Cherry pick Commit “Added feature2.2 in development branch” and added below lines in it:
- Line to be added after Line3>> This is the advancement of previous feature
- Line4>>Added few more changes to make it more optimized.
- Commit: Optimized the feature
`git checkout master`
`git cherry-pick 57a197d`

## Reference [video](https://youtu.be/apGV9Kg7ics)


You can Post on LinkedIn and let us know what you have learned from this task by #90DaysOfDevOps Challange. Happy Learning :)
