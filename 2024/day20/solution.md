# **Docker & Docker Compose Cheat-Sheet**

---

#### **1. Basic Docker Commands**
**Description**: These commands help you get started with Docker. Use them to verify installations, explore Docker environments, and manage images and containers.  
| **Command**                       | **Description**                                                                 |
|------------------------------------|---------------------------------------------------------------------------------|
| `docker --version`                | Check the installed Docker version.                                            |
| `docker info`                     | Display detailed information about the Docker environment.                     |
| `docker images`                   | List all Docker images on the local machine.                                   |
| `docker pull <image_name>`        | Download an image from Docker Hub.                                             |
| `docker run <image_name>`         | Create and start a container from an image.                                    |
| `docker ps`                       | Show all currently running containers.                                         |

---

#### **2. Container Management**
**Description**: These commands allow you to manage Docker containers. Start, stop, inspect, and remove containers with ease.  
| **Command**                       | **Description**                                                                 |
|------------------------------------|---------------------------------------------------------------------------------|
| `docker ps -a`                    | List all containers, including stopped ones.                                   |
| `docker start <container_id>`     | Start a stopped container.                                                     |
| `docker stop <container_id>`      | Stop a running container.                                                      |
| `docker rm <container_id>`        | Remove a stopped container.                                                    |
| `docker logs <container_id>`      | View logs of a container.                                                      |

---

#### **3. Docker Images**
**Description**: These commands focus on managing Docker images, from building custom images to removing unused ones.  
| **Command**                             | **Description**                                                                 |
|------------------------------------------|---------------------------------------------------------------------------------|
| `docker build -t <image_name>:<tag> .`   | Build a Docker image from a Dockerfile.                                        |
| `docker rmi <image_id>`                  | Remove an image by its ID.                                                    |
| `docker tag <image_id> <repo_name>:<tag>`| Tag an image for pushing to a repository.                                      |

---

#### **4. Networking**
**Description**: Use these commands to manage Docker networks, connect containers, and inspect configurations.  
| **Command**                              | **Description**                                                                 |
|------------------------------------------|---------------------------------------------------------------------------------|
| `docker network ls`                      | List all Docker networks.                                                      |
| `docker network create <network_name>`   | Create a new Docker network.                                                   |
| `docker network inspect <network_name>`  | Inspect a specific Docker network.                                             |

---

#### **5. Docker Compose**
**Description**: Docker Compose commands simplify multi-container applications. Define, start, and stop services using a single configuration file.  
| **Command**                             | **Description**                                                                 |
|------------------------------------------|---------------------------------------------------------------------------------|
| `docker-compose --version`              | Check the installed Docker Compose version.                                    |
| `docker-compose up`                     | Start all services defined in the `docker-compose.yml`.                        |
| `docker-compose down`                   | Stop and remove all containers defined in `docker-compose.yml`.                |
| `docker-compose logs`                   | View logs for all services.                                                    |

---

#### **6. Troubleshooting**
**Description**: These commands are handy for debugging issues with Docker containers, networks, and resources.  
| **Command**                              | **Description**                                                                 |
|------------------------------------------|---------------------------------------------------------------------------------|
| `docker inspect <container_id>`          | Display detailed information about a container.                                |
| `docker exec -it <container_id> bash`    | Open a shell session in a running container.                                   |
| `docker system prune`                    | Clean up unused Docker objects (images, containers, networks).                 |

---


[LinkedIn](https://www.linkedin.com/in/amitabh-devops/)