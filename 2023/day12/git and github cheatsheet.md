![Git & GitHub Cheat Sheet: Essential Commands, Tips & Tricks](https://cdn.hashnode.com/res/hashnode/image/upload/v1685871723489/4fd74291-29e8-439b-8fc7-98111d5bcf0e.avif?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)
# Git & Github Cheat Sheet
In this Git & Github line cheat sheet, you will learn:

* Git configuration
    
* Starting A Project
    
* Day-To-Day Work
    
* Git branching model
    
* Review your work
    
* Tagging known commits
    
* Reverting changes
    
* Synchronizing repositories
    

## Git configuration

Configure user information for all local repositories

| Command | Description |
| --- | --- |
| `git config --global user.name "[name]"` | Sets the name you want attached to your commit transactions |
| `git config --global user.email "[email address]"` | Sets the email you want attached to your commit transactions |
| `$ git config --global color.ui auto` | Enables helpful colorization of the command line output |

## Starting A Project

A new repository can either be created locally, or an existing repository can be cloned. When a repository was initialized locally, you have to push it to GitHub afterwards.

| Command | Description |
| --- | --- |
| `git init` | The git init command turns an existing directory into a new Git repository inside the folder you are running this command. |
| `git remote add origin [url]` | Specifies the remote repository for your local repository. The url points to a repository on GitHub. |
| `git clone [url]` | Clone (download) a repository that already exists on GitHub, including all of the files, branches, and commits |

## Day-To-Day Work

| Command | Description |
| --- | --- |
| `git status` | Displays the status of your working directory |
| `git add [file]` | Add a file to the staging area. Use in place of the full file path to add all changed files from the current directory down into the directory tree. |
| `git diff [file]` | Show changes between working directory and staging area. |
| `git diff --staged [file]` | Shows any changes between the staging area and the repository |
| `git checkout -- [file]` | Discard changes in working directory. This operation is unrecoverable |
| `git reset [file]` | Revert your repository to a previous known working state. |
| `git commit` | Create a new commit from changes added to the staging area.The commit must have a message! |
| `git rm [file]` | Remove file from working directory and staging area |
| `git stash` | Put current changes in your working directory into stash for later use |
| `git stash pop` | Apply stored stash content into working directory, and clear stash |
| `git stash drop` | Delete a specific stash from all your previous stashes |

## Git branching model

| Command | Description |
| --- | --- |
| `git branch [-a]` | List all local branches in repository. With -a: show all branches(with remote). |
| `git branch [branch_name]` | Create new branch, referencing the current HEAD |
| `git checkout [-b][branch_name]` | Switch working directory to the specified branch. With -b: Git willcreate the specified branch if it does not exist. |
| `git merge [from name]` | Join specified \[from name\] branch into your current branch (the oneyou are on currently). |
| `git branch -d [name]` | Remove selected branch, if it is already merged into any other.-D instead of -d forces deletion. |

## Review your work

| Command | Description |
| --- | --- |
| `git log [-n count]` | List commit history of current branch. -n count limits list to last n commits. |
| `git log --oneline --graph --decorate` | An overview with reference labels and history graph. One commit per line. |
| `git log ref..` | List commits that are present on the current branch and not merged into ref. A ref can be a branch name or a tag name. |
| `git log ..ref` | List commit that are present on ref and not merged into current branch. |
| `git reflog` | List operations (e.g. checkouts or commits) made on local repository. |

## Tagging known commits

| Command | Description |
| --- | --- |
| `git tag` | List all tags. |
| `git tag [name] [commit sha]` | Create a tag reference named name for current commit. Add commit sha to tag a specific commit instead of current one. |
| `git tag -a [name] [commit sha]` | Create a tag object named name for current commit. |
| `git tag -d [name]` | Remove a tag from local repository. |

## Reverting changes

| Command | Description |
| --- | --- |
| `git reset [--hard] [target reference]` | List all tags. |
| `git revert [commit sha]` | Create a tag reference named name for current commit. Add commit sha to tag a specific commit instead of current one. |
| `git tag -a [name] [commit sha]` | Create a tag object named name for current commit. |
| `git tag -d [name]` | Remove a tag from local repository. |

## Synchronizing repositories

| Command | Description |
| --- | --- |
| `git fetch [remote]` | Fetch changes from the remote, but not update tracking branches. |
| `git fetch --prune [remote]` | Delete remote Refs that were removed from the remote repository |
| `git pull [remote]` | Fetch changes from the remote, but not update tracking branches. |
| `git push [--tags] [remote]` | Push local changes to the remote. Use --tags to push tags. |
| `git push -u [remote] [branch]` | Push local branch to remote repository. Set its copy as an upstream. |

Hope this Linux reference guide helps you!

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)