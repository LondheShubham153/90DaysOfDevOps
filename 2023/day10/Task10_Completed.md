### Task 1:
Add a text file called version01.txt inside the Devops/Git/ with “This is first feature of our application” written inside. This should be in a branch coming from master, [hint try git checkout -b dev], swithch to dev branch ( Make sure your commit message will reflect as "Added new feature"). [Hint use your knowledge of creating branches and Git commit command]

Ans:- 
     1) mkdir -p Devops/Git/
       2) cd Devops/Git/
       3) git init ( to initialize empty git repository to work with git )
       4) vi version01.txt
       5) add "This is first feature of our application" in version01.txt file
       6) git add .
       7) git commit -m "Added new feature"
       8) git checkout -b Dev
       9) Now verify, if all files are available or not, Which is available in master branch.

** version01.txt should reflect at local repo first followed by Remote repo for review. [Hint use your knowledge of Git push and git pull commands here]

Ans:-
     1) git remote set-url origin https://<personal_access_token>@github.com/DevMadhup/90DaysOfDevOps.git
     2) git push origin master




** Add new commit in dev branch after adding below mentioned content in Devops/Git/version01.txt: While writing the file make sure you write these lines

1st line>> This is the bug fix in development branch

Commit this with message “ Added feature2 in development branch”

2nd line>> This is gadbad code

Commit this with message “ Added feature3 in development branch

3rd line>> This feature will gadbad everything from now.

Commit with message “ Added feature4 in development branch

Restore the file to a previous version where the content should be “This is the bug fix in development branch” [Hint use git revert or reset according to your knowledge]

Ans :- 
      1) vi version01.txt and add "This is the bug fix in development branch" and Commit this with message “ Added feature2 in development branch”.
      2) vi version01.txt and add "This is gadbad code" and Commit this with message “ Added feature3 in development branch”.
      3) vi version01.txt and add "This feature will gadbad everything from now." and Commit this with message “ Added feature4 in development branch”.
      4) git log 
      5) git revert commit_id, then make changes in file and esc+:+wq
      6) git revert commit_id, then make changes in file and esc+:+wq
      7) now check file version01.txt ( cat version01.txt )
      
      


Task 2:
Demonstrate the concept of branches with 2 or more branches with screenshot.
add some changes to dev branch and merge This is gadbad code that branch in master
as a practice try git rebase too, see what difference you get.

Ans:-
     1) git checkout -b Dev
     2) vi version01.txt, add Gadbad code in a file and save
     3) git add .
     4) git commit -m "Gadbad code from Development branch"
     5) switch to master branch ( git checkout master )
     6) git merge Dev  OR
     7) git rebase Dev




Note:
We should learn and follow the best practices , industry follows for branching.

Simple Reference on branching: video

Advance Reference on branching : video

You can Post on LinkedIn and let us know what you have learned from this task by #90DaysOfDevOps Challange. Happy Learning :)
