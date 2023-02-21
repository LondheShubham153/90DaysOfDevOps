### Task-01
### Create a new branch and make some changes to it.

### Ans:- 
      1) git checkout -b Dev
      2) vi version01.txt, add changes and save.
      
      
      
      
### Use git stash to save the changes without committing them.

### Ans:- 
     1) After modification in a file, 
     2) git stash
    
    
    
    
### Switch to a different branch, make some changes and commit them.

### Ans:- 
     1) git checkout -b test
     2) vi version01.txt, add changes
     3) git add .
     4) git commit -m "First Commit from test branch"
     
     
     
     
### Use git stash pop to bring the changes back and apply them on top of the new commits.

### Ans:-
     1) git stash pop   # to bring the changes back
     2) git add .
     3) git commit -m "Changes done"
     
     
     
     
### Task-02
### In version01.txt of development branch add below lines after “This is the bug fix in development branch” that you added in Day10 and reverted to this commit.

### Line2>> After bug fixing, this is the new feature with minor alteration”

### Commit this with message “ Added feature2.1 in development branch”

### Ans:-
     1) vi version01.txt, add "After bug fixing, this is the new feature with minor alteration" and save.
     2) git add .
     3) git commit -m "Added feature2.1 in development branch"




### Line3>> This is the advancement of previous feature

### Commit this with message “ Added feature2.2 in development branch”

### Ans:-
     1) vi version01.txt, add "This is the advancement of previous feature"
     2) git add .
     3) git commit -m "Added feature2.2 in development branch"




### Line4>> Feature 2 is completed and ready for release

### Commit this with message “ Feature2 completed”


### Ans:-
     1) vi version01.txt, add "Feature 2 is completed and ready for release"
     2) git add .
     3) git commit -m "Feature2 completed"


### All these commits messages should be reflected in Production branch too which will come out from Master branch (Hint: try rebase).

### Ans:- 
     1) git checkout Production
     2) git rebase Dev




### Task-03
### In Production branch Cherry pick Commit “Added feature2.2 in development branch” and added below lines in it:
### Line to be added after Line3>> This is the advancement of previous feature
### Line4>>Added few more changes to make it more optimized.
### Commit: Optimized the feature

### Ans:- 
     1) git checkout Dev
     2) git log and copy the commit_id of “Added feature2.2 in development branch”
     3) git checkout master
     4) git cherry-pick commit_id
     5) there will be conflict while doing git cherry-pick
     6) Manually go inside the file and add "Added few more changes to make it more optimized." after line3.
     7) git add .
     8) git cherry-pick --continue
     9) File opens, add comment "Optimized the feature" and save 
     10) git log  ( to verify changes ), check below screenshot
     
     <img width="471" alt="Capture" src="https://user-images.githubusercontent.com/121779953/220292074-538b0b89-597b-48a9-baa9-5608e13f40d1.PNG">

     
     
     
     
Reference video
You can Post on LinkedIn and let us know what you have learned from this task by #90DaysOfDevOps Challange. Happy Learning :)
