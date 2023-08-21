![docker-question-cover](https://github.com/Simbaa815/90DaysOfDevOps/assets/112085387/39eb1650-e4bf-468f-90f5-e6795fe5737b)

## Docker Interview
 Docker is a good topic to ask in DevOps Engineer Interviews, mostly for freshers.
 One must surely try these questions in order to be better in Docker
 
## Questions


### 1. What is the Difference between an Image, Container and Engine?
  - **Image**: Think of it as a recipe. An image is a blueprint that contains all the ingredients and instructions needed to create a container.
  
  - **Container**: This is like a dish prepared from a recipe (image). It's a running instance of an image, isolated and self-contained, with its own environment to run applications.
  
  - **Engine**: The engine is the chef. It's the software that manages containers and images. It reads the recipes (images) and creates the dishes (containers) following the instructions. Docker is the most popular containerization engine.
  
### 2. What is the Difference between the Docker command COPY vs ADD?
  - **COPY**: This command simply copies files or directories from the host machine to the container. It's straightforward and efficient for most use cases.

  - **ADD**: This command not only copies files from the host to the container but also supports additional features like extracting compressed files and downloading files from URLs.
  
### 3. What is the Difference between the Docker command CMD vs RUN?
  -   **RUN is used to execute commands, it will create a layer in the image.**
  - **CMD execute commands but during container creation.**
  
### 4. How Will you reduce the size of the Docker image?
-  **Minimize Layers:** Combine multiple commands into a single `RUN` statement to reduce the number of image layers.
    
-  **Clean Up After Commands:** Delete unnecessary files, packages, and caches after running commands to keep the image lightweight.
    
-  **Use Multistage Builds:** Use only what's needed in your final image by leveraging multistage builds. Discard build tools in the final image.
    
-  **Avoid Unnecessary Installs:** Only install libraries and packages your application truly needs. Avoid installing extra packages "just in case."
    
-  **Remove Unused Dependencies:** Ensure that only the necessary dependencies are included in your application code.
    
-  **Use Smaller Base Images:** Opt for smaller base images like `alpine` instead of larger ones.

### 5. Why and when to use Docker?
Docker simplifies app development, deployment, and management by providing consistent environments. Use it when you want efficiency, scalability, and easy portability across development, testing, and production stages.

### 6. Explain the Docker components and how they interact with each other.
-   **Docker Engine:** Core software managing containers.
-   **Docker Image:** Blueprint for software, including everything needed.
-   **Docker Container:** Running instance of an image.
-   **Docker Registry:** Storage for sharing Docker images.
-   **Docker Compose:** Tool for defining and managing multi-container apps.
-   **Docker Swarm:** Clustering and orchestration for scaling containers.

These components collaborate: Images are used to create containers, Docker Compose and Swarm manage their deployment, and Docker Registry stores images for sharing.

### 7. Explain the terminology: Docker Compose, Docker File, Docker Image, Docker Container?
-   **Docker Compose:** Tool for defining and managing multi-container apps using YAML.
-   **Docker File:** Script defining steps to build a Docker image.
-   **Docker Image:** Blueprint of an app with code, libraries, and settings.
-   **Docker Container:** Running instance of a Docker image, isolated and executable.

### 8. In what real scenarios have you used Docker?
**[Use case](https://www.simform.com/blog/docker-use-cases/)**

### 9. Docker vs Hypervisor?
Docker:

-   Uses containers for virtualization.
-   Shares host OS, lightweight.
-   Quick startup, less overhead.
-   Ideal for applications with same OS requirements.

Hypervisor:

-   Utilizes VMs for virtualization.
-   Provides full OS isolation.
-   More resource overhead.
-   Suited for running different OS environments.

### 10. What are the advantages and disadvantages of using docker?
**Advantages of Using Docker:**

-   Consistency
-   Isolation
-   Efficiency
-   Portability
-   Scalability

**Disadvantages of Using Docker:**

-   Resource Consumption
-   Security Challenges
-   Complex Networking

### 11. What is a Docker namespace?
Docker uses a technology called  `namespaces`  to provide the isolated workspace called the container. When you run a container, Docker creates a set of namespaces for that container.

These namespaces provide a layer of isolation. Each aspect of a container runs in a separate namespace and its access is limited to that namespace.

### 12. What is a Docker registry?
A Docker registry is like an online store for Docker images. It's where you find, store, and share images to create containers.

### 13. What is an entry point?
An entry point is like a container's starting command, deciding what happens as soon as it's opened.

### 14. How to implement CI/CD in Docker?
1.  Use CI tools to build and test Docker images when code changes.
2.  Push tested images to a registry.
3.  Define infrastructure using tools like Docker Compose or Kubernetes.
4.  Use orchestration tools to deploy containers automatically.
5.  Benefit from consistent, isolated, and scalable deployments.

### 15. Will data on the container be lost when the docker container exits?
Yes, data inside a Docker container is typically lost when the container stops. To preserve data, use Docker volumes. 

### 16. What is a Docker swarm?
Docker Swarm is a tool that helps manage a cluster of Docker nodes, allowing you to deploy, manage, and scale containers across multiple machines.

### 17. What are the docker commands for the following:
  - view running containers
  ```bash
  docker ps
  ```
  - command to run the container under a specific name
   ```bash
  docker run --name <container_name> <image_name>
  ```
  - command to export a docker
   ```bash
  docker export <container_id> > <output_file>.tar
  ```
  - command to import an already existing docker image
   ```bash
  docker import <input_file>.tar <repository>:<tag>
  ```
  - commands to delete a container
   ```bash
  docker rm <container_id>
  ```
  - command to remove all stopped containers, unused networks, build caches, and dangling images?
   ```bash
  docker system prune
  ```
### 18. What are the common docker practices to reduce the size of Docker Image?
1.  **Minimize Layers:** Combine multiple commands into a single `RUN` statement to reduce the number of image layers.
    
2.  **Clean Up After Commands:** Delete unnecessary files, packages, and caches after running commands to keep the image lightweight.
    
3.  **Use Multistage Builds:** Use only what's needed in your final image by leveraging multistage builds. Discard build tools in the final image.
    
4.  **Avoid Unnecessary Installs:** Only install libraries and packages your application truly needs. Avoid installing extra packages "just in case."
    
5.  **Remove Unused Dependencies:** Ensure that only the necessary dependencies are included in your application code.
    
6.  **Use Smaller Base Images:** Opt for smaller base images like `alpine` instead of larger ones.


**Happy Learning :)** 
