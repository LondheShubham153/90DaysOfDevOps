Key Docker Terminologies
Image:

A Docker image is a lightweight, standalone, and executable software package that includes everything needed to run a piece of software, including the code, runtime, libraries, environment variables, and configuration files. Images are read-only templates used to create Docker containers.

Container:

A Docker container is a lightweight, standalone, and executable package that runs an application along with its dependencies. Containers are created from Docker images and share the host operating system’s kernel, making them more efficient and faster to start compared to virtual machines.

Dockerfile:

A Dockerfile is a text file that contains a series of instructions on how to build a Docker image. It includes commands such as specifying the base image, installing dependencies, copying files, and setting environment variables. Dockerfiles enable reproducible builds of Docker images.

Volume:

A Docker volume is a mechanism for persisting data generated and used by Docker containers. Volumes allow data to be shared between containers and the host system, ensuring data persistence even if the container is deleted.

Network:

A Docker network is a virtual network that allows containers to communicate with each other, the host system, and external networks. Docker provides several networking options, including bridge networks, host networks, and overlay networks.

Main Docker Components
Docker Engine:

Docker Engine is the core component of Docker, responsible for building, running, and managing Docker containers. It consists of three parts:

Docker Daemon: The background process (daemon) that runs on the host machine, managing Docker objects such as containers, images, volumes, and networks.

Docker Client: The command-line interface (CLI) used by users to interact with the Docker Daemon via commands.

REST API: An API that allows programs to interact with the Docker Daemon remotely.

Docker Hub:

Docker Hub is a cloud-based repository service for Docker images. It allows users to find, share, and store Docker images. Users can pull pre-built images from Docker Hub or push their custom images to share with others. Docker Hub is the default registry used by Docker.

Docker Compose:

Docker Compose is a tool for defining and running multi-container Docker applications. It uses a YAML file to configure the application’s services, networks, and volumes, making it easy to manage complex applications with multiple interconnected containers.

Docker Swarm:

Docker Swarm is Docker’s native clustering and orchestration tool. It enables the management of a swarm of Docker Engines, turning them into a single virtual Docker Engine. Swarm allows for load balancing, scaling, and management of containerized applications across multiple hosts.

How They Interact
Docker Engine: The Docker Engine runs on the host machine and is the core component that interacts with other Docker objects (containers, images, volumes, networks) and orchestrates their operations.

Docker Client: Users interact with the Docker Client (CLI) to issue commands, which are then communicated to the Docker Daemon via the REST API.

Docker Hub: When users pull or push images, the Docker Engine interacts with Docker Hub to retrieve or store images.

Docker Compose: Users define multi-container applications using Docker Compose files. Docker Compose interacts with the Docker Engine to start, stop, and manage the defined services.

Docker Swarm