## Day 21 Task: Docker Important interview Questions.


## Docker Interview
 Docker is a good topic to ask in DevOps Engineer Interviews, mostly for freshers.
 One must surely try these questions in order to be better in Docker
 
## Questions
1. What is the Difference between an Image, Container and Engine?
Ans => 
# Image
An "Image" in the context of `containers` is a lightweight, stand-alone, and executable package that includes everything needed to run a piece of software, including the code, runtime, system tools, libraries, and settings.

# Container
A "Container" is a standalone executable package that includes everything needed to run a piece of software, including the application code, runtime, libraries, and system tools. `Containers` are isolated from each other and from the host system, allowing multiple `containers` to run on a single host without conflicting with each other.

# Engine
An "Engine" is a program that is responsible for running containers. The most widely known example of a container `engine` is Docker. The engine provides a high-level API that enables you to manage the life cycle of containers, including starting, stopping, and managing the distribution of resources such as CPU, memory, and storage.

In summary, an `image` is the blueprint for a container, while a container is an isolated and running instance of an `image`. The engine is responsible for managing the `containers`, including starting and stopping them, and allocating resources.

2. What is the Difference between the Docker command COPY vs ADD?
Ans => 
The `COPY` and `ADD` commands are used in a Dockerfile to include files from the host file system into a Docker image. However, there are some differences between the two.

`COPY` is the simpler of the two commands and is used to copy files from the host file system into the Docker image. It has no special functionality beyond copying files. It only allows you to copy files from the host file system into the image file system, and it doesn't support any special features like automatically uncompressing files or fetching files from a remote URL.

`ADD` is more versatile than `COPY` as it has additional functionality, beyond just copying files. `ADD` supports two forms of source paths, local files and remote URLs. When the source is a URL, `ADD` will download the file from the URL and add it to the image file system. Additionally, `ADD` automatically handles decompression of files in the gzip and tar format.

In general, it's recommended to use `COPY` unless you need the extra functionality provided by `ADD`. `COPY` is simpler, faster, and less prone to errors, as it only does what it says - it copies files. On the other hand, `ADD` should be used only when you need its additional functionality, such as fetching files from a remote URL or automatically decompressing files.

In conclusion, both COPY and ADD are used to include files from the host file system into a Docker image, but COPY is a simpler and faster command, while ADD has additional functionality, such as fetching files from a remote URL or automatically decompressing files.

3. What is the Difference between the Docker command CMD vs RUN?
Ans =>
The CMD and RUN commands in a Dockerfile are used to specify commands that should be run within a Docker container. However, there are some key differences between the two.

RUN is used to execute command(s) in a new layer on top of the current image and commit the results. Every RUN command in a Dockerfile creates a new layer in the image, which can increase the size of the final image. RUN commands are executed during the build process of a Docker image, so they can be used to install software packages, configure the environment, and perform other setup tasks.

CMD is used to specify the default command that should be run when a container is started from the image. Unlike RUN, CMD does not execute the command during the build process of the image. Instead, it defines the default command that should be run when the container is started. There can only be one CMD instruction in a Dockerfile, and if multiple CMD instructions are specified, only the last one will be used.

In summary, RUN is used to execute command(s) during the build process of an image and create a new layer, while CMD is used to specify the default command that should be run when a container is started from the image. RUN is used for setup tasks and installations, while CMD is used to specify the default command that should be run when the container is started.

4. How Will you reduce the size of the Docker image?
Ans =>
There are several ways to reduce the size of a Docker image:

i. Use a minimal base image: Choose a minimal base image as the starting point for your Docker image. For example, instead of using a full-fledged Linux distribution, use a minimal Linux distribution such as Alpine Linux.

ii. Remove unnecessary files: Remove any files or directories that are not needed in the final image, such as debug symbols, documentation, and test files.

iii. Use multi-stage builds: Multi-stage builds allow you to build your application in one stage, and then copy the compiled binary to a smaller image in another stage. This helps to reduce the size of the final image.

iv. Minimize the number of packages installed: Only install the packages that are required by your application and remove any unnecessary packages.

v. Use caching: Docker caches the results of each step in a Dockerfile, so if you make changes to your code and rebuild the image, only the steps that have changed will be re-run, reducing the build time.

vi. Squash the image: Squashing an image combines multiple layers into a single layer, reducing the size of the final image.

vii. Use compression: You can compress the size of your image using tools like UPX, which can significantly reduce the size of your image.

