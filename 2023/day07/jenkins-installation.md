# '''Jenkins installation on ubuntu'''

1. sudo apt update -y
2. sudo apt install java-11-openjdk -y
3. curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
4. echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
5. sudo apt-get update
6. sudo apt-get install jenkins -y


# '''Jenkins installation on CentOS'''

1. sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
2. sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
3. sudo yum upgrade

# Add required dependencies for the jenkins package
1. sudo yum install java-11-openjdk -y
2. sudo yum install jenkins -y
3. sudo systemctl daemon-reload