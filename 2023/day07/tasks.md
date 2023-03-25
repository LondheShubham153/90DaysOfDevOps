# Day 7 Task: Understanding package manager and systemctl

### What is a package manager in Linux?
 
 In simpler words, a package manager is a tool that allows users to install, remove, upgrade, configure and manage software packages on an operating system. The package manager can be a graphical application like a software center or a command line tool like apt-get or pacman.

 You’ll often find me using the term ‘package’ in tutorials and articles, To understand package manager, you must understand what a package is.

### What is a package?
 
 A package is usually referred to an application but it could be a GUI application, command line tool or a software library (required by other software programs). A package is essentially an archive file containing the binary executable, configuration file and sometimes information about the dependencies.

### Different kinds of package managers
 Package Managers differ based on packaging system but same packaging system may have more than one package manager.

 For example, RPM has Yum and DNF package managers. For DEB, you have apt-get, aptitude command line based package managers.


## Tasks

 1) You have to install docker and jenkins in your system from your terminal using package managers
install docker
$ sudo apt-get update
$ sudo apt install docker.io
$ sudo snap install docker
$ docker --version

insatll jenkins
$ curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
$echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
$sudo apt-get update
$sudo apt-get install jenkins

 2) Write a small blog or article to install these tools using package managers on Ubuntu and CentOS


### systemctl and systemd

 systemctl is used to examine and control the state of “systemd” system and service manager. systemd is system and service manager for Unix like operating systems(most of the distributions, not all).


## Tasks

 1) check the status of docker service in your system (make sure you completed above tasks, else docker won't be installed)
sudo systemctl status docker
 2) stop the service jenkins and post before and after screenshots
sudo systemctl stop jenkins
 3) read about the commands systemctl vs service

 eg. `systemctl status docker` vs `service docker status`

 so systemctl is great and it has more features whereas service command was used in legacy systems and from my point of view systemctl is great as it holds more features compare to service

 basically this two commands are useful for start,stop,status or pause of application.

For Reference, read [this](https://www.howtogeek.com/devops/how-to-check-if-the-docker-daemon-or-a-container-is-running/#:~:text=Checking%20With%20Systemctl&text=Check%20what%27s%20displayed%20under%20%E2%80%9CActive,running%20sudo%20systemctl%20start%20docker%20.)


#### Post about this and bring your friends to this #90DaysOfDevOps challenge.

