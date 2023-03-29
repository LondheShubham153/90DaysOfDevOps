Task 1:
Add a text file called version01.txt inside the Devops/Git/ with “This is the first feature of our application” written inside. This should be in a branch coming from master/main, [hint try git checkout -b dev], switch to the dev branch ( Make sure your commit message will reflect as "Added new feature"). [Hint use your knowledge of creating branches and Git commit command]

version01.txt should reflect at the local repo first followed by the Remote repo for review. [Hint use your knowledge of Git push and git pull commands here]
![image](https://user-images.githubusercontent.com/119837985/228445923-6009528e-c504-4530-b5bf-c784c7476aef.png)
![image](https://user-images.githubusercontent.com/119837985/228445960-bc87eb9e-76cc-450e-9b07-11dfd1fd7468.png)

![image](https://user-images.githubusercontent.com/119837985/228445814-e0c270b6-cfd6-4139-9879-c7ff24065314.png)

Add a new commit in dev branch after adding the below-mentioned content in Devops/Git/version01.txt: While writing the file make sure you write these lines

1st line>> This is the bug fix in the development branch

Commit this with the message “ Added feature2 in development branch”

2nd line>> This is gadbad code

Commit this with the message “ Added feature3 in development branch

3rd line>> This feature will gadbad everything from now.

Commit with the message “ Added feature4 in development branch
![image](https://user-images.githubusercontent.com/119837985/228446007-37e238e6-37f6-47b8-a0a8-ec443c0e1dd3.png)



For this, just add and commit each time a change is made and changes can be verified using the git log.

![image](https://user-images.githubusercontent.com/119837985/228446039-4dd63a3e-b0ec-4b11-bbac-44fbef0bcd71.png)


Restore the file to a previous version where the content should be “This is the bug fix in the development branch” [Hint use git revert or reset according to your knowledge]
![image](https://user-images.githubusercontent.com/119837985/228446069-f8b1160b-98b9-4293-bcdc-81cbf072788b.png)



Task 2:
Demonstrate the concept of branches with 2 or more branches with a screenshot.
![image](https://user-images.githubusercontent.com/119837985/228446094-b394ba2c-c0ad-4317-aef6-2ebe68d134cd.png)


add some changes the to dev branch and merge that branch in the master/main
When we open the git master branch we can see that there isn't a version01.txt file as it is created in the dev branch. Being in the master/main branch, try to merge the dev branch to the main: git merge <branch to merge to current branch>
![image](https://user-images.githubusercontent.com/119837985/228446116-356738cf-fd70-4470-9798-e7fe60d5286e.png)



Do ls to list the content.

The version01.txt can be seen in the main branch.

Git Rebase
Git rebase is a command in Git that allows you to apply changes from one branch to another. Essentially, it allows you to modify the base of a branch so that it includes changes from another branch.

In simpler terms, rebasing allows you to take the changes you made in one branch and apply them to another branch as if they were made there from the beginning. This can be useful in situations where you want to keep your Git history clean and organized, as it allows you to avoid creating unnecessary merge commits.

![image](https://user-images.githubusercontent.com/119837985/228446171-32ae4aa9-b5e9-42ba-a7f5-9a47ddd0fde1.png)


To use git rebase, you first need to switch to the branch that you want to rebase onto. Then, you can run the command git rebase <branch> where <branch> is the name of the branch you want to apply changes from. Git will then take the changes made in the current branch and apply them on top of the changes in the other branch.

It's important to note that rebasing can rewrite the Git history, so it should be used with caution. It's generally recommended to only rebase local, unpublished changes and to avoid rebasing changes that have already been pushed to a shared remote repository. The workflow would look something like this :

![image](https://user-images.githubusercontent.com/119837985/228446214-fb459a76-0264-4d1c-b52a-5f7b5e97cfd7.png)


This makes the structure look less complex and understandable. 
refer [my_blog]- https://sumitramchandra.hashnode.dev/advance-git-github
