# Understanding package manager and systemctl

# Task 1 update the package index files on the system
```
sudo apt-get update
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/26505115-8bab-49df-9010-0eb750c13e5a)

# Task 2 Install Docker
```
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl stop docker.socket
sudo systemctl status docker
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/ed4bd9ef-2315-4c26-a716-342bdc7187fa)

Once it is started use systemd systemctl commands to check docker status

Docker Running

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/a8c0d0ca-f516-482a-9952-af24c867daf9)

Docker socket stopped
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/0b67f215-98f2-4e94-bc18-7a410797360c)


check this link for differences between 

sudo systemctl stop docker and sudo systemctl stop docker.socket
https://stackoverflow.com/questions/47489631/warning-stopping-docker-service-but-it-can-still-be-activated-by-docker-socke


# Task 3 Install Jenkins
Install Java JDK in order to get jenkins working
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/50f44541-874c-4986-b2f7-a57fbeb78bfd)

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
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/ce9447e9-5a1a-412f-ab8e-6f3b92430eb0)

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/9420cee8-166c-4a4f-90ec-806a067002a2)

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/779d029b-4047-4af0-bb90-b8b331fbd9e4)

# Task 4 Install Apache
```
sudo apt install apache2
sudo systemctl status apache2
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/892e02b3-55b8-427b-a1cb-d006686e8903)

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/9d97d743-4c74-472f-bdfe-de4781ab5901)

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/fda362ba-4515-4b18-868a-23dbefc53d77)


