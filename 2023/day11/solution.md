![Advance Git & GitHub for DevOps Engineers: Part-2](https://cdn.hashnode.com/res/hashnode/image/upload/v1685790525702/7eea0339-b259-41be-bf65-566795abe20c.avif?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)
# Advance Git & GitHub for DevOps Engineers: Part-2

## Git Stash:

![Git #SourceTree | Git stash - Save changes away for later use. #Stashing -  YouTube](https://i.ytimg.com/vi/wpHEjqIjJGQ/maxresdefault.jpg)

Git stash is a command that allows you to temporarily save changes you have made in your working directory, without committing them. This is useful when you need to switch to a different branch to work on something else, but you don't want to commit the changes you've made in your current branch yet.

To use Git stash, you first create a new branch and make some changes to it. Then you can use the command git stash to save those changes. This will remove the changes from your working directory and record them in a new stash. You can apply these changes later. git stash list command shows the list of stashed changes.

You can also use git stash drop to delete a stash and git stash clear to delete all the stashes.

## Cherry-pick:

![🌳🚀 CS Visualized: Useful Git Commands - DEV Community](https://res.cloudinary.com/practicaldev/image/fetch/s--9vWP_K4S--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_66%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/2dkjx4yeaal10xyvj29v.gif)

Git cherry-pick is a command that allows you to select specific commits from one branch and apply them to another. This can be useful when you want to selectively apply changes that were made in one branch to another.

To use git cherry-pick, you first create two new branches and make some commits to them. Then you use git cherry-pick &lt;commit\_hash&gt; command to select the specific commits from one branch and apply them to the other.

## Resolving Conflicts:

![resolve merge conflicts toolbar disappear · Issue #157325 ·  microsoft/vscode · GitHub](https://user-images.githubusercontent.com/21698481/183155990-db3773f4-46b5-4f24-827a-0f67e2b20251.gif)

Conflicts can occur when you merge or rebase branches that have diverged, and you need to manually resolve the conflicts before git can proceed with the merge/rebase. git status command shows the files that have conflicts, git diff command shows the difference between the conflicting versions and git add command is used to add the resolved files.

# Task-01

* Create a new branch and make some changes to it.
    

```bash
git branch
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685778464559/f815df53-3a73-4788-a940-1d017d461960.png)

```bash
git checkout -b dev2
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685778506827/1266ea98-6cbd-4d95-aba6-71a5e1a8d349.png)

* Use git stash to save the changes without committing them.
    

```bash
git status
git add .
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779388967/d8dcc2bd-e130-42c3-a2d5-11b27f854156.png)

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779410875/8e3d63a7-8d34-4503-89de-8344daf0bdc5.png)

```bash
git stash
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779440869/ad0e35ec-f167-429d-8262-33fda1cca50e.png)

* Switch to a different branch, make some changes and commit them.
    

```bash
git checkout main
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779493075/41da130b-655e-478e-820f-f9655b144fc1.png)

```bash
git commit -m "stash commit"
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779612342/1d62fd81-096a-4108-a5eb-70806c6a9789.png)

* Use git stash pop to bring the changes back and apply them on top of the new commits.
    

```bash
git stash pop
git diff
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779676186/db61d9c9-5869-4085-b291-11a2c58885dc.png)

```bash
cat db.txt
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779706487/69d79be6-2647-43bd-aba8-58c7608d02c5.png)

```bash
git add . 
git commit -m "final stash commit"
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685779797696/3e4490f2-ae46-4c4e-a359-7d59cf12472e.png)

# Task-02

* In version01.txt of the development branch add the below lines after “This is the bug fix in the development branch” that you added in the [previous blog](https://swapnilkhairnar.hashnode.dev/deep-dive-in-git-github-for-devops-engineers) practical and reverted to this commit.
    

```bash
git checkout dev
git branch
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781122911/62ecb2b4-d793-4549-b085-0bb315fa372b.png)

```bash
git log --oneline
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781146631/3beaaca3-058e-4d65-941c-931d75fcdb62.png)

* Line2&gt;&gt; This is the advancement of the previous feature
    
    Commit this with the message “ Added feature2.2 in development branch”
    

```bash
cat version01.txt
git add .
git commit -m "Added feature2.2 in development branch"
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781255171/451a3a10-41ad-4a32-bc79-a28ecb211db3.png)

* Line3&gt;&gt; Feature 2 is completed and ready for release
    
    Commit this with the message “ Feature2 completed”
    

```bash
vim version01.txt
git add .
git commit -m "Feature2 completed"
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781362021/48ca5713-d549-4939-82ef-64776e916869.png)

* All these commits messages should be reflected in the main branch too which will come out from the Master branch (Hint: try rebase).
    

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781456445/ea05e475-c65f-4008-9c4c-7badec47c0f0.png)

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781509379/4f390d26-c0e9-4398-90f7-4f9b0a4eafa0.png)

# Task-03

* In the main branch Cherry pick Commit “Added feature2.2 in development branch” and added the below lines in it:
    

```bash
git cherry-pick 12c617d
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781668524/4a1b7ae3-819d-448d-9faf-41f592ae80c4.png)

```bash
cat version01.txt
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781676645/e200f651-4e51-4b7c-becb-fe7b0cfd3a1b.png)

```bash
git diff
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781684432/24199dff-cc91-4edd-8bec-8c094bdc0a04.png)

* Line to be added after Line3&gt;&gt; This is the advancement of previous feature
    
* Line4&gt;&gt;Added few more changes to make it more optimized.
    

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781916008/7ada72e1-f00a-4f45-acd7-e31acb3f33b2.png)

* Commit: Optimized the feature
    

```bash
git commit -m "Optimized the feature"
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1685781927400/543719f5-9e47-4503-952d-3490404d1bc0.png)

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)