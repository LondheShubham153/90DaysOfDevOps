# Docker for DevOps Engineers.

Docker is a software platform that allows you to build, test, and deploy applications quickly. Docker packages software into standardized units called containers that have everything the software needs to run including libraries, system tools, code, and runtime. Using Docker, you can quickly deploy and scale applications into any environment and know your code will run.

Docker is a powerful tool that has revolutionized the world of DevOps. It is a containerization platform that allows developers to create, deploy, and run applications in a portable and efficient way. Here are some ways in which Docker can benefit DevOps:

Improved Portability: Docker provides a consistent environment for your applications to run in, regardless of the underlying infrastructure. This makes it easier to move your applications between different environments, such as development, testing, and production.

Simplified Deployment: Docker allows you to package your application and its dependencies into a single container, which can be easily deployed to any environment. This simplifies the deployment process and reduces the likelihood of errors.

Increased Efficiency: Docker's containerization technology allows you to run multiple instances of your application on a single host, which can greatly increase resource utilization and reduce costs.

Improved Collaboration: Docker makes it easier for developers and operations teams to collaborate by providing a common platform for building and testing applications.

Faster Development: With Docker, developers can quickly spin up isolated environments for testing and debugging, without the need for complex setup and configuration.

Overall, Docker has become an essential tool in the DevOps toolkit, helping teams to streamline their development, deployment, and operations processes.

Docker Architecture
Docker architecture is based on a client-server model, where the Docker client interacts with the Docker daemon, which manages the lifecycle of Docker containers. The Docker architecture consists of several key components:

Docker daemon: This is the core component of the Docker architecture. It runs on the host machine and is responsible for managing Docker containers, images, and networks.

Docker client: The Docker client is the command-line interface (CLI) tool that allows users to interact with the Docker daemon. It sends requests to the daemon to create, start, stop, or delete containers.

Docker registries: Docker registries are repositories that store Docker images. They can be either public or private, and users can push and pull images to and from registries.

Docker images: Docker images are the templates used to create Docker containers. They contain the application code and all the dependencies needed to run the application.

Docker containers: Docker containers are lightweight and portable execution environments created from Docker images. They run in isolation from each other and from the host machine.

Docker networks: Docker networks provide communication channels between Docker containers. They can be used to connect containers running on the same host or across multiple hosts.

![image](https://user-images.githubusercontent.com/119837985/229739106-a1563fe7-8e9b-4aef-80d9-a8b0267780dc.png)

Overall, Docker architecture is designed to provide a lightweight and portable platform for building, deploying, and managing containerized applications. The modular nature of Docker architecture makes it highly scalable and flexible, allowing users to easily add or remove components as needed.

# Tasks
As you have already installed docker in the previous day's tasks, now is the time to run Docker commands.

Use the docker run command to start a new container and interact with it through the command line. [Hint: docker run hello-world]

![image](https://user-images.githubusercontent.com/119837985/229738756-b6d24b0c-2d63-4bec-affd-3836b37be467.png)

Here, -d is used to run the ‘docker run’ command in the daemon mode and -it in the interactive terminal mode

Use the docker inspect command to view detailed information about a container or image.

![image](https://user-images.githubusercontent.com/119837985/229738847-b1b2b283-805e-4573-a2fa-4faf53331178.png)
![image](https://user-images.githubusercontent.com/119837985/229738876-10dab7c9-98d6-4551-997a-05d4a63b922c.png)

Use the docker port command to list the port mappings for a container.

![image](https://user-images.githubusercontent.com/119837985/229738932-e5d8f79a-d9ab-404d-ae33-65513d7e2b03.png)

Use the docker stats command to view resource usage statistics for one or more containers.
Use the docker top command to view the processes running inside a container.

![image](https://user-images.githubusercontent.com/119837985/229738978-c5ef079c-fd88-418d-aa55-379856e258c5.png)

Use the docker save command to save an image to a tar archive.

Use the docker load command to load an image from a tar archive.

These tasks involve simple operations that can be used to manage images and containers.

For reference, you can watch this Video.

*****************************************************************************

Thanks for reading! Hope you find this helpful.

Happy learning !!!
