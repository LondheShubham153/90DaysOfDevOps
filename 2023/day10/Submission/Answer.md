# Day 10 Task: Advance Git & GitHub for DevOps Engineers.

## Git Branching
- Use a branch to isolate development work without affecting other branches in the repository. Each repository has one default branch, and can have multiple other branches. You can merge a branch into another branch using a pull request.
- Branches allow you to develop features, fix bugs, or safely experiment with new ideas in a contained area of your repository.

## Git Revert and Reset
- Two commonly used tools that git users will encounter are those of git reset and git revert.The benefit of both of these commands is that you can use them to remove or edit changes you’ve made in the code in previous commits.

## What Is Git Rebase?
- Git rebase is a command that lets users integrate changes from one branch to another, and the logs are modified once the action is complete. Git rebase was developed to overcome merging’s shortcomings, specifically regarding logs.

 ## What Is Git Merge?
- Git merge is a command that allows developers to merge Git branches while the logs of commits on branches remain intact.
- The merge wording can be confusing because we have two methods of merging branches, and one of those ways is actually called “merge,” even though both procedures do essentially the same thing.

# Task 1:
 
### Add a text file called version01.txt inside the Devops/Git/ with “This is first feature of our application” written inside.

- This should be in a branch coming from `master`.

![1](https://user-images.githubusercontent.com/76991475/226135089-6de5a55d-d1b5-4605-bec0-85d1c321b5ef.png)

![2](https://user-images.githubusercontent.com/76991475/226135103-88120c5e-6192-42ef-8d26-0b934e764bea.png)

---
- Switch to `dev` branch ( Make sure your commit message will reflect as "Added new feature")

![3](https://user-images.githubusercontent.com/76991475/226135113-53202d56-aa31-4261-a8be-b4562ce5f4e3.png)

---
### **`1st line`**>>  This is the bug fix in development branch.Commit this with message `“Added feature2 in development branch”`

![3 1](https://user-images.githubusercontent.com/76991475/226135257-7499e75a-ab04-4e5c-9dd5-dbaba11870dd.png)

### **`2nd line`**>> This is gadbad code.Commit this with message `“ Added feature3 in development branch"`

![3 2](https://user-images.githubusercontent.com/76991475/226135263-4fab0e77-68a3-40e9-ac2f-781b32dabdf8.png)

### **`3rd line`**>> This feature will gadbad everything from now.Commit with message `“ Added feature4 in development branch"`

![3 3](https://user-images.githubusercontent.com/76991475/226135268-b025e27e-9574-467a-9992-621bd9577187.png)

#### After all commit written view on GitHub.

![3 4](https://user-images.githubusercontent.com/76991475/226135277-304c39da-c8e1-431c-b56d-ae4a9701cdb9.png)

### Restore the file to a previous version where the content should be “This is the bug fix in development branch”.

Using **`git rebase`**

![3 5](https://user-images.githubusercontent.com/76991475/226135280-7ca46c79-166a-4a0c-9535-58cc1835e239.png)

![3 6](https://user-images.githubusercontent.com/76991475/226135287-ef4ee63e-daf1-431b-845c-4a45e9d25049.png)

---

# Task 2:

## Demonstrate the concept of branches with 2 or more branches with screenshot.
![4](https://user-images.githubusercontent.com/76991475/226136335-93ddf817-e1fb-486a-8d50-6aedc0527f98.png)

![4 1](https://user-images.githubusercontent.com/76991475/226136330-18191d3e-9747-467d-b076-30935294ce98.png)

## Add some changes to `dev` branch and merge that branch in `master`
![5](https://user-images.githubusercontent.com/76991475/226136682-52208c6a-82f4-4dad-893a-52e65a2b729f.png)


![6](https://user-images.githubusercontent.com/76991475/226136687-434c5ef0-4c96-4a24-87aa-e6aa9e03455a.png)

After `Merge` this is we have on **GitHub**.

![Screenshot from 2023-03-19 01-57-39](https://user-images.githubusercontent.com/76991475/226136875-2c813e29-0a1b-4f7d-9345-9efd015cda5d.png)

---