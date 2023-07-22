# Understanding package manager and systemctl

# Task 1 update the package index files on the system
```
sudo apt-get update
```
# Task 2 Install Docker
```
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl stop docker.socket
sudo systemctl status docker
```
Once it is started use systemd systemctl commands to check docker status

check this link for difference between 

sudo systemctl stop docker and sudo systemctl stop docker.socket
https://stackoverflow.com/questions/47489631/warning-stopping-docker-service-but-it-can-still-be-activated-by-docker-socke


# Task 3 Install Jenkins
Install Java JDK in order to get jenkins working
```
java -version
sudo apt install openjdk-17-jre-headless
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl status jenkins
```

# Task 4 Install Apache
```
sudo apt install apache2
sudo systemctl status apache2
```