In conclusion, there are several ways to reduce the size of a Docker image, including using a minimal base image, removing unnecessary files, using multi-stage builds, minimizing the number of packages installed, using caching, squashing the image, and using compression. You can use a combination of these techniques to create smaller and more efficient Docker images.

5. Why and when to use Docker?
Ans => 
Docker is a popular platform for developing, shipping, and running applications. There are several reasons why you might want to use Docker:

i. Isolation: Docker containers provide a high level of isolation, which means that each container runs in its own isolated environment, separate from other containers. This makes it easier to manage dependencies, configuration, and security.

ii. Portability: Docker containers are portable and can be run on any system that has Docker installed. This makes it easier to move applications between development, testing, and production environments, without having to worry about compatibility issues.

iii. Scalability: Docker containers can be easily scaled up or down, depending on the needs of your application. This makes it easier to manage resources and ensure that your application always has the resources it needs to perform optimally.

iv. Automation: Docker provides a set of tools and APIs for automating the deployment and management of containers, which makes it easier to automate routine tasks and ensure that your applications are deployed and running consistently.

v. Ease of use: Docker provides an intuitive and easy-to-use interface for working with containers, which makes it easier for developers to quickly get started with containers and for DevOps teams to manage containers at scale.

When to use Docker:

Microservices: Docker is well-suited for microservice architectures, where applications are broken down into smaller, independent components. Docker containers provide a convenient way to package and deploy these components.

Legacy applications: Docker can be used to containerize legacy applications, making it easier to manage these applications and move them to the cloud.

Continuous integration and delivery: Docker can be used to automate the build, test, and deployment of applications, making it easier to implement continuous integration and delivery pipelines.

Testing: Docker containers can be used to test applications in a controlled and isolated environment, making it easier to identify and fix bugs.

Cloud migration: Docker can be used to containerize applications and move them to the cloud, making it easier to manage resources, scale applications, and deploy updates.

In conclusion, Docker is a popular platform for developing, shipping, and running applications. It provides a high level of isolation, portability, scalability, automation, and ease of use. Docker is well-suited for microservice architectures, legacy applications, continuous integration and delivery, testing, and cloud migration.

6. Explain the Docker components and how they interact with each other.
Ans =>
Docker is a platform for building, shipping, and running containers. The following are the key components of Docker and how they interact with each other:

i. Docker Daemon: The Docker daemon is a background process that runs on the host machine and manages the containers, images, networks, and volumes. It is responsible for executing the commands from the Docker CLI and managing the state of the containers.

ii. Docker CLI: The Docker CLI is a command-line interface that allows users to interact with the Docker daemon. Users can use the Docker CLI to build images, create and start containers, inspect containers and images, and manage networks and volumes.

iii. Docker Images: A Docker image is a blueprint that defines the application and its dependencies. Images are created from a Dockerfile, which is a script that specifies the base image, the application code, and the dependencies.

iv. Docker Containers: A Docker container is a running instance of a Docker image. Containers run in isolated environments, separate from other containers and the host system. Containers can be created from images, and they can be started, stopped, and deleted as needed.

v. Docker Hub: Docker Hub is a public registry for sharing Docker images. Users can upload their images to Docker Hub and share them with others, or they can download images from Docker Hub and use them to create containers.

vi. Docker Networking: Docker provides a virtual network for containers, allowing them to communicate with each other and with the host system. Docker networks can be created, configured, and managed using the Docker CLI.

vii. Docker Volumes: Docker volumes are persistent storage locations that can be attached to containers. Volumes can be used to persist data between container restarts, making it easier to manage stateful applications.

In conclusion, the Docker components work together to provide a platform for building, shipping, and running containers. The Docker daemon manages the containers and images, while the Docker CLI allows users to interact with the daemon. Docker images define the application and its dependencies, while containers are running instances of these images. Docker Hub is a public registry for sharing images, and Docker networking and volumes provide networking and storage solutions for containers.

7. Explain the terminology: Docker Compose, Docker File, Docker Image, Docker Container?
Ans => 
i. Docker Compose: Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to define your application's services, networks, and volumes in a single file, called a docker-compose.yml file, and then start and stop all services with a single command. Docker Compose is particularly useful for complex applications that consist of multiple containers, as it makes it easier to manage the relationships between the containers and their configuration.

ii. Docker File: A Docker file is a script that contains instructions for building a Docker image. It specifies the base image, the application code, and any dependencies that the application needs to run. The Docker file is used by the Docker engine to build the image, which can then be used to create containers.

