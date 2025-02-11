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

set a password:


![image](https://github.com/user-attachments/assets/b49dfbc9-9a39-4a03-aef4-76627d72f832)

grant sudo access.

![image](https://github.com/user-attachments/assets/4000b897-8af1-4f53-8f84-46747a9975e8)



![image](https://github.com/user-attachments/assets/8183f7a0-80fd-4af4-acf3-9ce244ba9594)




