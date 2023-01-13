## Git Branching

Use a branch to isolate development work without affecting other branches in the repository. Each repository has one default branch and can have multiple other branches. You can merge a branch into another branch using a pull request.

Branches allow you to develop features, fix bugs, or safely experiment with new ideas in a contained area of your repository.

## Git Revert and Reset

Two commonly used tools that git users will encounter are git reset and git revert. The benefit of both of these commands is that you can use them to remove or edit changes you’ve made in the code in previous commits.

## Git Rebase and Merge

### What Is Git Rebase?

Git rebase is a command that lets users integrate changes from one branch to another, and the logs are modified once the action is complete. Git rebase was developed to overcome merging’s shortcomings, specifically regarding logs.

### What Is Git Merge?

Git merge is a command that allows developers to merge Git branches while the logs of commits on branches remain intact.

The merge wording can be confusing because we have two methods of merging branches, and one of those ways is actually called “merge,” even though both procedures do essentially the same thing.

Refer to this article for a better understanding of Git Rebase and Merge [Read here](https://www.simplilearn.com/git-rebase-vs-merge-article)

## Task 1:

Add a text file called version01.txt inside the DevOps/Git/ with “This is the first feature of our application” written inside. This should be in a branch coming from `master`, \[hint try `git checkout -b dev`\], switch to `dev` branch ( Make sure your commit message will reflect as "Added new feature"). \[Hint use your knowledge of creating branches and Git commit command\]

![image](https://user-images.githubusercontent.com/89054489/211803317-605971c1-7409-4faa-a750-73cb9ee044ba.png)

![image](https://user-images.githubusercontent.com/89054489/211803291-0867f108-4bc0-4fe3-81ed-35f6894e186e.png )

* version01.txt should reflect at the local repo first followed by the Remote repo for review. \[Hint use your knowledge of Git push and git pull commands here\]
    
    * To move changes from the local repo to the remote, we push. To bring them to the local from the remote, we pull.
        
    
    \-- A "pull request" is you requesting the target repository to please grab your changes. A "push request" would be the target repository requesting you to push your changes
    

Add a new commit in `dev` branch after adding the below-mentioned content in Devops/Git/version01.txt: While writing the file make sure you write these lines

* 1st line&gt;&gt; This is the bug fix in the development branch
    
* Commit this with the message “ Added feature2 in development branch”
    
* 2nd line&gt;&gt; This is gadbad code
    
* Commit this with the message “ Added feature3 in the development branch
    
* 3rd line&gt;&gt; This feature will gadbad everything from now.
    
* Commit with the message “ Added feature4 in the development branch
    
    ![image](https://user-images.githubusercontent.com/89054489/211804051-9cf8aab4-bf52-47da-9bc5-ee6f46a2cb4e.png )
    

Restore the file to a previous version where the content should be “This is the bug fix in the development branch” \[Hint use git revert or reset according to your knowledge\]

![image](https://user-images.githubusercontent.com/89054489/211803867-eaf99db0-b051-4e8b-b5ef-8eba1d1bf447.png )

\-- &gt; here are three commands with similar names: git reset, git restore and git revert. git-revert is about making a new commit that reverts the changes made by other commits. git-restore is about restoring files in the working tree from either the index or another commit. This command does not update your branch.

* git revert should be used to undo changes on a public branch, and git reset should be reserved for undoing changes on a private branch. You can also think of git revert as a tool for undoing committed changes, while git reset HEAD is for undoing uncommitted changes
    

![image](https://user-images.githubusercontent.com/89054489/211804190-5c6c4876-97bb-4cb3-b480-192ec1111b9d.png )

![image](https://user-images.githubusercontent.com/89054489/211674244-5f4cbc70-60e6-482f-9e60-ff995e85fe85.png )

![image](https://user-images.githubusercontent.com/89054489/211674330-c5e4dd59-2c46-45dc-9fde-0a8ea577e43a.png )

![image](https://user-images.githubusercontent.com/89054489/211804436-e78ecbd7-7341-4a81-be19-1ee999ecff78.png )

## Task 2:

* Demonstrate the concept of branches with 2 or more branches with a screenshot.
    
    ![image](https://user-images.githubusercontent.com/89054489/211804237-a021a8e8-548c-4c9b-9b77-91bb81bb0913.png )
    

![image](https://user-images.githubusercontent.com/89054489/211804207-5e9390e9-c85e-4b95-8e94-29546aead5f8.png )

* add some changes to `dev` branch and merge that branch in `master`
    
    ![image](https://user-images.githubusercontent.com/89054489/211804322-2c05e971-00e0-41b0-a2fb-31c4bf7353f6.png )
    
* as a practice try git rebase too.
    
    * In Git, rebase is an alternative method to merge for integrating changes from one branch into another. The basic difference between merge and rebase is that merge creates a new commit that has both branches as its parent, while rebase takes the commits from one branch and replays them on top of another
        
    
    ![image](https://user-images.githubusercontent.com/89054489/211804158-a51ebd87-1708-43ce-94a5-b02a4794684e.png)
    

![image](https://user-images.githubusercontent.com/89054489/211804133-3e300080-5346-4a64-bf6f-7e2ceadc4c65.png)

![image](https://user-images.githubusercontent.com/89054489/211803852-e3b34efb-280f-41c7-b477-f2b0de78ee48.png )
