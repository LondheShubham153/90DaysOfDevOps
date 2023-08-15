## Day 17 Task: Docker Project for DevOps Engineers.

# Dockerfile

Docker is a tool that makes it easy to run applications in containers. Containers are like small packages that hold everything an application needs to run. To create these containers, developers use something called a Dockerfile.

A Dockerfile is like a set of instructions for making a container. It tells Docker what base image to use, what commands to run, and what files to include. For example, if you were making a container for a website, the Dockerfile might tell Docker to use an official web server image, copy the files for your website into the container, and start the web server when the container starts.

For more about Dockerfile visit [here](https://rushikesh-mashidkar.hashnode.dev/dockerfile-docker-compose-swarm-and-volumes)

task:

- Create a Dockerfile for a simple web application (e.g. a Node.js or Python app)
```bash
# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "app.py"]
```

- Build the image using the Dockerfile and run the container
```bash
docker build -t my-python-app .
```
```bash
docker run -p 8080:80 my-python-app
```

- Verify that the application is working as expected by accessing it in a web browser
Check working fine ✔️✔️

- Push the image to a public or private repository (e.g. Docker Hub )
```bash
# Tag the Image
docker tag my-python-app your-username/my-python-app:latest

# Log in to Docker Hub
# Enter your Docker Hub username, password, and any other required details.
docker login

#Push the Image:
docker push your-username/my-python-app:latest
```
