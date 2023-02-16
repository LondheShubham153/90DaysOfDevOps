# Day 7 Task: Understanding package manager and systemctl

## What is package manager in linux  :

- a package manager is a software tool that installs, updates, and removes packages (collection of software programmes ) on a computer. In linux, package managers are used to manage the installation and removal of software packages from the operating system.
There are many different package managers available in linux , including 
- `apt` (Advanced Package Tool ) --The default package manager for many debian based distributions. Such as Ubuntu, Linux Mint.
- `yum` (Yellowdog Updater, Modified ) - The default package manager for many Red Hat based distributions, such as Centos and Fedora
- `dnf` (Dandified Yum ) - A newer version of  `yum` used as the default package manager in Fedora 22 and later

Each package manager has its own command-line interface and set of commands for installing, updating and removing packages. 
for example, to install a package using `apt`, you can use the `apt install` command :
`$ apt install package-name `

To update all installed package using `apt`, you can use the `apt update` and `apt upgrade` commands :
`$ apt update`
`$ apt upgrade`

To remove a package using `apt`, you can use the `apt remove` command:
`$ apt remove package-name`

## what is package :
In Linux, a package is a collection of software programs that are bundled together and distributed for easy installation. Packages are typically distributed in the form of a package manager file, which is a file that contains all of the necessary files and metadata for installing the package.


# task 1 :

You have to install docker and jenkins in your system from your terminal using package managers
![image](https://user-images.githubusercontent.com/89054489/211150447-5a5c5fe2-2e7b-48cd-b61e-2adf9ce2197b.png)
![image](https://user-images.githubusercontent.com/89054489/211151258-2160d813-e2e2-439b-87e0-e7a5707f9b53.png)
![image](https://user-images.githubusercontent.com/89054489/211151285-62bdd9eb-16ea-411f-a881-57b40ee30fd7.png)


Write a small blog or article to install these tools using package managers on Ubuntu and CentOS

systemctl and systemd
systemctl is used to examine and control the state of “systemd” system and service manager. systemd is system and service manager for Unix like operating systems(most of the distributions, not all).

![image](https://user-images.githubusercontent.com/89054489/211152031-e8522488-eb51-424e-bd7a-1722bb71b81e.png)
![image](https://user-images.githubusercontent.com/89054489/211152743-6128bdbb-4a99-496a-bd04-f096da998d28.png)
![image](https://user-images.githubusercontent.com/89054489/211153055-9ef7f43d-bac1-44ba-b14e-95465c4079d7.png)
