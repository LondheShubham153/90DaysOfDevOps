




![day7 snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706963212343/4d6ada10-26d3-4291-9155-d02a5ff4f850.avif?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)








## Introduction:

- Welcome to the world of Linux! Today, let's unravel the mysteries of package managers and systemctl. They're like the superheroes of software management, making our lives easier in the tech realm.

### What is a package manager in Linux?
Think of package managers as your personal assistants for software. They help you install, remove, and update programs on your computer.

Whether you prefer clicking buttons or typing commands, package managers have got you covered.




![package manager snp](https://itsfoss.com/content/images/wordpress/2020/10/linux-package-manager-explanation.png)





### What is a package?

- Packages are like little gift boxes containing all the stuff a program needs to run smoothly. Inside, you'll find files, settings, and sometimes even notes about other software it needs to work with.

- They come in all shapes and sizes, from flashy apps with lots of buttons to simple tools you control with text.



![package snap](https://tse4.mm.bing.net/th?id=OIP.pHRYju-E5L7MzprFPK4mbQHaEI&pid=Api&P=0&h=220)



### Different Kinds of Package Managers: Many Flavors to Choose From

- Think of package managers in Linux like various flavors of ice cream at an ice cream parlor.

- Each Linux distribution, such as Ubuntu, CentOS, or Debian, has its own package manager, akin to a unique ice cream flavor.

- Just as chocolate, vanilla, and strawberry ice creams have their distinct tastes, package managers like apt-get, yum, and pacman have their specific commands and functionalities tailored to their respective distributions.

- However, despite their differences, all package managers share a common objective: to facilitate the installation, removal, and management of software packages on your system.

- This goal parallels the smooth spreading of butter on toast—effortless and seamless.



![diff package](https://i.stack.imgur.com/Cygfh.png)







### Task 1 : You have to install docker and jenkins in your system from your terminal using package managers

### Installing Docker on Ubuntu:

- Ubuntu, well-known for its user-friendly interface and strong package management system, offers an easy way to install Docker. Follow these simple steps:

- Update Package Lists: Before proceeding, ensure your system's package lists are up to date by executing:

```shell
 sudo apt update
 ```


Install Docker: Once the package lists are updated, install Docker using the following command:

```shell
 sudo apt install docker.io
```


Verify Installation: After installation completes, verify that Docker is running by executing:

```shell
 docker --version
 ```


 ![docker version](https://cdn.hashnode.com/res/hashnode/image/upload/v1706963737710/83552904-b3fa-4947-821b-4f568dbd0919.png?auto=compress,format&format=webp)


### Installing Docker on CentOS:

- CentOS, known for its stability and reliability in business environments, offers a similar way to install Docker:

- Enable Docker Repository: Begin by enabling the Docker repository on your CentOS system:

```shell
 sudo yum install -y yum-utils
 sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

- Install Docker: Once the repository is enabled, proceed to install Docker:

```shell
 sudo yum install docker-ce docker-ce-cli containerd.io
```

- Start and Enable Docker: After installation, start the Docker service and enable it to start on boot:

```shell
 sudo systemctl start docker
 sudo systemctl enable docker
 ```


- Verify Installation: Confirm that Docker is installed and running by executing:

```shell
 docker --version
```

### Note: Before beginning the installation of Jenkins, ensure that Java is installed on your system. It's a prerequisite for Jenkins to function properly.

```shell
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
```

### Installing Jenkins on Ubuntu and CentOS:

- Jenkins, the leading open-source automation server, empowers teams to automate their software development processes with ease. 

- Let's install Jenkins using the respective package managers on Ubuntu and CentOS:

- Add Jenkins Repository: First, add the Jenkins repository key to your system:

```shell
 sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
 echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
   https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
   /etc/apt/sources.list.d/jenkins.list > /dev/null
```

- On CentOS, add the Jenkins repository:

```shell
 sudo yum install -y java-1.8.0-openjdk
 sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
 sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
 ```

- Install Jenkins: With the repository added, install Jenkins using the package manager:

```shell
 sudo apt-get update
 sudo apt-get install jenkins
 ```




![jenkins snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706964849217/65f16b88-e480-4ba7-819e-fc272f3addb5.png?auto=compress,format&format=webp)







- On CentOS, execute:

```shell
 sudo yum install jenkins
 ```

- Start and Enable Jenkins: After installation, start the Jenkins service and enable it to start on boot:

```shell
 sudo systemctl start jenkins
 sudo systemctl enable jenkins
 ```



![enable snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706964791308/f498ac1c-dae0-4503-9308-d93a69e5b0c5.png?auto=compress,format&format=webp)




- Access Jenkins: Access Jenkins by navigating to localhost:8080 (or your server's IP address) in your web browser.




![access jenkins snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1706964956469/4efdae94-706b-4dc9-bb8f-51d6fb62dc32.png?auto=compress,format&format=webp)





### systemctl and systemd

- Imagine systemctl as your tool to check and control the heart of your Linux system—systemd. It's like having a remote control for your computer's vital functions.

- For Example, you can use systemctl to check if a service is running:

```shell
systemctl status apache2
 ```




![apache status](https://cdn.hashnode.com/res/hashnode/image/upload/v1706965084608/12a3a1e7-726d-4b74-bd6d-2f56379ca8df.png?auto=compress,format&format=webp)




- This command tells you the status of the Apache web server service. You'll see if it's active and running smoothly or if there's a problem that needs attention.

- Systemd, on the other hand, is the mastermind behind the scenes, managing how your system operates. It's like the manager of a bustling office, overseeing every task and ensuring things run smoothly.

- You might encounter systemd when starting or stopping a service:

```shell
systemctl start apache2
```

- This command tells systemd to start the Apache web server service. Similarly, you can stop a service with:

```shell
systemctl stop apache2
```


![jenkins stop](https://cdn.hashnode.com/res/hashnode/image/upload/v1706965184196/bb219960-9542-497e-8a56-126f39ecb788.png?auto=compress,format&format=webp)




- Systemctl and systemd work hand in hand, ensuring your Linux system functions seamlessly. With systemctl, you can peek into systemd's operations and even tweak settings to keep your system in top shape. They're the dynamic duo that keeps your Linux experience smooth and efficient.

### Checking Docker Service Status:

- To check the status of the Docker service, use the following command:

```shell
  systemctl status docker
```


- This command tells you if the Docker service is active, inactive, or encountering any issues.

### Stopping Jenkins Service:

- Before stopping the Jenkins service, let's ensure it's installed and running. Use the following command to check the status:

```shell
systemctl status jenkins
```

- Once confirmed, you can stop the Jenkins service with:

```shell
sudo systemctl stop jenkins
```

- After stopping the service, you can verify its status again with the same command:

```shell
systemctl status jenkins
```  


### Understanding systemctl vs service:

- Systemctl and service are both used to manage services on Linux systems, but they have some differences in functionality and syntax.

- To check the status of a service using systemctl:

```shell
systemctl status <service_name>
```

For example:

```shell
systemctl status docker
```  



![systemctl](https://cdn.hashnode.com/res/hashnode/image/upload/v1706965388086/5ec56e64-bf9b-41fc-a219-6a941e8e3e7e.png?auto=compress,format&format=webp)





- To do the same using the service command:

```shell
service <service_name> status
```

For example:

```shell
service docker status
```


![status docker](https://cdn.hashnode.com/res/hashnode/image/upload/v1706965412861/efd7b117-2031-4081-a802-9e932f1d11c3.png?auto=compress,format&format=webp)

- Both commands provide information about the status of a service, but systemctl is more modern and powerful, offering additional features and options compared to service.




##### For further insights, please visit my Hashnode blog: [Link to my Hashnode blog](https://supriyasurkar.hashnode.dev/day-7-task-understanding-package-manager-and-systemctl)

