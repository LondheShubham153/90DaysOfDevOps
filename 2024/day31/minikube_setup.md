## Minikube setup in AWS EC2 Ubuntu instance

### prerequisites
 - 2 CPUs or more
 - 2GB of free memory
 - 20GB of free disk space
 - Internet connection
 - Container or virtual machine manager, such as: Docker, Podman

 We will use t2.medium instance.

 ---

 ### Launch AWS EC2 instance
 - launch an ec2 instance of type t2.medium, OS: Ubuntu, storage 25Gi

 ### Install docker 
 - install docker using commnad below
    
    ```
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    ```
    ```
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    ```
 - add user ubuntu to docker group
    ```
    sudo usermod -aG docker $USER && newgrp docker 
---

 ### Install Minikube & kubectl 
 - Download and install minikube
    
    ```
   curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
   
    sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64
    ```

 - Install kubectl: CLI utility to interact with API-Server
    
    ```
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

    echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

    sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
    
    chmod +x kubectl
    mkdir -p ~/.local/bin
    mv ./kubectl ~/.local/bin/kubectl
    ```
---

### Start minikube cluster
 - Start Minikue
    
    ```
    minikube start --driver=docker
    ```
---

### run a nginx pod
 - run using manifest file    
    ```
    kubectl apply -f pod.yml
    ```
- or run using commnad
   ``` kubectl run nginx --image=nginx ```
---
