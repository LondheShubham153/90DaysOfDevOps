# Day 18 Task - Refer [Hashnode](https://sumitramchandra.hashnode.dev/docker-for-devops-engineers-2)

# Task-1
Learn how to use the docker-compose.yml file, to set up the environment, configure the services and links between different containers, and also to use environment variables in the docker-compose.yml file.
Docker Compose is a tool that assists in defining and sharing multi-container applications. By using Compose, we can define the services in a YAML file, as well as spin them up and tear them down with one single command.

Docker Compose is used for running multiple containers as a single service. Each of the containers here runs in isolation but can interact with each other when required. Docker Compose files are very easy to write in a scripting language called YAML, which is an XML-based language that stands for Yet Another Markup Language.

1)Install docker-compose

![image](https://user-images.githubusercontent.com/119837985/230570125-23abfe68-7615-428a-bc69-c552e6d09b22.png)

2)Create a docker-compose.yml file inside the project folder

![image](https://user-images.githubusercontent.com/119837985/230570163-b1210e28-7ecb-440c-9c1b-ad7b145749f5.png)


version: "3.3" denotes that we are using version 3.3 of Docker Compose.

The services section defines all the different containers we will create.

The build keyword specifies the location of our Dockerfile, and . represents the directory where the docker-compose.yml file is located.

The image keyword is used to specify the image from the docker hub for MySQL containers

For the database and web, we are using the ports keyword to mention the ports that need to be exposed.

And then, we also specify the environment variables for MySQL which are required to run MySQL.

3)Run docker-compose.yml file

docker-compose up: This command does the work of the docker-compose build and docker-compose run commands.

docker ps or docker-compose ps command list all the containers in the current docker-compose file.

![image](https://user-images.githubusercontent.com/119837985/230570210-fba2f357-da28-4b7b-9cbd-cebfccd9f892.png)


4)Verify that the application is working by accessing it in a web browser

![image](https://user-images.githubusercontent.com/119837985/230570246-92baab45-5463-4144-b1fe-260496d30d8c.png)


docker-compose down: This command stops all the services and cleans up the containers, networks, and images.

![image](https://user-images.githubusercontent.com/119837985/230570292-33fe1caa-80b4-45a2-9ce0-d7a386a13ed3.png)


# Task-2
1)Pull a pre-existing Docker image from a public repository (e.g. Docker Hub) and run it on your local machine. Run the container as a non-root user. Run the container as a non-root user (Hint- Use usermod command to give the user permission to docker). Make sure you reboot the instance after permitting the user.

For running the container as a non-root user, use the command usermod to give the user permission to docker

sudo usermod -a -G docker $USER

Then reboot the instance after permitting the user.

sudo reboot

![image](https://user-images.githubusercontent.com/119837985/230570326-1beb06cf-0972-4bab-a540-eda42bd64fea.png)


Copy the docker image command from the docker hub-

![image](https://user-images.githubusercontent.com/119837985/230570353-106343e4-1090-4991-ac01-02f7d7b96273.png)


2)Inspect the container's running processes and exposed ports using the docker inspect command.

docker inspect <container_name or ID>

![image](https://user-images.githubusercontent.com/119837985/230570380-20b34d91-925a-42b8-8ab4-ce5a3333e0b0.png)

![image](https://user-images.githubusercontent.com/119837985/230570428-a4b0ed09-e203-434f-9284-99ae8c845484.png)


3)Use the docker logs command to view the container's log output.

docker logs <container_name or ID>

![image](https://user-images.githubusercontent.com/119837985/230570455-a8bd37b4-d992-4c72-8a18-9f52befb2ed2.png)


4)Use the docker stop and docker start commands to stop and start the container.

docker stop: To stop one or more running Docker containers.

docker stop <container-name or ID>

docker start: Start one or more stopped containers

docker start <container-name or ID>

![image](https://user-images.githubusercontent.com/119837985/230570476-550ded32-a52e-452e-9f68-41ee754b434f.png)


5)Use the docker rm command to remove the container when you're done.

docker rm: Remove one or more containers.

--force, -f: Force the removal of a running container.

docker rm <container_name or ID>

![image](https://user-images.githubusercontent.com/119837985/230570540-9d6772d0-4cc6-4960-9021-40008054e439.png)


************************************************************************

Thanks for reading! Hope you find this helpful.
