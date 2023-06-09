![Understanding package manager and systemctl](https://community-cdn-digitalocean-com.global.ssl.fastly.net/ntA6RhwRo3boz2c9hLm2zaV7)

# Understanding package manager and systemctl

### What are package managers?

In Linux Package Managers are essentially software applications that help users to: Search, Download, Install, Remove and Update software applications on their computer operating system. These can be either Command Line tools or a complete Graphical User Interface application.

Experienced Linux users will very rarely download software from websites or any other location. The primary reasons for this included aspects such as ease of use, security and the fact that most Linux distributions have a list of sources where users can download free open-source software packages.

These package sources are referred to as repositories. Using a package manager users will automatically download the appropriate, package from a configured repository, install it and complete all the required configuration tasks. There is no need for the user to click through a wizard screen or hunt down configuration settings. If packages version are updated within the package repository, the package manager will update each package to its latest version whenever it is requested by the user to do so.

### What is a package?

In Linux a package is a compressed software archive file that contains all the files that comes with a software application that delivers any kind of functionality, this can be any kind of command line utility, GUI application or a software library.

A package may consist of a binary executable, configuration file and other software dependencies. Common types of Linux packages include `.deb`, `.rpm`, and `.tgz`. Linux packages don't usually contain the dependencies necessary to install them, therefore Linux distributions use package managers to automatically read dependencies files and download the packages needed before proceeding with the installation.

The package usually includes a manifest of dependencies that must be satisfied for a software application to execute as expected on any given Linux computer.

Common Package Managers in Linux include:

* dpkg (Debian Package Manager)
    
* APT (Advanced Package Tool)
    
* rpm (RedHat Package Manager)
    
* yum (Yellowdog Update Modified)
    
* dnf (Dandified Yum)
    
* Homebrew
    
* zypper
    
* flatpak
    
* pacman
    
* snap
    
* synaptic
    

Packages also contain scripts that need to be executed if a package is requested to be removed. Ensuring that everything that is associated with execution of the package is cleared up.

### Different kinds of package managers

Package Managers differ based on the packaging system but the same packaging system may have more than one package manager.

For example, RPM has Yum and DNF, package managers. For DEB, you have apt-get, aptitude command line-based package managers.

Lets install docker and Jenkins in your system from your terminal using package managers

```bash
yum install docker -y   # To install docker
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684858861455/8761b264-9a4a-4d1f-991b-9031a9ab317d.png )

```bash
rpm -q docker  #To check software installed or not
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684859569736/7c99ca32-84cf-4629-bfbd-9f7919003100.png )

### To Install Jenkins:

```bash
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install java-11-openjdk
sudo yum install jenkins
sudo systemctl daemon-reload
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684859772490/e6cbe0e5-732c-47bb-9cc2-4f3c2d4c56af.png )

### Systemctl and Systems

The *systemctl* command is a systemd utility used to manage services, get information about service unit files and service states, and therefore a useful utility to know for managing services on the server while *systemd* is an array of components for Linux OS.

## **What is Systemd?**

Systemd is an init system used in Linux distributions to bootstrap user space components and manage system processes.

It runs with PID 1 and it is the one responsible for starting the rest of the system.

## **What is systemctl?**

The systemctl command is a command-line utility that interacts with the systemd system and service manager. It is the primary tool used to control and manage systemd services, allowing users to start, stop, enable, disable, and check the status of services.

```bash
systemctl [OPTIONS...] COMMAND ...
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860302024/3ed6a562-8014-4a59-b886-a753aa663422.png )

## **Managing services.**

The init system is responsible for the management of services and daemons at any point the system is running.  
The target of most systemd actions is *units* - these are resources that systemd knows how to manage. They are mostly categorized by the type of resource they represent.

For managing services the units are *service units*, these have unit files with the suffix *.service*.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860355369/19702429-a866-48a3-a032-1a6f29d83678.png )

In our examples, we will be using *Jenkins* service but feel free to use any other application e.g apache2, MySQL, docker etc:

### **Starting, stopping, restarting, and reloading services.**

To start a service, say *jenkinks*  
We write:

```bash
$ sudo systemctl start jenkins.service
```

We can also ignore the *.service* suffix:

```bash
$ sudo systemctl start jenkins
```

To stop the service we write:

```bash
$ sudo systemctl stop jenkins.service
```

Usually, after changing a configuration for a service we need to restart it, with *systemctl*, we restart the service as follows:

```bash
$ sudo systemctl restart jenkins.service
```

Instead of stopping and then starting(restarting), we can also reload a service:

```bash
$ sudo systemctl reload jenkins.service
```

We can also combine reloading and restarting, that is if we are not sure about the service functionalities.

```bash
$ sudo systemctl reload-or-restart jenkins.service
```

### **Service statuses.**

If we are not sure if a service has started after trying to start it we check its status as follows:

```bash
$ sudo systemctl status jenkins.service
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860503211/36259e1a-8b0e-415b-9be8-6d8e56d8311f.png )

Using systemctl with the *is-active* argument allows us to check if a unit is active/running.

```bash
$ sudo systemctl is-active jenkins.service
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860542136/ee3d63d8-180f-4bc2-a349-27039c700689.png )

The *is-enabled* argument is used to check if a service starts when the machine boots up:

```bash
$ sudo systemctl is-enabled jenkins.service
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860562814/a34b46a1-e33b-49fd-a3fb-b5a6c77821e7.png )

If we started a service and it fails, we can check this by writing:

```bash
$ sudo systemctl is-failed jenkins.service
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860582662/0de271d4-f045-48a7-90e2-812d396eee9e.png )

### **Enabling and disabling services.**

Sometimes we use services frequently so it is convenient to start the service automatically immediately the system boots up.  
For this we use *enable* with systemctl:

For example, to start *Jenkins* service every time the system boots up we write:

```bash
$ sudo systemctl enable jenkins.service
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860608168/689fed40-5ce9-496f-b2fc-1e2c52fa5660.png )

After the command is executed a symbolic link is created in the */lib/systemd/system* directory.

To undo the above operation, we use *disable*:

```bash
$ sudo systemctl disable jenkins.service
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1684860629275/3b0bd6de-957b-41c5-a620-68605d134ae7.png )

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ )

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)