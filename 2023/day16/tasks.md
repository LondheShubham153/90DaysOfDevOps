## Day 16 Task: Docker for DevOps Engineers.


### Docker
 Docker is a software platform that allows you to build, test, and deploy applications quickly. Docker packages software into standardized units called containers that have everything the software needs to run including libraries, system tools, code, and runtime. Using Docker, you can quickly deploy and scale applications into any environment and know your code will run.

# Tasks

 As you have already installed docker in previous days tasks, now is the time to run Docker commands.

- Use the `docker run` command to start a new container and interact with it through the command line. [Hint: docker run hello-world]
Ans => `docker container run -itd -p 8000:80 --name mywebsite nginx:alpine`
- Use the `docker inspect` command to view detailed information about a container or image.
Ans => `docker container inspect mywebsite`

- Use the `docker port` command to list the port mappings for a container.
Ans => `docker container port mywebsite`

- Use the `docker stats` command to view resource usage statistics for one or more containers.
Ans => `docker container stats`

- Use the `docker top` command to view the processes running inside a container.
Ans => `docker top mywebsite`

- Use the `docker export` command to save an image to a tar archive.
Ans => `docker container export mywebsite -o mysite.tar`

- Use the `docker import` command to load an image from a tar archive.
Ans => `docker image import mysite.tar website:1.0`
        `docker container run -itd -p 80:80 --name mysite website:1.0`

These tasks involve simple operations that can be used to manage images and containers. 

For reference you can watch this video:
https://youtu.be/Tevxhn6Odc8

You can Post on LinkedIn and let us know what you have learned from this task by #90DaysOfDevOps Challange. Happy Learning :)