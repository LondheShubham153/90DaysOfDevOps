# '''To install Docker in ubuntu'''

1. Set up the repository
    Update the apt package index and install packages to allow apt to use a repository over HTTPS:

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

2. Add Docker’s official GPG key:
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


3. Use the following command to set up the repository:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

Install Docker Engine
1. Update the apt package index:
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


# '''To install Docker on CentOS'''

1. Set up the repository
    i. Install the yum-utils package (which provides the yum-config-manager utility) and set up the     repository.

sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo


2. Install Docker Engine
    i. Install the latest version of Docker Engine, containerd, and Docker Compose or go to the next step to install a specific version:
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin