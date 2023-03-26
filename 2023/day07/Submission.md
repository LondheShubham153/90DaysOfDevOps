Package manager and systemctl

What is a package manager in Linux?
In simpler words, a package manager is a tool that allows users to install, remove, upgrade, configure and manage software packages on an operating system. The package manager can be a graphical application like a software center or a command lines tool like apt-get or Pacman.

You’ll often find me using the term ‘package’ in tutorials and articles, To understand package manager, you must understand what a package is.

What is a package?
A package is usually referred to as an application but it could be a GUI application, command line tool or a software library (required by other software programs). A package is essentially an archive file containing the binary executable, configuration file and sometimes information about the dependencies.

Different kinds of package managers
Package Managers differ based on the packaging system but the same packaging system may have more than one package manager.

For example, RPM has Yum and DNF, package managers. For DEB, you have apt-get, aptitude command line-based package managers.

Tasks
Install docker and Jenkins in your system from your terminal using package managers
To install Docker, first, update your system with the command

~ sudo apt-get install sudo will provide you the root access. It will update your system to the latest.

then install the Docker from the package

![image](https://user-images.githubusercontent.com/119837985/227769255-c732e8ae-d12b-4a8f-b980-ea7902c9876d.png)

check the docker version with ~ docker --version

![image](https://user-images.githubusercontent.com/119837985/227769279-8779b9d7-fb43-4742-8188-eae518b709bf.png)

To install Jenkins refers to [This Blog](https://www.trainwithshubham.com/blog/install-jenkins-on-aws).

Update your system
  sudo apt update
  
Install java
  sudo apt install openjdk-11-jre
  
Validate Installation
  java -version
  
It should look something like this

  openjdk version "11.0.12" 2021-07-20 OpenJDK Runtime Environment (build 11.0.12+7-post-Debian-2) OpenJDK 64-Bit Server VM (build 11.0.12+7-post-Debian-2, mixed mode, sharing)

Step - 2 Install Jenkins

Just copy these commands and paste them onto your terminal.

  curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee \   /usr/share/keyrings/jenkins-keyring.asc > /dev/null 

  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \   https://pkg.jenkins.io/debian binary/ | sudo tee \  /etc/apt/sources.list.d/jenkins.list > /dev/null

  sudo apt-get update 

  sudo apt-get install jenkins
  
  
Step -3 Start Jenkins

  sudo systemctl enable jenkins

  sudo systemctl start jenkins

  sudo systemctl status jenkins
Step - 4 Open port 8080 from AWS Console:

Or you can directly pull the Jenkins image from Docker Hub.

~ sudo docker pull jenkins/jenkins


Docker and Jenkins are two widely used tools in the software development industry. Docker is a containerization platform that allows developers to package and deploy applications with all of their dependencies, while Jenkins is a popular open-source automation server used for continuous integration and continuous deployment (CI/CD).

In this article, we have shown you how to install Docker and Jenkins on Ubuntu using package managers. Both of these tools are essential for any modern software development project, and their installation is relatively straightforward. We hope this guide has been helpful to you and that you can now successfully install and use these tools on your system.

systemctl and systemd
systemctl is used to examine and control the state of the “systemd” system and service manager. systemd is a system and service manager for Unix-like operating systems (most of the distributions, not all).

Tasks
check the status of the docker service in your system (make sure you completed the above tasks, else docker won't be installed)

use ~ sudo systemctl status docker

![image](https://user-images.githubusercontent.com/119837985/227769435-bf17d905-021f-4299-8738-60aee5ca18f7.png)


stop the service Jenkins and post before and after screenshots
Before:

![image](https://user-images.githubusercontent.com/119837985/227769447-4af56366-0878-448d-b1b8-ae8c8853c2e1.png)

use: ~ sudo systemctl stop jenkins   to stop Jenkins service.

![image](https://user-images.githubusercontent.com/119837985/227769475-af24ab55-feca-4cf6-9d41-bd1219660f71.png)


read about the commands systemctl vs service

systemctl and service are two commands used in Linux-based operating systems for managing system services.

systemctl is a command used to control the systemd system and service manager. It is used to start, stop, enable, disable, restart, and reload system services. With systemctl, you can manage the system services at boot time, control their status, and view their logs.

Some of the commonly used commands with systemctl are:

systemctl start <service_name> - start a service

systemctl stop <service_name> - stop a service

systemctl restart <service_name> - restart a service

systemctl enable <service_name> - enable a service to start automatically at boot time

systemctl disable <service_name> - disable a service from starting automatically at boot time

systemctl status <service_name> - display the current status of a service

systemctl reload <service_name> - reload the configuration of a service

service is another command used for managing system services in Linux-based operating systems. It is typically used in older versions of Linux or in situations where systemctl is not available. It can start, stop, and restart services on the system.

Some commonly used service commands are:

service <service_name> start - start a service

service <service_name> stop - stop a service

service <service_name> restart - restart a service

service <service_name> reload - reload the configuration of a service

It is important to note that the service command may not work on all Linux-based systems, particularly those that use systemd as the system and service manager. In such cases, you should use systemctl to manage system services.

In summary, systemctl and service are both commands used for managing system services in Linux-based operating systems. systemctl is the preferred command on modern systems that use systemd, while service is used on older systems or in situations where systemctl is not available.


Thanks for reading! Hope you find this helpful.

Happy learning!!! Suggestions are welcome.

~Sumit

Thank You - Shubham Londhe
