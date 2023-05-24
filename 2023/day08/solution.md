![Basic Git & GitHub for DevOps Engineers](https://cdn.hashnode.com/res/hashnode/image/upload/v1684945259279/bc93197a-ce4a-46cc-9aa8-517514076717.png?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)
# Basic Git & GitHub for DevOps Engineers

## What is Git?

Git is a version control system that allows you to track changes to files and coordinate work on those files among multiple people. It is commonly used for software development, but it can be used to track changes to any set of files.

With Git, you can keep a record of who made changes to what part of a file, and you can revert back to earlier versions of the file if needed. Git also makes it easy to collaborate with others, as you can share changes and merge the changes made by different people into a single version of a file.

## What is GitHub?

GitHub is a web-based platform that provides hosting for version control using Git. It is a subsidiary of Microsoft, and it offers all of the distributed version control and source code management (SCM) functionality of Git as well as adding its own features. GitHub is a very popular platform for developers to share and collaborate on projects, and it is also used for hosting open-source projects.

## What is Version Control? How many types of version controls we have?

Version control is a system that tracks changes to a file or set of files over time so that you can recall specific versions later. It allows you to revert files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something that might be causing a problem, who introduced an issue and when, and more.

There are two main types of version control systems: centralized version control systems and distributed version control systems.

1. **A centralized version control system (CVCS)** uses a central server to store all the versions of a project's files. Developers "check out" files from the central server, make changes, and then "check in" the updated files. Examples of CVCS include Subversion and Perforce.
    
2. **A distributed version control system (DVCS)** allows developers to "clone" an entire repository, including the entire version history of the project. This means that they have a complete local copy of the repository, including all branches and past versions. Developers can work independently and then later merge their changes back into the main repository. Examples of DVCS include Git, Mercurial, and Darcs.
    

## Why do we use distributed version control over centralized version control?

1. Better collaboration: In a DVCS, every developer has a full copy of the repository, including the entire history of all changes. This makes it easier for developers to work together, as they don't have to constantly communicate with a central server to commit their changes or to see the changes made by others.
    
2. Improved speed: Because developers have a local copy of the repository, they can commit their changes and perform other version control actions faster, as they don't have to communicate with a central server.
    
3. Greater flexibility: With a DVCS, developers can work offline and commit their changes later when they do have an internet connection. They can also choose to share their changes with only a subset of the team, rather than pushing all of their changes to a central server.
    
4. Enhanced security: In a DVCS, the repository history is stored on multiple servers and computers, which makes it more resistant to data loss. If the central server in a CVCS goes down or the repository becomes corrupted, it can be difficult to recover the lost data.
    

Overall, the decentralized nature of a DVCS allows for greater collaboration, flexibility, and security, making it a popular choice for many teams.

## Demo:

* Install Git on your computer
    
    ![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684940714200/9b8ea1dd-0510-4067-9d95-efafcfb437b4.png)
    

```bash
git --version
```

to int

to status

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684944494903/1b578cf1-14d3-4477-a095-9403567bd229.png)

## **DESCRIPTION**

This tutorial explains how to import a new project into Git, make changes to it, and share changes with other developers.

you can get documentation for a command such as `git log --graph` with:

```bash
$ man git-log
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684945291506/a97a15b6-93d4-4929-8481-b7b6689bf43a.png)

or:

```bash
$ git help log
```

It is a good idea to introduce yourself to Git with your name and public email address before doing any operation. The easiest way to do so is:

```bash
$ git config --global user.name "Swapnil khairnar"
$ git config --global user.email swapnilkhairnar.78@gmail.com
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684944792810/9cd71164-193f-44d5-804a-0ef113b96414.png)

## **Importing a new project**

Assume you have a tarball project.tar.gz with your initial work. You can place it under Git revision control as follows.

```bash
$ git init
$ cd project
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684940776918/9966843a-1eb8-4bd4-a6e6-03be8e63b610.png)

Git will reply

```bash
Initialized empty Git repository in .git/
```

You’ve now initialized the working directory—​you may notice a new directory created, named ".git".

Next, tell Git to take a snapshot of the contents of all files under the current directory (note the ***.***), with ***git add***:

```bash
$ git add .
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684944961046/e2841b1f-adf7-429e-9703-4cb1ee3a6d56.png)

This snapshot is now stored in a temporary staging area which Git calls the "index". You can permanently store the contents of the index in the repository with ***git commit***:

```bash
$ git commit
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684944984740/74b6c0f3-c889-48b1-bcb0-bfaf836b7dc2.png)

This will prompt you for a commit message. You’ve now stored the first version of your project in Git.

## **Making changes**

Modify some files, then add their updated contents to the index:

```bash
$ git add file1 file2 file3
```

You are now ready to commit. You can see what is about to be committed using ***git diff*** with the --cached option:

```bash
$ git diff --cached
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684945027893/69ff29ad-4e4e-463b-acf4-92598decdf33.png)

(Without --cached, ***git diff*** will show you any changes that you’ve made but not yet added to the index.) You can also get a brief summary of the situation with ***git status***:

```bash
$ git status
On branch master
Changes to be committed:
Your branch is up to date with 'origin/master'.
  (use "git restore --staged <file>..." to unstage)

	modified:   file1
	modified:   file2
	modified:   file3
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684945045101/b07f8db0-fb57-4a0e-8187-40d57c82095f.png)

If you need to make any further adjustments, do so now, and then add any newly modified content to the index. Finally, commit your changes with:

```bash
$ git commit
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684945070661/f0e3c0a1-af00-4df2-a224-51196052af0d.png)

This will again prompt you for a message describing the change, and then record a new version of the project.

Alternatively, instead of running ***git add*** beforehand, you can use

```bash
$ git commit -a
```

which will automatically notice any modified (but not new) files, add them to the index, and commit, all in one step.

A note on commit messages: Though not required, it’s a good idea to begin the commit message with a single short (less than 50 character) line summarizing the change, followed by a blank line and then a more thorough description. The text up to the first blank line in a commit message is treated as the commit title, and that title is used throughout Git. For example, [git-format-patch\[1\]](https://git-scm.com/docs/git-format-patch) turns a commit into email, and it uses the title on the Subject line and the rest of the commit in the body.

## **Git tracks content not files**

Many revision control systems provide an `add` command that tells the system to start tracking changes to a new file. Git’s `add` command does something simpler and more powerful: ***git add*** is used both for new and newly modified files, and in both cases it takes a snapshot of the given files and stages that content in the index, ready for inclusion in the next commit.

## **Viewing project history**

At any point you can view the history of your changes using

```bash
$ git log
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684945148064/a84f30a4-80c1-4da5-a028-4db907f0958f.png)

If you also want to see complete diffs at each step, use

```bash
$ git log -p
```

Often the overview of the change is useful to get a feel of each step

```bash
$ git log --stat --summary
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684945174257/9a54e19f-c300-4d3e-9253-1db34da9f32d.png)

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ )

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)