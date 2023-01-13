For the past 11 days, we are playing with Linux and git. Now, it's time to revise and keep them all in one place. Here we go...

Topic's blog will be long but it covers all the essential commands in Linux and [Git](#GIT-Essential-Commands)

# All essential Linux commands

| commands | Operations & Examples |
| --- | --- |
| a2p | translate awk to Perl |
| e.g. a2p myfile.awk&gt;myfile.pl(translate myfile.awk into pl file) |  |
| alias | create another name for a command |
| alias p="pwd" |  |
| (set p as alias for pwd) |  |
| apropos | view the searched item in man pages |
| e.g. apropos find |  |
| (list entries with "find" on the man page) |  |
| apropos -e | view searched items in man pages |
| e.g. apropos -e nice |  |
| (-e: show the exact word in man pages) |  |
| apt-get | install, remove or update a package |
| e.g. apt-get install libc6 |  |
| (install libc6 package) |  |
| aspell | check and correct for misspellings |
| aspell -c test.txt |  |
| (-c check spelling in test.txt file) |  |
| at | run a job at a scheduled time |
| at 1 AM fri |  |
| (run the job at 1 am friday) |  |
| awk | match text by regular expression |
| e.g. awk 'length($0)&gt;88'text.txt |  |
| (list only lines longer than 88 words) |  |
| basename | display the last part of a file path |
| e.g. basename homefoousrfile.txt |  |
| (output:file.txt) |  |
| bc | perform calculations by a calculator |
| e.g. bc 8+9 |  |
| (output: 17) |  |
| bg | resume a stopped job in the background |
| e.g. bg %3 |  |
| (resume %3 job in the background) |  |
| bunzip2 | uncompress a file from the zip format |
| e.g.bunzip2 myfile.tar.bz2 |  |
| (uncompress myfile.tar.bz2) |  |
| bzip2 | compress a file to zip format |
| e.g.bzip2 myfile.dat |  |
| (compress myfile.dat) |  |
| cal | display a month or year calendar |
| e.g. cal 2022 |  |
| (display 2022 calendar) |  |
| cal -3 | display a month or year calendar |
| e.g. cal -3 |  |
| (-3 display 3 months) |  |
| cat | display contents of one or more files |
| cat -n myfile.txt |  |
| (-n specify the number of output lines) |  |
| cd | change directory |
| cd homeuser/mydir |  |
| (change the current directory to mydir) |  |
| chattr | set attributes for a file |
| e.g. chattr +i myfile.txt |  |
| (+i make the file read-only) |  |
| chfn | change the user's finger information |
| e.g. chfn |  |
| (change all user's information) |  |
| chfn -f | change the user's finger information |
| e.g. chfn -f full-name |  |
| (-f: change full name) |  |
| chgrp\* | change the group ownership |
| e.g. chgrp groupname usrmyfile.txt |  |
| (alter group ownership of myfile.txt) |  |
| chkconfig\* | View and modify run-level file |
| e.g. chkconfig -list |  |
| (-list: list services of run level) |  |
| chmod | change access permission |
| e.g. chmod 755 filename |  |
| (set file access permission as 755) |  |
| chown\* | the command used by the root user |
| chpasswd\* | change password for users |
| e.g. chpasswd |  |
| (then enter username:password) |  |
| chsh\* | change the login shell for user |
| e.g. chsh -s binbash ray |  |
| (-s specify login shell) |  |
| cksum | produce a CRC checksum number |
| e.g. cksum file.txt |  |
| output checksum number of file.txt) |  |
| clear | clear the screen |
| e.g. clear |  |
| clear the shell window |  |
| cmp | compare two files text byte by byte |
| e.g. cmp first.txt second.txt |  |
| (compare first.txt and second.txt) |  |
| collectl | monitor the current system status |
| e.g. collectl |  |
| (list cpu, sys, inter .etc information) |  |
| comm | compare two files text line by line |
| e.g. comm first.txt second.txt |  |
| (compare first.txt second.txt) |  |
| cp | copy file(s) to another directory |
| cp myfile.txt/mydir |  |
| (copy myfile.txt to mydir) |  |
| cp -p | copy file(s) to another directory |
| cp -p myfile.txt/mydir(-p: keep original permission) |  |
| cp -a | copy file(s) to another directory |
| e.g. cp -a myfile.txt/mydir |  |
| (-a: keep original attributes) |  |
| cpio -o | output archived cpio file |
| e.g. cpio -o&gt;directory.cpio(-o:backup to an archive cpio file) |  |
| cpio -i | input archived cpio file |
| cpio -i&lt;directory.cpio |  |
| (-i restore it from an archive cpio file) |  |
| crontab | create a job to run at the specified time |
| e.g. crontab |  |
| (set to run jobs at regular intervals.) |  |
| crontab -e | run a recurring job at a specified time |
| e.g. crontab -e (-e allow edit the crontab file) |  |
| crontab -l | run a recurring job at a specified time |
| e.g. crontab -l |  |
| (-l: lists the crontab files) |  |
| crontab -r | run a recurring job at a specified time |
| e.g. crontab -r |  |
| (-r remove the crontab files) |  |
| csplit | split a file into some separate files |
| e.g. csplit myfile.txt "/part1/""part2" |  |
| (separate files named xx00,xx01) |  |
| cut -d | show the specified field of a file |
| e.g. cut -d ":" myfile.txt |  |
| (-d : specify a field delimeter":" |  |
| cut -c | extract contents from a file |
| e.g. cut -c6 myfile.txt |  |
| cut -f | extract contents from a file |
| e.g. cut -fe myfile.txt |  |
| (-f3 -- specify a field number as 3) |  |
| date | show the date and time |
| e.g. date |  |
| (display the current date and time) |  |
| date -s | set the date and time |
| e.g. date -s "11/20/2014" |  |
| \-s --set the date) |  |
| dc | open a command line desk calculator |
| e.g. dc |  |
| "dc" means desk calculator |  |
| dd | data dump to convert and copy a file |
| e.g. dd if=devsda of=devsdb(copy data from sda to sdb) |  |
| dmesg | printout all kernel log messages |
| e.g.dmesg&gt;kmsg.txt |  |
| (output kernel message to kmsg.txt) |  |
| df | display free disk space |
| e.g. df |  |
| (display the file system free space) |  |
| df -m | display free disk space |
| e.g. df -m |  |
| (-m:display size in Mb) |  |
| dhclient | configure network interfaces |
| dhclient etho |  |
| (renew IP address of etho) |  |
| diff | show the difference between the two files |
| e.g. diff firstfile.txt secondfile.txt |  |
| (display difference above two files) |  |
| diff3 | show differences among the three files |
| e.g. diff3 file1.txt file2.txt file3.txt |  |
| (display difference above three files) |  |
| dig | display the details of DNS servers |
| e.g. dig vxaxx.com |  |
| (list information about xvxaxx.com) |  |
| dir | show directory contents |
| e.g. dir |  |
| (display current directory contents) |  |
| dircolors | show color settings for "ls" command |
| dircolors |  |
| (display directory coloring of ls) |  |
| dirname | remove the last part of a file path |
| e.g. dirname foobar/baz/myfile.txt |  |
| (output:foobar/baz) |  |
| du -s | display disk usage |
| e.g. du -s *.* |  |
| (-s list files size in current directory) |  |
| du -h | display disk usage |
| e.g. du -h myfile.txt |  |
| (-h: show human readable units) |  |
| dump -f | makes a backup of a filesystem |
| e.g. dump -f0 filebk/mydir |  |
| (-f:backup -0:dumplevel filebk:dump-file) |  |
| echo | display input on standard output |
| e.g. echo "Hello, world" |  |
| show "Hello, world" |  |
| echo -e | display text using an escape sequence |
| e.g. echo -e "\\n Hello, world" |  |
| (-e:allow use \\n to show text) |  |
| ed | open a command-line text editor |
| e.g. ed myfile.txt |  |
| (open myfile.txt with text editor) |  |
| egrep | Search file(s) for a specified regex |
| e.g. egrep "new |  |
| eject | eject the cd or DVD tray |
| eject cdrom |  |
| (eject cdrom tray) |  |
| eject -t | eject or close the cd or DVD tray |
| e.g. eject -t cdrom |  |
| (-t:close an open cdrom tray) |  |
| emacs | powerful, extensible file editor |
| e.g. emacs file.txt |  |
| (launch emacs and open file.txt) |  |
| env | the show set the environmental variables |
| e.g. env |  |
| (list current environment variable) |  |
| eval | make a command from its arguments |
| e.g. UPLS="eval cd..;ls" |  |
| (create a command named UPLS) |  |
| exit | exit the shell |
| exit |  |
| (terminate the program and logout) |  |
| expand | convert tabs into spaces |
| e.g. expand myfile.txt |  |
| (convert tabs to spaces for myfile.txt) |  |
| expand -t | convert tabs into spaces |
| e.g. expand -t 3 myfile.txt |  |
| (-t: set tabs 3 characters apart) |  |
| export | set an environmental variable & value |
| e.g. export newvar=8 echo $newvar |  |
| (output:8) |  |
| expr | evaluate an expression |
| expr 10+8 |  |
| (output: 18) |  |
| factor | show the prime factors of a number |
| factor 1001 |  |
| (output: 7 11 130 |  |
| fc | list,edit, and re-execute last commands |
| e.g. fc -l |  |
| (-l: list the history of commands) |  |
| fdisk\* | manipulate the hard disk partitions |
| e.g. fdisk devhdb |  |
| (list harddisk partitions information) |  |
| fg | resume a stopped job in the foreground |
| fg %3 |  |
| (resume the job 3 in foreground) |  |
| fgrep | Search file(s) for a specified string |
| e.g. fgrep "good" myfile.txt |  |
| (search myfile.txt for "good") |  |
| file | detect the file type |
| e.g. file file1.txt |  |
| (determine file type of file1.txt) |  |
| find -print -name | find file(s) in a directory named dir |
| e.g. find dir -print -name 'abc.txt' |  |
| (-print:print -name:specify file name) |  |
| finger | show the user's information |
| e.g. finger username |  |
| (list the user's login name, time etc.) |  |
| fmt | format text files |
| e.g. fmt myfile1.txt&gt;myfile2.txt |  |
| (format myfile1.txt & output to myfile2) |  |
| fmt -u | format text files |
| fmt -u myfile.txt |  |
| (-u: provide uniform word spacing) |  |
| fold | wrap each line to fit a specified width |
| e.g. fold -w 15 myfile.txt |  |
| (-w specify how many words) |  |
| for in | set conditional parameter for loop |
| e.g. for n in 3 6 9 do echo $n done |  |
| (output:3 6 9) |  |
| free | displays free memory information |
| e.g free |  |
| (list free, used,total memory..) |  |
| free -m | displays free memory information |
| e.g. free -m |  |
| (-m: show sizes in Mb) |  |
| fsck\* | file system check |
| e.g. fsck |  |
| (check or fix linux file system) |  |
| ftp | transfer files by file system transfer protocol |
| e.g. ftp serverURL |  |
| (transfer files using ftp) |  |
| gawk | find or replace text in a file |
| e.g. gawk 'length($0)&gt;88' |  |
| (list lines longer than 88 characters) |  |
| grep | match a specified string or regex. |
| e.g. grep onestring myfile.txt |  |
| (search myfile.txt for onestring) |  |
| groups | list groups to which the user belongs |
| e.g. groups |  |
| (print the groups of user) |  |
| groupadd\* | add a new group |
| e.g. groupadd newgroup |  |
| (create new group) |  |
| groupadd\* -f | add a new group |
| e.g. groupadd -f newgroup |  |
| (-f:check group doesn't exit) |  |
| groupdel\* | delete an existing group |
| e.g. groupdel existinggroup |  |
| (remove an existing group) |  |
| groupmod\* -n | modify an existing group |
| e.g. groupmod -n newgrp oldgrp |  |
| (-n change group name) |  |
| gunzip | uncompress a file from gzip format |
| e.g. gunzip myfile.txt.gz |  |
| (uncompress myfile.txt.gz) |  |
| gzip | compress a file to gzip format |
| e.g. gzip myfile.txt |  |
| (compress myfile.txt) |  |
| halt | shutdown the system |
| e.g. halt |  |
| (power off the system) |  |
| hash | access the hash table |
| e.g. hash(list commands from hash table) |  |
| head | display some frontlines in a file |
| e.g. head myfile.txt |  |
| (output the first ten lines of myfile.txt) |  |
| head -n | display some front lines in a file |
| e.g. head -n 4 myfile.txt |  |
| (output the first 10 lines of myfile.txt) |  |
| help | show help information on commands |
| e.g. help echo |  |
| (show information about echo) |  |
| history | show the commands history |
| e.g. history |  |
| (list commands in this shell session) |  |
| host | find IP address of a domain name |
| e.g. host websprogram.com |  |
| (show ip of webprogram.com) |  |
| hostid | display the id of the current host in hex. |
| e.g. hostid |  |
| (print the current host id) |  |
| hostname | show or set the hostname |
| e.g. hostname |  |
| (display the name of current host) |  |
| id | show the user or group id number |
| e.g. hostname |  |
| (display the root user uid,gid,e.t.c) |  |
| ifconfig | show, and configure the network interface |
| e.g. ifconfig |  |
| (display the network settings) |  |
| init\* | set the system run level |
| e.g. init 5 |  |
| (change to runlevel 5) |  |
| info | show help information of a command |
| e.g. info man |  |
| (show help page for man) |  |
| install | copy files,set permission, ownership |
| e.g. install myfiles homeuser(copy myfiles to user directory) |  |
| install -o | copy files, set permission, ownership |
| e.g. install -o myfiles.ray/home |  |
| (-o:specify ownership) |  |
| jobs | show all jobs status |
| e.g. jobs |  |
| (list all running jobs information) |  |
| join | join lines of files having a common field |
| e.g. join myfile.txt myfile2.txt |  |
| (join lines of two files by same field) |  |
| join | join lines of two files |
| e.g. join -i myfile1.txt myfile2.txt |  |
| (-i:ignore the difference) |  |
| kill | stop a job by the number |
| e.g. kill %3 |  |
| (terminate job %3) |  |
| kill | stop a process by PID |
| e.g. kill 3965 |  |
| (terminate process 3965) |  |
| killall | stop a process by name |
| e.g. killall no respond |  |
| (terminate process no respond) |  |
| last | show most recently logged-in users |
| e.g. last |  |
| (list recent user's date,time...) |  |
| lastb | show bad login attempts |
| e.g. lastb |  |
| (display bad login attempts) |  |
| lastlog | display the last login information |
| e.g. lastlog -u username |  |
| \-u:specify user |  |
| less | show contents page by page |
| e.g. less myfile.txt |  |
| (display myfile.txt page by page) |  |
| let | petform arithmatic on shell variables |
| e.g. let a =12;let a=a+8; |  |
| echo $a |  |
| (output: 20) |  |
| link | create a link to a file |
| link file1.txt file2.txt |  |
| (create a link from file1 to file2) |  |
| ln | create a hard link to a file |
| e.g.~/myfile.txt |  |
| (create a hard link to myfile.txt) |  |
| ln -s | create a link between two files |
| e.g. ln -s file1.txt file2.txt |  |
| (create a symbolic link to file1/file2) |  |
| locate | find the location of a file or a directory |
| e.g. locate myfile.txt |  |
| (locate myfile.txt on the local machine) |  |
| logname | show the current user's login name |
| e.g. logname |  |
| (display the login name of user) |  |
| look | show words matching a given prefix |
| e.g. look ab |  |
| (output:aba,abb,abc,abd,...) |  |
| lpc | run the line printer control program |
| e.g. lpc status |  |
| (show status of the current print queue) |  |
| lpq | show the print queue status |
| e.g. lpq |  |
| (list the print queue) |  |
| lpr | send a print request to a printer |
| lpr myfile.txt |  |
| (send myfile.txt to printer) |  |
| lprm | cancel the printing job in the print queue |
| lprm 2 |  |
| (remove printing job 2) |  |
| ls | list the contents of the current directory |
| e.g. ls |  |
| (list files and sub-directories) |  |
| ls -l | long list contents of the current directory |
| e.g. ls -l |  |
| (-l: long lists including permissions) |  |
| ls -a | lists all entries including hidden files |
| e.g. ls -a |  |
| (-a: show all files) |  |
| ls -t | lists all entries by time stamps |
| e.g. ls -t |  |
| (-t: show by time stamps) |  |
| ls -lh | lists contents in the current directory |
| e.g. ls -lh |  |
| (-LH: list files with size in mb and gb) |  |
| lsattr | list attributes of a file or a directory |
| e.g. lsattr myfile.txt |  |
| (show myfile.txt attribute) |  |
| lsof | list opened files |
| lsof |  |
| (list all opened files) |  |
| man | get command help from manual |
| e.g. man cat |  |
| (show manual page for cat) |  |
| man -k | search manual pages for keyword |
| e.g. man -k printf |  |
| (-k: specify a keyword) |  |
| md5sum | create a md5 checksum number |
| e.g. md5sum -c file.txt |  |
| (-c:validate file against a checksum) |  |
| mesg | enable or disable messaging |
| e.g. mesg |  |
| (show the current write status) |  |
| mesg y/n | enable or disable messaging |
| e.g. mesg y/n |  |
| (y or n: permit or deny messaging) |  |
| mail | send and receive mails |
| e.g. mail ray@charan.com |  |
| (email to ray@charan.com) |  |
| mkdir | make a new directory |
| e.g. mkdir mydir |  |
| (create a directory named mydir) |  |
| mknod | make a device file |
| e.g. mknod devdk b 45 0 |  |
| (dk:device; b:block;45:major no.;0:minorno.) |  |
| more | show content one screen at one time |
| e.g. more +2 myfile.txt |  |
| (+2 ;begining at line 2) |  |
| mount | mount a storage device |
| e.g. mount devcd |  |
| (mound a device cd) |  |
| mount -l | mount or show devices |
| e.g. mount -l |  |
| (-l: list all mounted devices) |  |
| mt | magnetic tape drive control |
| e.g. mt -f devtape eod (-f select eod;move to end of data) |  |
| mv | move a file to another directory |
| e.g mv myfile.txt homeuser/mydir |  |
| (move myfile.txt to mydir directory) |  |
| mv | rename a file |
| e.g. mv myfile1.txt myfile2.txt |  |
| (rename myfile1 to myfile2) |  |
| netstat | display network status |
| e.g. netstat |  |
| (print network connections,routing tables,etc) |  |
| nice\* | set the priority level of a job |
| e.g. nice -19 ftp |  |
| (set prioriy level as 19 for ftp) |  |
| nl | add text with number lines |
| e.g. nl mylist.txt |  |
| (make number lines for mylist.txt) |  |
| nohup | ignore hangup signals |
| e.g. nohup find ftp |  |
| (run ftp ignoring hangup signals) |  |
| nslookup | query internet name servers for IP |
| e.g.nslookup myxxexample.com |  |
| (return Ip like 75.245.246.xxx) |  |
| passwd | modify a user password |
| e.g. passwod username |  |
| (change password for username) |  |
| paste | merge lines of multiple files |
| e.g. paste file1.txt file2.txt |  |
| (merge contents for file1 and file2) |  |
| pidof | show processId of the running program |
| e.g. pidof console |  |
| (display console's process id) |  |
| ping | send data to a host, await a response |
| e.g. ping vxmijfz.com |  |
| (test if remote host can be reached) |  |
| ping -c | test if the remote host can be reached |
| e.g. ping -c5 xvxmijfz.com |  |
| (-c5:specify the number of pings) |  |
| pkill | kill a running process |
| e.g. pkill firefox |  |
| (stop web browser firefox) |  |
| pr | prepare text files for printing |
| e.g. pr myfile.txt |  |
| (prepare myfile.txt for printing) |  |
| pr -n | prepare text files for printing |
| e.g. pr -n myfile.txt |  |
| (-n:specify number in each line) |  |
| pr -h | prepare text files for printing |
| e.g. pr -h "good" myfile.txt |  |
| (-h: specify a header) |  |
| printenv | show the environmental variables |
| printenv |  |
| (list values of environment variables) |  |
| printf | format and print data |
| e.g. printf "start\\b" |  |
| (-b:backspace output:start) |  |
| printf | format and print data |
| e.g. printf 'hello \\n world \\n !' |  |
| (\\n:prints by newlines. output 3 lines) |  |
| ps -f | show the process status |
| e.g. ps -f |  |
| (-f : full information of current process) |  |
| ps -u | show the process status |
| e.g. ps -u ray |  |
| (-u:specify a user's current process) |  |
| pstree | display process in a tree structure |
| e.g. pstree |  |
| (show all process as a tree) |  |
| pwd | print working directory |
| e.g. pwd |  |
| (display current directory) |  |
| rcp | remotely copy files between two hosts |
| e.g. rcp file.txt host2:/dir2/file.txt |  |
| (remotely copy file.txt to host2) |  |
| read | read a line from the standard input |
| e.g. read name(input ray) echo "$name"(output ray) |  |
| reboot\* | restart the system |
| e.g. reboot |  |
| (cause the computer to restart) |  |
| renice\* | change the priority level of a job |
| e.g. renice 3 23001 |  |
| (set priority level as 3 for job23001) |  |
| restore | restores data from the backup file |
| e.g. restore -f databackup |  |
| (-f:specify a backup file) |  |
| rlogin | remotely log in to a system |
| e.g. rlogin -l username domain.com |  |
| (-l: specify a username) |  |
| rm | remove one or more files |
| e.g. rm myfile.txt |  |
| (remove myfile.txt) |  |
| rm -r | remove non-empty directory |
| e.g. rm -r /NonEmptyDir |  |
| (-r: remove directory and itscontent) |  |
| rm -i | remove a non-empty directory or a file |
| e.g. rm -i myfile.txt |  |
| (-i: ask before removing) |  |
| rmdir | remove empty directory |
| e.g. rmdir /emptydir |  |
| (delete directory without contents) |  |
| route | show or modify the IP routing table |
| e.g. route -n |  |
| (-n: show in numerical format) |  |
| rsync | remotely synchronize files |
| e.g. rsync myfile host2:/dir2/myfile |  |
| (sync. myfile with remote host2) |  |
| scp | securely copy files between two hosts |
| e.g. scp file.txt host2:/dir2/file.txt |  |
| (securely copy file to remote host2) |  |
| screen | open the terminal window manager |
| e.g. screen |  |
| (start a new screen) |  |
| sdiff | show two files’ different side by side |
| e.g. sdiff myfile1.txtmyfile2.txt |  |
| (compare two files sideby side) |  |
| sed | filter and transform input text |
| e.g. sed “{print $3}” myfile.txt |  |
| (display the third word of each line) |  |
| seq | list sequent numbers in a given range |
| e.g. seq 1 8(output: 1 2 3 4 5 6 7 8) |  |
| seq -w | list sequent numbers in a given range |
| e.g. seq –w 1 3 |  |
| (-w: with zeros output: 01 02 03 ) |  |
| seq | list sequent numbers in a given range |
| e.g. seq –s | 1 3 |
| (-s: with separators output: 1 |  |
| set | set shell variable or function |
| e.g. set n=`who am i`; echo $n |  |
| (output: who am i) |  |
| sftp | securely transfer files by FTP |
| e.g. sftp SeverURL |  |
| (securely transfer files to a Server) |  |
| shopt | show the shell option settings |
| e.g. shopt |  |
| (show the shell behavior settings) |  |
| shutdown \* | close system |
| e.g. shutdown 22:00 |  |
| (shut down at 22:00 o’clock) |  |
| shutdown-h close system |  |
| e.g. shutdown –h +5 |  |
| (-h+5: halt after 5 minutes) |  |
| shutdown -r | shutdown and restart |
| e.g. shutdown -r now |  |
| (-r:shut down and instantly restart) |  |
| sleep | pause for a specified amount of time |
| e.g. sleep 10 |  |
| (pause for 10 seconds) |  |
| sort | show sorted contents alphabetically |
| e.g. sort -r myfile.txt |  |
| (-r sort file in reverse order) |  |
| split -b | split a file to some files in a given size |
| e.g. split -b 11 file.txt |  |
| (split file to |  |
| some 11 byte files named |  |
| xaa,xab,xac, etc.) |  |
| split -l | split a file to some files in a given size |
| e.g. split -l 8 file.txt |  |
| (split file to |  |
| some 8 line files named |  |
| xaa,xab,xac, etc.) |  |
| ssh | login to remote secure shell |
| e.g. ssh ray@myexample.com |  |
| (securely connect to a remote host) |  |
| ssh -l | login to remote secure shell |
| e.g. ssh -l username hostname |  |
| (-l |  |
| specify your remote username) |  |
| stat | list status about file size, access, etc. |
| e.g. stat myfile.txt |  |
| (show myfile.txt statistics) |  |
| su | switch user |
| e.g. su user2 |  |
| (switch user named user2) |  |
| su -l | login as a root super user |
| e.g. su –l |  |
| (-l:enter password, login root |  |
| account ) |  |
| sudo -u | execute a command as another user |
| e.g. sudo -u user2 ls homemydir |  |
| (-u: |  |
| specify user2 to execute ls cmd) |  |
| sudo -v | refresh the authentication timeout |
| e.g. sudo -v |  |
| (next sudo will not require |  |
| password.) |  |
| sudo -k | expire the authentication timeout |
| e.g. sudo -k |  |
| (next sudo will require password.) |  |
| sum | summarize a file with a checksum |
| e.g. sum myfile.txt |  |
| (create a |  |
| checksum for myfile.txt) |  |
| suspend | suspend the working shell |
| e.g. suspend |  |
| (pause system during execution) |  |
| sync | synchronize disk data with memory |
| e.g. sync |  |
| (flush all file system buffers to disk) |  |
| tac | display lines of a file in reverse |
| order |  |
| e.g. tac myfile.txt |  |
| (print file from last line to first line) |  |
| tail | show the final part of a file |
| e.g. tail -n 20 file.txt |  |
| (-n20:output last 20 lines of file.txt) |  |
| talk | communicate with another user |
| e.g. talk ray |  |
| (talk to user ray) |  |
| tar -xf | extract an archived tar file |
| e.g. tar -xf archive.tar |  |
| (-xf: extract an archive tar file) |  |
| tar -cf | create an archived tar file |
| e.g. tar -cf archive.tar |  |
| (-cf: create an archive tar file) |  |
| tee | print standard output, write to a file |
| e.g. sort file1.txt | tee file2.txt |
| (sort |  |
| file1.txt and write to file2.txt) |  |
| tee -a | print standard output, write to a file |
| e.g. sort file1.txt | tee –a file2.txt |
| (-a: |  |
| append instead of overwrite) |  |
| test | calculate a boolean expression |
| e.g. \[ 8 -gt 6 \]; echo $? |  |
| (output: 0 0:true; 1:false) |  |
| test | calculate a boolean expression |
| e.g. \[ 5 -eq 6 \]; echo $? |  |
| (output: 1 0:true; 1:false) |  |
| time | show the time taken to run a |
| program |  |
| e.g. time ftp |  |
| (display the time taken to execute |  |
| ftp) |  |
| times | show the uptime of the sell |
| e.g. times |  |
| (display the system uptime) |  |
| tload | show a graphic report of the system |
| load |  |
| e.g. tload |  |
| (show the currentsystem load average to a specified |  |
| process) |  |
| top | list the top active or specified |
| process e.g. top -p pid |  |
| (-p:display specific process by pid) |  |
| touch | update timestamp for an existing file |
| e.g. touch myfile.txt |  |
| (modify myfile.txt to the current |  |
| time) |  |
| touch -t | update timestamp for an existing file |
| e.g. touch –t myfile.txt |  |
| (-t: specify a time) |  |
| tr | translates sets of characters |
| e.g. echo apple | tr “apple” “banana” |
| (output: banana) |  |
| traceroute\* | trace the route to a host |
| e.g. traceroute xvauhdhxv.com |  |
| (trace packets route to another host) |  |
| trap | run a command on receiving a |
| signal |  |
| e.g. trap |  |
| (display the current signal traps) |  |
| tree -p | list directory contents in tree format |
| e.g. tree –p |  |
| (-p: also show the file permissions) |  |
| tty | show the name of the terminal |
| device e.g. tty |  |
| (show the terminal filename) |  |
| type | detect the type of a command |
| e.g. type wait |  |
| (output: wait is a shell builtin) |  |
| ulimit -a | limit user resources |
| e.g. ulimit -a |  |
| (-a:display all limits for the system) |  |
| umask | show or set the file permission value |
| e.g. umask 0022 |  |
| (allow user read, |  |
| write privileges and all others to |  |
| read) |  |
| umask | show or set the file permission value |
| e.g. umask 0002 |  |
| (allow group read, |  |
| write privileges and all others to |  |
| read) |  |
| umask | show or set the file permission value |
| e.g. umask 0077 |  |
| (allow user read, |  |
| write privileges and no for others) |  |
| umount | unmount a device or filesystem |
| e.g. umount devdvd |  |
| ( unmount a device DVD ) |  |
| unalias | remove an alias |
| e.g. unalias aliasname |  |
| ( delete a specified alias) |  |
| uname -a | show the current system information |
| e.g. uname -a |  |
| ( -a: display all information) |  |
| uname -n | show the current system information |
| e.g. uname -n |  |
| ( -n: display the host name) |  |
| unexpand | convert spaces into tabs |
| e.g. unexpand myfile.txt |  |
| (convert spaces to tabs for |  |
| myfile.txt) |  |
| uniq | filter out repeated lines in a file |
| e.g. |  |
| uniq myfile.txt |  |
| (show unique line in myfile.txt) |  |
| unset | remove shell variable or function |
| e.g. unset var |  |
| (delete a variable) |  |
| unzip | uncompress files from zip format |
| e.g. unzip archive.zip |  |
| (uncompress file from archive.zip) |  |
| uptime | show system uptime |
| e.g. uptime |  |
| (display system uptime) |  |
| useradd \* | add a new user account |
| e.g. useradd username |  |
| (create a user account) |  |
| useradd\* -d | the display default value for new users |
| e.g. useradd -d |  |
| (show default data for a new user) |  |
| userdel \* | delete an existing user account |
| e.g. userdel username |  |
| (remove a user account) |  |
| usermod\* -d | modify home directory |
| e.g. usermod -d homemydir andy |  |
| (- |  |
| d: specify home directory for andy.) |  |
| usermod \* -l | modify an existing user account |
| e.g. usermod -l oldname newname |  |
| (- |  |
| l: login name change) |  |
| usermod \* -p | modify an existing user account |
| e.g. usermod |  |
| \-p password username |  |
| (-p:modify password of a user) |  |
| users | display current logged-in users |
| e.g. users |  |
| (list users currently logged in) |  |
| vdir | verbosely show directory contents |
| e.g. vdir |  |
| (vdir just like ls, but more verbose) |  |
| vi | open the vi text editor |
| e.g. vi filename |  |
| (open a file with vi text editor) |  |
| vmstat | report virtual memory statistics… |
| e.g. vmstat |  |
| (also report swap, disk i/o |  |
| devices…) |  |
| w | list current processes for each user |
| e.g. w username |  |
| (show the user’s process) |  |
| w -s | list current processes by summary |
| e.g. w -s |  |
| (-s: show a summary of shell |  |
| process) |  |
| wait | wait for a process to change state |
| e.g. wait 10788 |  |
| (wait for 10788 to change state) |  |
| watch | execute a command periodically |
| e.g. watch –n 5 date |  |
| (-n5:update date every 5 seconds) |  |
| wc | show word count, line count, etc |
| e.g. wc myfile.txt |  |
| (list word, line count… for |  |
| myfile.txt) |  |
| wc -c | show word count, line count, etc |
| e.g. wc –c myfile.txt |  |
| (-c: show the byte counts) |  |
| wget | download a web page from a website |
| e.g. wget http://www.xvfwkaljo.com |  |
| (download webpage from above url) |  |
| wget -c | download a web page from a |
| website |  |
| e.g. wget –c http://www.examp.com |  |
| (-c: continue download previous |  |
| web) |  |
| whatis | show the manual page of a command |
| e.g. whatis ping |  |
| (show manual page of ping) |  |
| whereis | locate the source, man for a command |
| e.g. whereis ls |  |
| (show source, man locations of ls) |  |
| which | show path of an executable command |
| e.g. which ftp |  |
| (show the full path of |  |
| ftp command) |  |
| who | show who is currently logged in |
| e.g. who |  |
| (list all logged-in users, date, |  |
| time…) |  |
| who -a | list all users currently logged in |
| e.g. who -a |  |
| (-a: all information) |  |
| whoami | show the current user’s login name |
| e.g. whoami |  |
| (show your own user name) |  |
| whois | show the domain owner’s information |
| e.g. whois xvqizx.com |  |
| (list xvqizx.com owner’s |  |
| information) |  |
| write | write a message to another user |
| e.g. write username |  |
| (then write your message…) |  |
| xargs | execute a command with arguments |
| e.g. find -name " a\*.\* " | xargs rm |
| (find files named a\*.\*, remove |  |
| them) |  |
| xcalc | launch a graphical calculator |
| e.g. xcalc |  |
| (open a scientific calculator) |  |
| xclock | launch graphical clock |
| e.g. xclock -digital |  |
| (-digital: specify a digital clock) |  |
| yes | output a string repeatedly until |
| killed |  |
| e.g. yes “hello” |  |
| (output hello repeatedly until killed) |  |
| yum | rpm-based package manager |
| e.g. yum install update |  |
| (install a package named "update") |  |
| zcat | output compressed text |
| e.g. zcat myfiles.txt.gz | less |
| (uncompress file and show contents) |  |
| zless | show un/compressed file contents |
| e.g. zless myfile.txt.gz |  |
| (zless: show contents by page) |  |
| zmore | show un/compressed file contents |
| e.g. zmore myfile.txt.gz |  |
| (zmore: show contents by screen) |  |
| zip | compress files to zip format |
| e.g. zip documents \* |  |
| (create documents.zip for all files) |  |
| unzip | uncompress files from zip format&lt;br |
| e.g. unzip myfile.zip |  |
| (uncompress myfile.zip.) |  |

# GIT-Essential-Commands

Here is a more complete cheat sheet of Git commands:

Initializing a Repository:

| command | Explanation |
| --- | --- |
| **configuration :** |  |
| `$ git config [--global]` [`user.name`](http://user.name) `"<name>"` | Add username |
| `$ git config [--global]` [`user.email`](http://user.email) `"<email address>` | Add User email id |
| `$ git config --list` | To show config info |
| `$ git init` | Initializes a new local repository. |
| `$ git clone [url]` | Creates a copy of a remote repository on your local machine. \[cloning\] |
| \---------**Committing Changes:** ------------ |  |
| `$ git status` | Shows the status of the working directory. |
| `$ git add [file]` | Adds a file to the staging area. |
| `$ git add .` | Adds all changes in the working directory to the staging area. |
| `$ git add -A` | add all tracked files and untracked files from the workspace into index |
| `$ git rm <file1><file2>...` | To delete a tracked file in the index |
| \`$ git rm --cached ..." | Move tracked file in the index into the workspace and untrack it |
| `$ git commit -m "[message]"` | Creates a new commit with the changes in the staging area. |
| `$ git commit -am "[message]"` | Adds all changes in the working directory and creates a new commit with the given message. |
| `$ git commit --amend .. -m "New message"` | Recommit the previous commit with newly changed file and commit message |
| **tags :** |  |
| `git tag` | Show all tags |
| `git tag -a <tag_flag> -m "tag comment message"` | Create a new tag at the current commit object |
| `git tag -a <tag_flag> <commit_id> -m "tag comment message` | Create a new tag at the specified commit object |
| `git show <tag_flag>` | show specific tag info in detail |
| **undo modifies** |  |
| `$ git checkout <filename>` | Discard tracked file's modification in the workspace |
| `$ git reset HEAD <file name>` | Move the added file from the index into the workspace |
| `$ git reset --soft <commit-id>` | Reset code with --soft, changes in the index and workspace are reserved |
| `$ git reset --mixed <commit id>` | Reset code with --mixed, changes in the index are discarded, however, changes in the workspace are reserved |
| `$ git reset --hard <commit-id>` | Reset code with --hard, changes in the index and workspace are discarded |
| `$ git revert <commit-id>` | Revert code and create a new commit object for this operation in this way, it will not overlap the commit history |
| `$ git revert HEAD~1` | Undo the previous commit changes and create a new commit object for this operation |
| \------------------------**Branching:**\-------------- |  |
| `$ git branch` | Shows the current branch and all branches. |
| `$ git branch -a` | List all branches in the local repository and remote repository |
| `$ git branch -vv` | List all the local branch info in detail |
| `$ git branch [branch_name]` | Creates a new branch with the given name. |
| `$ git branch <branch-name> <commit id>` | create a new branch with a specified commit |
| `$ git checkout [branch_name]` | Switches to the branch with the given name. |
| `$ git merge [branch_name]` | Merges the changes from the branch with the given name into the current branch. |
| `$ git branch -d [branch_name]` | Delete the branch with the given name |
| `$ git branch --set-upstream-to=origin/<remote-branch-name> <local branch name>` | To build a tracking relationship between the local branch and the remote branch |
| `$ git branch --unset-upstream <local branch-name>` | cancel the tracking relationship between the local branch and the remote branch |
| `$ git diff <branch1> <branch2> --stat` | List the changed files between the two branches |
| **Viewing History:** |  |
| `$ git log` | Shows the commit history. |
| `git log --pretty=short` | Show all commit logs in the shot format |
| `git log --pretty=oneline` | One line show one commit log |
| `git log --stat` | Show all changed files in every commit log |
| `git log --follow <file-name>` | Show the change history of the specified file |
| `git log -p` | Show all diff info between two adjacent commit |
| `git blame <file-name>` | show who changed the file |
| `git reflog` | Show the recently commit log and branch checkout log |
| `$ git diff` | Shows the differences between the working directory and the last commit. |
| `$ git show [commit_hash]` | Shows the changes made in the commit with the given hash. |
| **Remote Repositories**: |  |
| `$ git remote -v` | Lists all remote repositories. |
| `$ git remote show <remote>` | show specified remote repo info |
| `$ git remote add [remote_name] [url]` | Adds a new remote repository with the given name and URL. |
| `$ git push [remote_name] [branch_name]` | Pushes the current branch to the remote repository. |
| `$ git pull [remote_name] [branch_name]` | Fetches the changes from the remote repository and merges them into the current branch. |
| `$ git push <remote> [local branch]:[remote-branch]` | Push local repo changes to the remote repo |
| `$ git push -u <remote> [local-branch]:[remote-branch]` | set -u parameter and build the tracking relationship between the local repo and the remote repo |
| `$ git push <remote> :[remote-branch]` | Delete remote branch in the remote repo |
| `$ git fetch [remote_name]` | Fetches changes from the remote repository, but doesn't merge them. |
| **Managing conflicts** |  |
| `$ git diff` | Shows the conflicts in the file |
| `$ git diff --base [file]` | Show the base version of the file before the merge |
| `$ git diff --ours [file]` | Show the version of the file you have locally |
| `$ git diff --theirs [file]` | Show the version of the file in the remote repository |
| `$ git merge --abort` | Abort the merge and go back to the state before the merge |
| **Git Merge/Rebase** |  |
| `git merge <branch-name>` | Merge the branch into the current branch |
| `$ git rebase <branch-name>` | rebase into branch |
| `$ git checkout <feature-branch> <br>`$ git rebase master`<br>`$ git checkout master`<br>`$ git merge \` | Rebase Frequently usage |
| `$ git rebase --abort` | Abort rebase |
| **suggestion: Don't rebase the master branch into your personal feature branch** | The golden rule of Rebasing |
| `$ git diff --base <file-name>` | Conflicts against base file |
| **Other** |  |
| `$ git stash` | Temporarily save changes you've made but don’t want to commit yet |
| `$ git stash list` | Shows a list of all stashes |
| `$ git stash pop` | restore the last stash and remove it from the list |
| `$ git stash apply` | apply the stash without removing it from the list |
| **save it and share with all your friends and collegues** | A collection by G.Nagacharan with ❤️ |

