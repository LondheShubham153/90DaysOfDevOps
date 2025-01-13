# **Day 21 Task: Important Docker Interview Questions**

## **Overview**
Docker is a key topic in DevOps interviews, especially for freshers. Below are **24 essential Docker interview questions** with well-structured answers to help you ace your next interview.

---

### **1. What is the difference between an Image, Container, and Engine?**
- **Image**: A read-only template containing the application and its dependencies. Used to create containers.
- **Container**: A lightweight, standalone, and executable package of software created from an image. It provides an isolated environment for running applications.
- **Engine**: The core component of Docker, responsible for building, running, and managing containers.

---

### **2. What is the difference between COPY and ADD in Docker?**
- **COPY**: 
  - Copies files or directories from the local filesystem to a specific location in the container.  
  - Syntax: `COPY <source> <destination>`.
  - Limited to local files.
- **ADD**:
  - Works like `COPY` but can also handle remote URLs and automatically extract compressed files.  
  - Syntax: `ADD <source> <destination>`.

---

### **3. What is the difference between CMD and RUN in Docker?**
- **CMD**:  
  - Sets the default command to execute when a container starts.  
  - Example: `CMD ["python", "app.py"]`.  
  - Only one `CMD` instruction is allowed per Dockerfile.
- **RUN**:  
  - Executes commands during image building and creates a new image layer.  
  - Example: `RUN apt-get update && apt-get install -y nginx`.

---

### **4. How will you reduce the size of a Docker image?**
- Use **multi-stage builds** to include only necessary files in the final image.  
- Choose lightweight base images like `alpine`.  
- Minimize the number of layers by combining commands.  
- Remove temporary files and unnecessary dependencies.  

---

### **5. Why and when should you use Docker?**
- **Why**:
  - Ensures consistency across environments (development, testing, production).  
  - Simplifies deployment and scalability.  
  - Reduces overhead compared to virtual machines.
- **When**:
  - When you need to package applications for portability.  
  - In microservices architecture to isolate and manage services.  
  - For CI/CD pipelines to ensure consistent builds.

---

### **6. Explain Docker components and their interaction.**
- **Docker Engine**: Manages Docker objects and executes containerization tasks.
- **Images**: Serve as a template for containers.
- **Containers**: Run-time instances of images.
- **Registry**: Stores and distributes Docker images.  
Interaction: Docker Engine pulls images from the registry, creates containers from them, and runs applications in an isolated environment.

---

### **7. Explain Docker Compose, Dockerfile, Docker Image, and Docker Container.**
- **Docker Compose**: Tool to define and manage multi-container applications using a YAML file.
- **Dockerfile**: A script with instructions to build a Docker image.
- **Docker Image**: Packaged application, including its dependencies.
- **Docker Container**: Running instance of a Docker image.

---

### **8. Docker vs Hypervisor?**
- **Docker**: Uses OS-level virtualization; containers share the host OS kernel.  
  - Faster startup, less resource-intensive.
- **Hypervisor**: Virtual machines with separate OS instances.  
  - Slower startup, more resource-heavy but offers complete isolation.

---

### **9. Advantages and disadvantages of using Docker?**
- **Advantages**:
  - Lightweight and portable.  
  - Faster deployment and scaling.  
  - Supports microservices architecture.
- **Disadvantages**:
  - Limited to applications supported by containerization.  
  - Security risks due to shared kernel.  
  - Requires additional management tools for orchestration.

---

### **10. What is a Docker namespace?**
Namespaces provide isolation for Docker containers, separating resources like processes, network, and file systems. It ensures each container runs independently.

---

### **11. What is a Docker registry?**
A central repository where Docker images are stored and managed. Examples:  
- Public: Docker Hub.  
- Private: AWS ECR, GitHub Container Registry.

---

### **12. What is an entry point in Docker?**
An **ENTRYPOINT** specifies the main process of the container, making it configurable with additional arguments.  
Example:  
```dockerfile
ENTRYPOINT ["python", "app.py"]
```

---

### **13. How to implement CI/CD in Docker?**
- Build the application using a Dockerfile.  
- Push the image to a registry (e.g., Docker Hub).  
- Deploy containers using CI/CD tools like Jenkins, GitLab CI, or GitHub Actions.  
- Automate tests and rollbacks.

---

### **14. Will data in a container be lost when it exits?**
Yes, unless data is stored in a **volume** or a **bind mount**. Volumes persist data independently of the container lifecycle.

---

### **15. What is a Docker Swarm?**
A native orchestration tool for managing multiple Docker nodes as a single cluster. It simplifies container deployment and scaling.

---

### **16. Docker commands for specific tasks:**
- **Viewing running containers**: `docker ps`  
- **Running a container with a name**: `docker run --name <name> <image>`  
- **Exporting an image**: `docker save -o <file>.tar <image>`  
- **Importing an image**: `docker load < <file>.tar`  
- **Deleting a container**: `docker rm <container_id>`  
- **Cleaning up unused resources**: `docker system prune`

---

### **17. Common practices to reduce Docker image size?**
- Use a smaller base image.  
- Implement multi-stage builds.  
- Combine commands in a single `RUN` statement.  
- Exclude unnecessary files using `.dockerignore`.

---

### **18. How to troubleshoot a Docker container not starting?**
- Check logs with `docker logs <container_id>`.  
- Inspect the container with `docker inspect <container_id>`.  
- Verify resource limits and network settings.

---

### **19. What is the Docker networking model?**
- **Bridge**: Default network for standalone containers.  
- **Host**: Shares the host’s network stack.  
- **Overlay**: Used for multi-host communication.  
- **Custom**: User-defined networks for specific configurations.

---

### **20. How to manage persistent storage in Docker?**
- Use **volumes**: Managed by Docker and portable across containers.  
- Use **bind mounts**: Directly map a host directory to a container directory.

---

### **21. How to secure a Docker container?**
- Use images from trusted sources.  
- Scan images for vulnerabilities.  
- Set resource limits to prevent overuse.  
- Run containers with non-root users.

---

### **22. What is Docker overlay networking?**
A network driver enabling secure communication between containers running on different hosts in a Swarm cluster.

---

### **23. How to handle environment variables in Docker?**
- Use the `-e` flag: `docker run -e VAR_NAME=value <image>`.  
- Define variables in `ENV` instructions in the Dockerfile.  
- Use `.env` files with Docker Compose.

---

### **24. In what real scenarios have you used Docker?**
- Containerized MySQL and Nginx during training.  
- Built a multi-container setup with Docker Compose for microservices.  
- Used Dockerfiles to package and deploy Java and Python applications.

---

### **Connect With Me**
[LinkedIn](https://www.linkedin.com/in/amitabh-devops/)

