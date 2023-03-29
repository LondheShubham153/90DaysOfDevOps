Task 1:
Add a text file called version01.txt inside the Devops/Git/ with “This is the first feature of our application” written inside. This should be in a branch coming from master/main, [hint try git checkout -b dev], switch to the dev branch ( Make sure your commit message will reflect as "Added new feature"). [Hint use your knowledge of creating branches and Git commit command]

version01.txt should reflect at the local repo first followed by the Remote repo for review. [Hint use your knowledge of Git push and git pull commands here]


Add a new commit in dev branch after adding the below-mentioned content in Devops/Git/version01.txt: While writing the file make sure you write these lines

1st line>> This is the bug fix in the development branch

Commit this with the message “ Added feature2 in development branch”

2nd line>> This is gadbad code

Commit this with the message “ Added feature3 in development branch

3rd line>> This feature will gadbad everything from now.

Commit with the message “ Added feature4 in development branch



For this, just add and commit each time a change is made and changes can be verified using the git log.



Restore the file to a previous version where the content should be “This is the bug fix in the development branch” [Hint use git revert or reset according to your knowledge]



Task 2:
Demonstrate the concept of branches with 2 or more branches with a screenshot.


add some changes the to dev branch and merge that branch in the master/main
When we open the git master branch we can see that there isn't a version01.txt file as it is created in the dev branch. Being in the master/main branch, try to merge the dev branch to the main: git merge <branch to merge to current branch>



Do ls to list the content.

The version01.txt can be seen in the main branch.

Git Rebase
Git rebase is a command in Git that allows you to apply changes from one branch to another. Essentially, it allows you to modify the base of a branch so that it includes changes from another branch.

In simpler terms, rebasing allows you to take the changes you made in one branch and apply them to another branch as if they were made there from the beginning. This can be useful in situations where you want to keep your Git history clean and organized, as it allows you to avoid creating unnecessary merge commits.



To use git rebase, you first need to switch to the branch that you want to rebase onto. Then, you can run the command git rebase <branch> where <branch> is the name of the branch you want to apply changes from. Git will then take the changes made in the current branch and apply them on top of the changes in the other branch.

It's important to note that rebasing can rewrite the Git history, so it should be used with caution. It's generally recommended to only rebase local, unpublished changes and to avoid rebasing changes that have already been pushed to a shared remote repository. The workflow would look something like this :



This makes the structure look less complex and understandable. 
refer [my_blog]https://sumitramchandra.hashnode.dev/advance-git-github