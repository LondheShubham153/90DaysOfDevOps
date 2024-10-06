
# Linux Fundamentals

This document summarizes the basic Linux commands executed, along with their outputs and brief explanations.

Day 2 task performed #90DaysofDevOps

## 1. Listing Files and Directories

- **Command:** `ls`
  - **Output:** `devops`
  - **Explanation:** Lists the files and directories in the current directory.

- **Command:** `ls -l`
  - **Output:** 
    ```
    total 4
    drwxrwxr-x 3 ubuntu ubuntu 4096 Oct  6 05:59 devops
    ```
  - **Explanation:** Lists files and directories in long format, showing detailed information including permissions, number of links, owner, group, size, and modification date.

- **Command:** `ls -a`
  - **Output:** `.  ..  .bash_history  .bash_logout  .bashrc  .cache  .lesshst  .profile  .ssh  .sudo_as_admin_successful  .viminfo  devops`
  - **Explanation:** Lists all files and directories, including hidden files (those starting with a dot).

- **Command:** `ls *.sh`
  - **Output:** `test.sh`
  - **Explanation:** Lists all files with a `.sh` extension in the current directory.

- **Command:** `ls -i`
  - **Output:** `262398 test.sh  262462 wordlife`
  - **Explanation:** Lists files and directories along with their inode numbers (unique identifiers).

- **Command:** `ls -d */`
  - **Output:** `wordlife/`
  - **Explanation:** Lists only the directories in the current directory.

## 2. Working with Directories

- **Command:** `pwd`
  - **Output:** `/home/ubuntu/devops`
  - **Explanation:** Prints the current working directory.

- **Command:** `cd basic/`
  - **Output:** (no output)
  - **Explanation:** Changes the current directory to `basic` within `wordlife`.

- **Command:** `cd ..`
  - **Output:** (no output)
  - **Explanation:** Moves one level up to the `wordlife` directory.

- **Command:** `cd ../..`
  - **Output:** (no output)
  - **Explanation:** Moves up two levels to `/home/ubuntu`.

- **Command:** `cd -`
  - **Output:** `/home/ubuntu/devops/wordlife`
  - **Explanation:** Changes to the previous working directory.

## 3. Creating Directories

- **Command:** `mkdir foo dir1 dir2`
  - **Output:** (no output)
  - **Explanation:** Creates multiple directories (`foo`, `dir1`, and `dir2`) in the current directory.

- **Command:** `mkdir dir1/specloc`
  - **Output:** (no output)
  - **Explanation:** Creates a subdirectory called `specloc` inside `dir1`.

- **Command:** `mkdir -p new/html/code`
  - **Output:** (no output)
  - **Explanation:** Creates a nested directory structure (`new/html/code`), creating any necessary parent directories that do not exist.

## 4. Navigating the Directory Structure

- **Command:** `cd new/`
  - **Output:** (no output)
  - **Explanation:** Changes the current directory to `new`.

- **Command:** `cd html/code/`
  - **Output:** (no output)
  - **Explanation:** Changes the current directory to `code`, which is inside `html`, which is inside `new`.
