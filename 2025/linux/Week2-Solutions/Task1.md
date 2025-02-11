1️⃣ User & Group Management
Learn about Linux users, groups, and permissions (/etc/passwd, /etc/group).
Task:
Create a user devops_user and add them to a group devops_team.
Set a password and grant sudo access.
Restrict SSH login for certain users in /etc/ssh/sshd_config.
=============================================================================================================================================================================================


![image](https://github.com/user-attachments/assets/6973005e-aaef-4300-a890-ede0881ff18d)


create a group:
root@jkabi:~# groupadd DevOps_Team
DevOps_Team:x:1014:

Assigning user to this group:

![image](https://github.com/user-attachments/assets/50225776-2dd0-460d-b5a6-81ee0a12fa6c)


