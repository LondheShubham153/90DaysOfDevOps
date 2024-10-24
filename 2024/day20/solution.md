
# Docker & Docker Compose: The Ultimate Command Cheat-Sheet 🚀

## Introduction

Docker and Docker Compose are powerful tools that have revolutionized software development and DevOps workflows. As a DevOps engineer, mastering Docker is essential for managing containers, ensuring seamless deployments, and maintaining high scalability. In this blog, I’ve compiled a comprehensive cheat-sheet of Docker and Docker Compose commands in a structured, easy-to-understand table format. This will serve as a handy reference for your everyday tasks.

---

## 🐳 Docker Commands

| **Command**                          | **Description**                                                                 | **Example**                  |
|--------------------------------------|---------------------------------------------------------------------------------|------------------------------|
| `docker --version`                   | Check Docker version installed on your system.                                   | `docker --version`            |
| `docker pull <image-name>`           | Download an image from Docker Hub.                                               | `docker pull nginx`           |
| `docker images`                      | List all available Docker images on your machine.                                | `docker images`               |
| `docker ps`                          | List all running containers.                                                     | `docker ps`                   |
| `docker ps -a`                       | List all containers (running and stopped).                                       | `docker ps -a`                |
| `docker run <image-name>`            | Run a Docker container.                                                          | `docker run nginx`            |
| `docker run -it <image-name> /bin/bash` | Run a container in interactive mode.                                              | `docker run -it ubuntu /bin/bash` |
| `docker run -d <image-name>`         | Run a container in detached mode (in the background).                            | `docker run -d nginx`         |
| `docker stop <container-id>`         | Stop a running container.                                                        | `docker stop 123abc`          |
| `docker start <container-id>`        | Start a stopped container.                                                       | `docker start 123abc`         |
| `docker rm <container-id>`           | Remove a stopped container.                                                      | `docker rm 123abc`            |
| `docker rmi <image-id>`              | Remove an image from your system.                                                | `docker rmi abc123`           |
| `docker exec -it <container-id> /bin/bash` | Access a running container in interactive mode.                                    | `docker exec -it 123abc /bin/bash` |
| `docker logs <container-id>`         | Check logs of a running container.                                               | `docker logs 123abc`          |
| `docker inspect <container-id>`      | View detailed information about a container.                                     | `docker inspect 123abc`       |
| `docker build -t <image-name> .`     | Build an image from a Dockerfile.                                                | `docker build -t myapp .`     |
| `docker commit <container-id> <new-image-name>` | Create a new image from a container’s state.                                      | `docker commit 123abc newimage` |
| `docker network ls`                  | List all Docker networks.                                                        | `docker network ls`           |
| `docker volume ls`                   | List all Docker volumes.                                                         | `docker volume ls`            |
| `docker system prune`                | Remove all unused containers, networks, images, and build cache.                 | `docker system prune`         |

---

## 🔄 Docker Compose Commands

| **Command**                          | **Description**                                                                 | **Example**                  |
|--------------------------------------|---------------------------------------------------------------------------------|------------------------------|
| `docker-compose --version`           | Check Docker Compose version installed.                                         | `docker-compose --version`    |
| `docker-compose build`               | Build images for services defined in `docker-compose.yml`.                       | `docker-compose build`        |
| `docker-compose up`                  | Start services defined in `docker-compose.yml`.                                  | `docker-compose up`           |
| `docker-compose up -d`               | Start services in detached mode.                                                | `docker-compose up -d`        |
| `docker-compose ps`                  | List containers for the services defined in `docker-compose.yml`.                | `docker-compose ps`           |
| `docker-compose stop`                | Stop all running services.                                                      | `docker-compose stop`         |
| `docker-compose restart`             | Restart the services.                                                           | `docker-compose restart`      |
| `docker-compose logs`                | View logs of running services.                                                  | `docker-compose logs`         |
| `docker-compose exec <service-name> <command>` | Execute a command in a running service container.                                 | `docker-compose exec web /bin/bash` |
| `docker-compose down`                | Stop and remove containers, networks, and volumes created by `docker-compose up`. | `docker-compose down`         |
| `docker-compose down --volumes`      | Remove containers, networks, and volumes defined in the `docker-compose.yml`.    | `docker-compose down --volumes` |

---

## 🌐 Network & Volume Management Commands

| **Command**                          | **Description**                                                                 | **Example**                  |
|--------------------------------------|---------------------------------------------------------------------------------|------------------------------|
| `docker network create <network-name>` | Create a custom network.                                                        | `docker network create mynet` |
| `docker network connect <network-name> <container-id>` | Connect a container to a network.                                                | `docker network connect mynet 123abc` |
| `docker volume create <volume-name>` | Create a Docker volume.                                                         | `docker volume create myvol`  |
| `docker volume rm <volume-name>`     | Remove a Docker volume.                                                         | `docker volume rm myvol`      |

---

## 🛠 Additional Handy Docker Tips

| **Command**                          | **Description**                                                                 | **Example**                  |
|--------------------------------------|---------------------------------------------------------------------------------|------------------------------|
| `docker run --name <custom-name> <image-name>` | Run a container with a custom name.                                              | `docker run --name myapp nginx` |
| `docker run -p <host-port>:<container-port> <image-name>` | Expose a container port to the host.                                              | `docker run -p 8080:80 nginx` |
| `docker-compose up --build`          | Build and start the services.                                                   | `docker-compose up --build`   |

---

## Conclusion

This cheat-sheet is a quick reference guide for Docker and Docker Compose commands, designed to help you manage containers, networks, and volumes effectively. As you continue to build your DevOps skills, this will become an invaluable resource for container orchestration and deployment strategies. 🚀

Feel free to bookmark this blog or print the table out for quick access. Happy Docker-ing! 😊

[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)