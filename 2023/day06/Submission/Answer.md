# Day 6 Task: File Permissions and Access Control Lists

# Today is more on Reading, Learning and Implementing File permissions.

## Create a simple file and do `ls -ltr` to see the details of the files.

![ls -ltr](https://user-images.githubusercontent.com/76991475/224388017-69b043ae-80fc-4e1e-86b6-8268b5050765.png)

---
**`chown`** (`change owner`):
- This is the command we can use to change who wons a particular file or directory.
- `chown <owner> <file>`
- **owner** -> The owner we want to add or new owner.
- **file**  -> The file we are trying to change.
---
**`file type`**:
- The very first charac*ter indicate the type of the file.
- some of common terms are as follow.
- **`-`** - regular file.
- **`d`** - directory.
- **`c`** - character special file.
- **`l`** - symbolic link.
---
- `Regular files`:

| terms | owner | group | word |
| ---   | ---   | ---   | ---  |
|  -    | rw-   | rw-   | r--  |

---

- `directory`

| terms | owner | group | word |
| ---   | ---   | ---   | ---  |
|  d    | rwx   | -wx   | r-x  |

---

- `character special file`

| terms | owner | group | word |
| ---   | ---   | ---   | ---  |
|  c    | rwx   |  -w-  | r-x  |

---

- `Symbolic link`

| terms | owner | group | word |
| ---   | ---   | ---   | ---  |
|  l    | rwx   | -wx   | r-x  |

---

## Write an article about File Permissions.

**`chmod`**:
- To change the permission of a file or directory, we can used the chmod (change mode).To use chmod to alter permission, we need to tell.

- For example. we have `file.txt` with some permission.

| owner | group | word |
| ---   | ---   | ---  |
| rw-   | r--   | r--  |

so , now we will change the permission of file.

**command**: `chmod 777 file.txt`
| owner | group | word |
| ---   | ---   | ---  |
| rwx   | rwx   | rwx  |

---

## Read about ACL and try out the commands `getfacl` and `setfacl`.

**`getfacl`**:
- The `getfacl` represents filename, owner, group, user’s permission, group’s permission, and others’ permission in a readable format.

![getfacl](https://user-images.githubusercontent.com/76991475/224417624-01301d54-f653-41d7-804b-a3c9f0fdedc4.png)

**`setfacl`**:
- For adding permission to the user is done by `setfacl`.

![setfacl](https://user-images.githubusercontent.com/76991475/224420156-8957754e-cb1c-41d1-afb2-23aca77cf452.png)