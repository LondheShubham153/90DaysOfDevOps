#!/bin/bash
sudo apt update
sudo apt install openjdk-11-jdk ca-certificates maven git wget unzip -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins

# Add Jenkins to system startup
sudo systemctl enable jenkins

# Install Docker dependencies
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add Docker GPG key and repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index and install Docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Add current user to Docker group
sudo usermod -aG docker ${USER}

# Start Docker service
sudo systemctl start docker
