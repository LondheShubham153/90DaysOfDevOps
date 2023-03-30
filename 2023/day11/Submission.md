Visit My blog - https://sumitramchandra.hashnode.dev/advance-git-github-part-2

Task-01

Create a new branch and make some changes to it.

![image](https://user-images.githubusercontent.com/119837985/228772968-b67b01c9-310b-4b4e-844d-4a782b15134a.png)

Use git stash to save the changes without committing them.

![image](https://user-images.githubusercontent.com/119837985/228773039-ef783d49-86d6-4b3c-8d5d-810d8fcf76b1.png)

Switch to a different branch, make some changes and commit them.

![image](https://user-images.githubusercontent.com/119837985/228773069-c17c45cd-df7d-4fe3-b961-717d5ee64721.png)

Use git stash pop to bring the changes back and apply them on top of the new commits.

![image](https://user-images.githubusercontent.com/119837985/228773101-8e287ece-f684-472e-bad7-382e1dc5c65a.png)

All the commits can be viewed using the git log.

![image](https://user-images.githubusercontent.com/119837985/228773168-4b696278-56db-4b5b-898b-8e8e14de8ed3.png)


Task-02

In version01.txt of development, branch add the below lines after “This is the bug fix in development branch” that you added in Day10 and reverted to this commit.
Line2>> After bug fixing, this is the new feature with minor alterations”

Commit this with the message “ Added feature2.1 in development branch”

Line3>> This is the advancement of the previous feature

Commit this with the message “ Added feature2.2 in development branch”

Line4>> Feature 2 is completed and ready for release Commit this with the message “ Feature2 completed”

![image](https://user-images.githubusercontent.com/119837985/228773224-6222ccf2-1abe-4534-872e-71528289a65e.png)

The file is committed accordingly, and each commit message can be viewed in the git log.

![image](https://user-images.githubusercontent.com/119837985/228773277-a02d0b8e-d164-41ad-a554-b2d767222c71.png)

All these commits messages should be reflected in the Production branch too which will come out from the Master branch (Hint: try rebase).

![image](https://user-images.githubusercontent.com/119837985/228773365-caebaed6-fb57-4d75-b011-a6caad3725cb.png)

Task-03

In the Production branch Cherry pick Commit “Added feature2.2 in development branch” and added the below lines in it:

The line to be added after Line3>> This is the advancement of the previous feature

Line 4>>Added a few more changes to make it more optimized.

Commit: Optimized the feature

![image](https://user-images.githubusercontent.com/119837985/228773442-2cfa02bf-92c8-4cf0-8e1c-62a77201d73d.png)

Thanks for reading! Hope you find this helpful.

Happy learning!!!
