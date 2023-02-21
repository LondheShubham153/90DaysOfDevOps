### Tasks:- 
1) You have to install docker and jenkins in your system from your terminal using package managers
ANSWER:-
       See ANSWER no 2.

2) Write a small blog or article to install these tools using package managers on Ubuntu and CentOS
ANSWER:- 
        1) UBUNTU DOCKER INSTALLATION:-
                1) sudo su
                2) apt-get update -y 
                3) apt-get install docker.io
                4) docker --version
                5) systemctl status docker
                6) systemctl start docker ( if not running )
         UBUNTU JENKINS INSTALLATION:-
                1) sudo su 
                2) apt install openjdk-8-jdk -y
                3) apt install openjdk-11-jdk -y
                4) curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc &gt; /dev/null
                5) echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list &gt; /dev/null
                6) apt update
                7) apt install jenkins -y
                8) systemctl status jenkins
                9) systemctl enable --now jenkins
                10) ufw allow 8080
                11) ufw status
                12) ufw enable
                
         2) CENTOS DOCKER INSTALLATION:-
                 1) sudo su
                 2) yum update -y 
                 3) yum install docker
                 4) docker --version
                 5) systemctl status docker
                 6) systemctl start docker ( if not running )
            CENTOS JENKINS INSTALLATION:-
                 1)  yum update
                 2)  sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/redhat-stable/jenkins.repo
                 3)  sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
                 4)  sudo yum upgrade
                 5)  sudo yum install java-11-openjdk
                 6)  sudo amazon-linux-extras install java-openjdk11
                 7)  sudo yum install java-11-openjdk
                 8)  java --version
                 9)  sudo yum install jenkins
                10)  jenkins --version
                11)  sudo systemctl enable jenkins
                12)  sudo systemctl start jenkins
                13)  sudo systemctl status jenkins
   
