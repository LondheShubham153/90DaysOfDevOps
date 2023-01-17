# Day 18 Task: Docker for DevOps Engineers

Till now you have created Docker file and pushed it to the Repository. Let's move forward and dig more on other Docker concepts.
Aj thodi padhai krte hai on Docker Compose 😃

## Docker Compose
- Docker Compose is a tool that was developed to help define and share multi-container applications.
- With Compose, we can create a YAML file to define the services and with a single command, can spin everything up or tear it all down.

## Task-1

Learn how to use the docker-compose.yml file, to set up the environment, configure the services and links between different containers, and also to use environment variables in the docker-compose.yml file.

## Task-2
- Pull a pre-existing Docker image from a public repository (e.g. Docker Hub) and run it on your local machine. Run the container as a non-root user (Hint- Use `usermod ` command to give user permission to docker). Make sure you reboot instance after giving permission to user.
- Inspect the container's running processes and exposed ports using the docker inspect command.
- Use the docker logs command to view the container's log output.
- Use the docker stop and docker start commands to stop and start the container.
- Use the docker rm command to remove the container when you're done.

## How to run Docker commands without sudo?
- Make sure docker is installed and system is updated (This is already been completed as a part of previous tasks):
- sudo usermod -a -G docker $USER 
- Reboot the machine.

For reference you can watch this [video](https://youtu.be/Tevxhn6Odc8)

You can Post on LinkedIn and let us know what you have learned from this task by #90DaysOfDevOps Challange. Happy Learning :)
