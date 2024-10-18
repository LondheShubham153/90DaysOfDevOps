
# 🐧 Linux Cheat Sheet 🐧

| **Command**                          | **Description**                                             | **Example**                                |
|--------------------------------------|-------------------------------------------------------------|--------------------------------------------|
| `ls`                                 | List files and directories.                                 | `ls -l`                                    |
| `cd [directory]`                     | Change current directory.                                   | `cd /home/user/`                           |
| `mkdir [directory]`                  | Create a new directory.                                     | `mkdir project`                            |
| `touch [file]`                       | Create an empty file.                                       | `touch file.txt`                           |
| `rm [file]`                          | Remove a file.                                              | `rm file.txt`                              |
| `rmdir [directory]`                  | Remove an empty directory.                                  | `rmdir folder`                             |
| `cp [source] [destination]`          | Copy file to a destination.                                 | `cp file.txt folder/`                      |
| `mv [source] [destination]`          | Move or rename a file.                                      | `mv oldname.txt newname.txt`               |
| `chmod [permissions] [file]`         | Change file permissions.                                    | `chmod 755 script.sh`                      |
| `chown [user] [file]`                | Change the owner of a file.                                 | `chown user file.txt`                      |
| `ps`                                 | List running processes.                                     | `ps aux`                                   |
| `kill [PID]`                         | Terminate a process using PID.                              | `kill 12345`                               |
| `top`                                | Display real-time process statistics.                       | `top`                                      |
| `df -h`                              | Show disk space usage.                                      | `df -h`                                    |
| `du -sh [directory]`                 | Show disk usage of a directory.                             | `du -sh /folder`                           |
| `uname -a`                           | Display system information.                                 | `uname -a`                                 |
| `uptime`                             | Show how long the system has been running.                  | `uptime`                                   |
| `free -h`                            | Display memory usage.                                       | `free -h`                                  |

---

# 🐙 Git & GitHub Cheat Sheet 🐙

| **Command**                          | **Description**                                             | **Example**                                |
|--------------------------------------|-------------------------------------------------------------|--------------------------------------------|
| `git init`                           | Initialize a new Git repository.                            | `git init`                                 |
| `git clone [URL]`                    | Clone a repository from GitHub.                             | `git clone https://github.com/user/repo`   |
| `git status`                         | Show the current status of your Git repository.             | `git status`                              |
| `git add [file]`                     | Stage a file for commit.                                    | `git add file.txt`                         |
| `git commit -m "[message]"`          | Commit changes with a message.                              | `git commit -m "Added new feature"`        |
| `git branch`                         | List all branches.                                          | `git branch`                               |
| `git checkout -b [branch]`           | Create and switch to a new branch.                          | `git checkout -b dev`                      |
| `git merge [branch]`                 | Merge a branch into the current branch.                     | `git merge dev`                            |
| `git rebase [branch]`                | Reapply commits on top of another branch.                   | `git rebase master`                        |
| `git push origin [branch]`           | Push your branch to GitHub.                                 | `git push origin dev`                      |
| `git pull`                           | Fetch and merge changes from GitHub.                        | `git pull`                                 |
| `git remote -v`                      | Display the remote repository URL.                          | `git remote -v`                            |
| `git reset --hard [commit]`          | Reset repository to a previous commit, discarding changes.  | `git reset --hard HEAD~1`                  |
| `git revert [commit]`                | Undo a commit by creating a new commit.                     | `git revert [commit]`                      |
| `git tag [tagname]`                  | Create a tag for a specific commit.                         | `git tag v1.0`                             |
| `git push origin [tagname]`          | Push a tag to GitHub.                                       | `git push origin v1.0`                     |

---

# 💡 Pro Tips 💡

| **Tip**                                          | **Description**                                                             |
|--------------------------------------------------|-----------------------------------------------------------------------------|
| **Use branches**                                 | Always create branches for new features to keep the code clean.             |
| **Rebase for clean history**                     | Use `git rebase` for a linear, cleaner commit history.                      |
| **Write meaningful commit messages**             | Clearly describe what changes you've made in your commits.                  |
| **Check file permissions**                       | Run `ls -l` in Linux to inspect file permissions and avoid errors.          |




[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)