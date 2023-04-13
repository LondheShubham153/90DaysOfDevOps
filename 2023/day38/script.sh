#!/bin/bash
# Update package index
sudo apt update

# Install Java 8
sudo apt install -y openjdk-8-jdk

# Add Jenkins GPG key and repository
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update package index and install Jenkins
sudo apt update
sudo apt install -y jenkins

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