iii. Docker Image: A Docker image is a packaged version of an application and its dependencies. An image contains everything that the application needs to run, including the code, libraries, and runtime environment. Docker images are created from a Docker file, and they can be stored in a registry and shared with others.

iv. Docker Container: A Docker container is a running instance of a Docker image. Containers are isolated from each other and from the host system, which makes it easy to run multiple containers on the same machine without interfering with each other. Containers can be started, stopped, and deleted as needed, and they can be moved between hosts without modification, making it easy to scale your application.

In conclusion, these terms are all related to Docker, a platform for building, shipping, and running applications in containers. Docker Compose is a tool for defining and running multi-container applications, a Docker file is a script for building images, a Docker image is a packaged version of an application, and a Docker container is a running instance of an image.

8. In what real scenarios have you used Docker?
Ans => 


9. Docker vs Hypervisor?
Ans => 
Docker and hypervisors are both technologies used for virtualization, but they have different purposes and use cases.

Docker is a platform for developers to build, package, and deploy applications as containers. A container is a lightweight and portable executable package that includes all the dependencies, libraries, and configuration files required to run an application. Containers are isolated from each other and from the host operating system, so they can run consistently across different environments.

Hypervisors, on the other hand, are virtualization technologies that allow multiple operating systems to run on a single physical server as virtual machines (VMs). Each VM has its own operating system, applications, and virtualized hardware, and they run as if they are running on separate physical machines. Hypervisors provide complete isolation and security between the VMs, and they are commonly used for server consolidation, disaster recovery, and cloud computing.

In summary, Docker is used for packaging and deploying applications, while hypervisors are used for virtualizing entire operating systems and running multiple VMs on a single physical server.

10. What are the advantages and disadvantages of using docker?
Ans => 
Advantages of using Docker:

i. Portability: Docker containers can run on any host with a Docker engine, making it easier to move applications from development to production environments and between different infrastructure environments.

ii. Isolation: Docker containers run in isolated environments and do not interfere with each other, making it easier to manage the dependencies and configurations of different applications.

iii. Lightweight: Docker containers are lightweight and take up minimal system resources, allowing more applications to run on a single host.

iv. Scalability: Docker containers can be easily scaled up or down as needed, making it easier to handle fluctuations in demand.

v. Improved Resource Utilization: By running multiple containers on a single host, Docker can help improve resource utilization and reduce costs compared to running standalone virtual machines.

vi. Ease of Deployment: Docker containers can be easily deployed and updated, making it easier to manage the lifecycle of applications.

Disadvantages of using Docker:

i. Security Concerns: Docker containers share the host operating system, so vulnerabilities in the host can affect all containers running on that host.

ii.Performance Overhead: Docker containers have a small performance overhead compared to running applications directly on the host operating system.

iii. Complex Networking: Configuring networking between containers and between containers and the host can be complex.

iv. Storage Management: Persistent data storage can be challenging to manage in a Docker environment.

v. Steep Learning Curve: Getting started with Docker can be challenging, especially for those unfamiliar with containerization and Linux.

11. What is a Docker namespace?
Ans =>
A Docker namespace is a feature of the Docker engine that provides isolated workspaces within a single host operating system. Each namespace isolates a specific aspect of the system, such as the network stack, the process tree, or the file system.

For example, the network namespace provides isolation for network interfaces, IP addresses, and routing tables, allowing each container to have its own unique network configuration. The process namespace isolates the process tree, so that each container has its own set of processes and process IDs, and the file system namespace provides isolation for the file system, allowing each container to have its own view of the file system, including its own root directory.

Docker uses namespaces to provide isolated environments for containers, allowing them to run as if they are running on separate physical machines, even though they are sharing the same host operating system. This isolation helps to ensure that the containers do not interfere with each other and that the host operating system remains stable and secure.

12. What is a Docker registry?
13. What is an entry point?
14. How to implement CI/CD in Docker?
15. Will data on the container be lost when the docker container exits?
16. What is a Docker swarm?
17. What are the docker commands for the following:
18. view running containers
19. command to run the container under a specific name
20. command to export a docker
21. command to import an already existing docker image
22. commands to delete a container
23. command to remove all stopped containers, unused networks, build caches, and dangling images?
34. What are the common docker practices to reduce the size of Docker Image?


These questions will help you in your next DevOps Interview.
*Write a Blog and share it on LinkedIn.*

**Happy Learning :)** 