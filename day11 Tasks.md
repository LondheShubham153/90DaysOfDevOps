Hi all, Today we are going to learn about GIT STASH, GIT CHERRYPICKING commands and Resolving conflicts. Before doing any task solutions. First, let's get some theoretical understanding of it :

## Git Stash

* git stash is a command in Git that allows you to temporarily save changes that you've made to your working directory, without committing them. This can be useful in a variety of situations, such as:
    
    For **example,** You're working on a feature or bug fix, but need to switch to a different branch to work on something else. You can use git stash to save your changes, switch to the other branch, and then later switch back and git stash pop to restore your changes. Always remember It's important to note that git stash only saves changes in the working directory and not in the committed files, and also it is a short-term solution and should be used for temporary save changes, for long-term save it should be committed.
    

we will get a good practical understanding by solving today's tasks.

## git cherrypicking

* git cherry-pick is a command in Git that allows you to selectively apply specific commits from one branch to another.
    
* Realworld **use case** Backporting a bug fix from a development branch to a release branch. If a bug was fixed on the development branch after the release was cut, cherry-picking allows you to bring that fix forward to the release branch without merging the entire development branch.
    
* Cherry-picking is useful when you want to bring specific commits from one branch to another, rather than merging the entire branch. This can be useful in situations where you don't want to bring over all the changes from a branch, or where merging would cause conflicts. It's important to note that cherry-picking can cause conflicts, so make sure to back up your code and understand the risks of cherry-picking before doing it. When merging or rebasing branches in Git, conflicts can occur when the same lines of code have been modified in both branches and Git is unable to automatically determine which changes should be kept. These conflicts need to be resolved manually before the merge or rebase can be completed.
    

## Resolving Conflicts

* When merging or rebasing branches in Git, conflicts can occur when the same lines of code have been modified in both branches and Git is unable to automatically determine which changes should be kept. These conflicts need to be resolved manually before the merge or rebase can be completed.
    

Here are the general steps to resolve conflicts in Git:

* Identify the files that have conflicts by running git status. The files that have conflicts will be marked as "unmerged" or "both modified".
    
* Open the conflicting files and look for the sections that have conflicts. They will be marked with conflict markers, such as &lt;&lt;&lt;&lt;&lt;&lt;&lt;, =======, and &gt;&gt;&gt;&gt;&gt;&gt;&gt;.
    
* Decide which changes to keep and which to discard. For example, if you are merging a feature branch into your main branch, and the feature branch has added new lines of code, you can keep those lines and discard the original ones.
    
* Remove the conflict markers and save the file.
    
* Run git adds to stage the resolved file.
    
* Run git commits to commit the resolved conflicts.
    

It's important to note that resolving conflicts can be a complex process, especially if the conflicts are in multiple files or if the changes are complex. It is always a good idea to back up your code before resolving conflicts.

In addition to manual resolving, Git also provides some tools that can help to resolve conflicts like Gitk, Git GUI, and Git merge tool. These tools give a visual representation of the conflicts and make it easier to identify and resolve them.

Now, let's get our hands dirty, by doing tasks of the above concepts.

# task 1 :

# In the Production branch Cherry-picked Commit “Added feature2.2 in development branch” and added the below lines in it:

The line to be added after Line 3&gt;&gt; This is the advancement of the previous feature Line4&gt;&gt;Added a few more changes to make it more optimized.

## Commit: Optimized the feature

Here are the steps :

Create a new branch by running `$ git branch new-branch`

Switch to the new branch by running `$ git checkout new-branch`

Make changes to the files in the new branch Save the changes without committing them by running `$ git stash`

Switch to a different branch by running `$ git checkout other-branch`

Make changes to the files in the other branch Commit the changes by running

`$ git commit -am "Commit message"`

Switch back to the new branch by running `$ git checkout new-branch`

Bring the saved changes back and apply them on top of the new commits by running `$ git stash pop`

**Note:** git stash pop is a dangerous command as it will discard the stash if there is a conflict, so you may want to use git stash apply instead and merge the changes manually.

## Task 2

## in version01.txt of development, branch add the below lines after “This is the bug fix in development branch” that you added in Day10 and reverted to this commit.

Line2&gt;&gt; After bug fixing, this is the new feature with minor alterations”

Commit this with the message “ Added feature2.1 in development branch”

Line3&gt;&gt; This is the advancement of the previous feature

Commit this with the message “ Added feature2.2 in development branch”

Line4&gt;&gt; Feature 2 is completed and ready for release

Commit this with the message “ Feature2 completed”

## All these commits messages should be reflected in the Production branch too which will come out from the Master branch (Hint: try to rebase).

* Here are the steps to add lines to version01.txt of the development branch, commit the changes with messages, and then rebase the changes to the production branch:
    

First, Switch to the development branch by running `$ git checkout development`

Open version01.txt and add the following lines after "This is the bug fix in the development branch": Line2&gt;&gt; After bug fixing, this is the new feature with minor alteration”

Save the changes and commit them with the message "Added feature2.1 in development branch" by running `$ git commit -am "Added feature2.1 in development branch"`

Add the following line after the above line Line3&gt;&gt; This is the advancement of the previous feature Save the changes and commit them with the message "Added feature2.2 in development branch" by running `$ git commit -am "Added feature2.2 in development branch"`

Add the following line after the above line Line4&gt;&gt; Feature 2 is completed and ready for release Save the changes and commit them with the message "Feature2 completed" by running `$ git commit -am "Feature2 completed"`

Switch to the production branch by running `$ git checkout production`

Rebase the development branch onto the production branch, including all of the new commits by running git rebase development Please note that rebase will rewrite the git history and can cause conflicts, please make sure to backup your code and understand the risks of rebasing before doing it.

## Task 3:

In the Production branch Cherry-picked Commit “Added feature2.2 in development branch” and added the below lines in it: Line to be added after Line3&gt;&gt; This is the advancement of the previous feature Line4&gt;&gt;Added few more changes to make it more optimized. Commit: Optimized the feature

* Here are the steps to cherry-pick a specific commit from the development branch and make additional changes to it in the production branch:
    

Switch to the production branch by running `$ git checkout production`

Cherry-pick the specific commit "Added feature2.2 in development branch" by

running `$ git cherry-pick` (replace with the actual hash of the commit) Open version01.txt and add the following lines after "This is the advancement of the previous feature" Line4&gt;&gt;Added a few more changes to make it more optimized. Save the changes and commit them with the message "Optimized the feature" by running `$ git commit -am "Optimized the feature"`

Cherry-picking allows you to take a specific commit from one branch and apply it to another branch. This can be useful if you want to selectively bring over changes from one branch to another. Please note that cherry-picking can cause conflicts, so make sure to back up your code and understand the risks of cherry-picking before doing it.

