# Mastering Jenkins Freestyle Projects for DevOps: A Beginner's Guide to CI/CD with Docker

As part of our journey through #90DaysOfDevOps, today’s challenge is all about mastering Jenkins Freestyle Projects. This task is ideal for DevOps engineers to test their skills in CI/CD automation and enhance their understanding of Jenkins build jobs, particularly when using Docker to deploy applications. Let’s dive in!

---

## What is CI/CD?

**CI/CD** stands for **Continuous Integration** and **Continuous Delivery**, a fundamental approach to automate and streamline the development, testing, and deployment of applications.

### Continuous Integration (CI)
This is the process of regularly integrating code changes from multiple contributors into a central repository (like GitHub). Each integration triggers automated builds and tests to catch bugs early. By continuously merging code, CI helps improve software quality and shortens the development cycle.

### Continuous Delivery (CD)
CD builds on CI by ensuring that all changes to the codebase are production-ready. After a code update, automated tests and staging environments validate the stability of the code, making it ready for deployment. With CD, developers can deploy at any moment, minimizing downtime and enabling frequent updates.

---

## Introduction to Jenkins Build Jobs

A **Jenkins Build Job** is a configured automation that performs specific tasks, like compiling, testing, and deploying applications. Jenkins supports various build job types, including:

- **Freestyle Projects**: Ideal for beginners and small automation tasks.
- **Pipelines**: Recommended for more complex, multi-step CI/CD workflows.
- **Multibranch Pipelines**: Useful for handling multiple branches in version control systems.

---

## What is a Jenkins Freestyle Project?

A **Jenkins Freestyle Project** allows developers to automate application builds, tests, and deployments with a flexible setup. It’s a versatile option where we can:

- Configure different build and post-build actions.
- Set up triggers for automated builds.
- Define custom build steps, such as running shell commands, managing Docker containers, or deploying to various environments.

In this post, we’ll configure a Jenkins Freestyle Project to build and deploy a Dockerized app using Jenkins and Docker Compose.

---

## Task 1: Create a Jenkins Freestyle Project to Deploy Your App with Docker

In this first task, we’ll create a Jenkins Freestyle Project that will build and run our application as a Docker container. Here's a step-by-step guide:

### Step 1: Set Up Jenkins Agent

To run Docker commands, we need to configure a Jenkins agent with Docker installed. You can either:

- Use the Jenkins master node if Docker is installed, or
- Add a dedicated agent node:
  - Go to **Manage Jenkins > Manage Nodes and Clouds > New Node**.
  - Configure the node to point to a server with Docker installed.

### Step 2: Create a Freestyle Project in Jenkins

1. **Open Jenkins** and navigate to **New Item**.
2. **Select Freestyle Project**, name it, and click **OK**.
3. Under **General**, restrict the project to run on the agent you configured in Step 1.

### Step 3: Add Build Steps to Build and Run the Docker Container

1. **In the Build Section**:
   - **Build Step 1**: Add a **Build Step** to execute a shell command:
     ```shell
     docker build -t <your_app_image_name> .
     ```
     This step builds a Docker image from the Dockerfile in your project directory.

   - **Build Step 2**: Add another **Build Step** to run a container from the built image:
     ```shell
     docker run -d --name <your_container_name> <your_app_image_name>
     ```
     This step starts a container based on the image created in the previous step.

### Task 1 Summary
Your Jenkins Freestyle Project now automates the build and run of your Docker container. Every time the project runs, it will create an updated container, making deployments easier and quicker.

---

## Task 2: Use Docker Compose in Jenkins to Start Multiple Containers

If your application involves multiple services (e.g., a web server and a database), Docker Compose can help orchestrate these. Here’s how to set up a Jenkins Freestyle Project for Docker Compose:

### Step 1: Create a New Freestyle Project

1. Go back to **New Item** and create another **Freestyle Project**.
2. In **General**, select the same agent you used for Task 1.

### Step 2: Add Build Steps to Manage Containers with Docker Compose

1. **Start Containers**:
   - In the **Build** section, add a **Build Step** to execute:
     ```shell
     docker-compose up -d
     ```
     This command will start all services defined in your `docker-compose.yml` file in detached mode.

2. **Clean Up Containers**:
   - Add another **Build Step** after `docker-compose up` to stop and remove containers:
     ```shell
     docker-compose down
     ```
     This ensures that when the job completes, all containers are stopped and removed, keeping your environment clean.

### Task 2 Summary
By integrating Docker Compose, Jenkins can now automate the orchestration of multi-container applications, making it easy to manage complex environments with minimal effort.

---

## Extra Tips and Best Practices

- **Environment Variables**: Define environment variables in Jenkins to dynamically configure parameters like container names or ports.
- **Build Triggers**: Use build triggers to automate builds. For instance, GitHub webhooks can trigger builds on code pushes, keeping deployments up-to-date.
- **Notifications**: Configure email or Slack notifications in **Post-build Actions** to stay informed about build statuses.

---

## Wrapping Up

By setting up Jenkins Freestyle Projects to handle Docker and Docker Compose commands, you’re well on your way to automating deployment pipelines, a crucial skill for any DevOps engineer. This project demonstrates how Jenkins can be a powerful tool to streamline CI/CD workflows, improve deployment efficiency, and enhance application reliability.

Dive into Jenkins, experiment with Docker and Docker Compose, and push your DevOps journey further!


[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)