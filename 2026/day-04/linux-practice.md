
ps aux | grep sshd

root        2134  0.0  0.8  14388  8592 ?        Ss   07:42   0:00 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups
root       39433  0.0  1.0  15856 10188 ?        Ss   15:24   0:00 sshd: ec2-user [priv]
ec2-user   39495  0.0  0.6  15856  6136 ?        S    15:24   0:00 sshd: ec2-user@pts/0
root       39713  0.0  0.2 222328  2044 pts/1    S+   15:30   0:00 grep --color=auto sshd

Shows All running Process including background process with Cpu and memory details
----------------------------------------------------
pgrep sshd
2134
39433
39495

Command used to search for Process IDs
---------------
systemctl status sshd

● sshd.service - OpenSSH server daemon
     Loaded: loaded (/usr/lib/systemd/system/sshd.service; enabled; preset: enabled)
     Active: active (running) since Sun 2026-02-08 07:42:03 UTC; 7h ago
       Docs: man:sshd(8)
             man:sshd_config(5)
   Main PID: 2134 (sshd)
      Tasks: 1 (limit: 1120)
     Memory: 5.3M
        CPU: 2.178s
     CGroup: /system.slice/sshd.service
             └─2134 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"
Explantion :Show Service status 
--------------------
Systemctl list-units 

List Systemd services (Active)

Systemctl list-units (active)
output :
proc-sys-fs-binfmt_misc.mount                                     loaded active     mounted         Arbitrary Executable File Formats File Sys>
run-credentials-systemd\x2dsysctl.service.mount                   loaded active     mounted         /run/credentials/systemd-sysctl.service
run-credentials-systemd\x2dtmpfiles\x2dsetup.service.mount        loaded active     mounted         /run/credentials/systemd-tmpfiles-setup.se>


systemctl list-units --all (inactive)

output :
boot-efi.automount                                                                   loaded    active     running   boot-efi.automount
● boot.automount                                                                       not-found inactive   dead      boot.automount
proc-sys-fs-binfmt_misc
automount                                                    loaded    active     running   Arbitrary Executable File >


Explantion : displays all active systemd units currnetly running on the system
---------------------------
systemctl is-active sshd

output :
active

Explantion :qucik way to Check service active or not.


---------------------------------------


journalctl -u sshd -n 10

output:

root@ip-172-31-3-68 ec2-user]# journalctl -u sshd -n 10
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal systemd[1]: Starting sshd.service - OpenSSH server daemon...
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal sshd[2134]: Server listening on 0.0.0.0 port 22.
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal sshd[2134]: Server listening on :: port 22.
Feb 08 16:07:54 ip-172-31-3-68.ap-south-1.compute.internal systemd[1]: Started sshd.service - OpenSSH server daemon.


Explantion : Checking logs of service sshd
u for service to check 

tail -n 50 /etc/passwd

output:

root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin

output of /etc/passwd file 

Mini troublshooting steps 

1.check port is listining by using command (netstat -tunlp | grep :22)
for sshd = 22
2.check service is active or not (systemclt status sshd)
if not (systemctl restart sshd)
3.firewall-cmd --list-all
check sshd service and firewall is allowed sometimes firewall can also block 
4.use (journalctl -u sshd) or (tail -f /var/log/messages) to check real time logs


