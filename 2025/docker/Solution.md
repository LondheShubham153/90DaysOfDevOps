//Task 1: Introduction and Conceptual Understanding

A. Docker’s purpose in modern DevOps.

1.Containerization: Packages applications with dependencies into isolated containers for consistent environments across development, testing, and production.

2.Portability: Containers run the same way on any platform (local, cloud, or CI/CD), reducing "it works on my machine" issues.

3.Speed: Speeds up development, testing, and deployment with lightweight, fast-starting containers.

4.Scalability: Works well with orchestration tools (like Kubernetes) to scale applications seamlessly.

5.Resource Efficiency: Shares OS kernel, using fewer resources than traditional virtual machines.

6.Microservices Support: Enables building modular applications, aligning with microservices architecture.

7.CI/CD Integration: Simplifies and accelerates pipelines through quick container builds and deployments.

8.Version Control: Maintains consistent, versioned images using Dockerfiles and registries.

9.Rollback & Recovery: Easy to revert to previous container versions if something breaks.

10.Security Isolation: Provides a level of app isolation, reducing risk of conflicts or breaches



B.Compare Virtualization vs. Containerization and explain why containerization is the preferred approach for microservices and CI/CD pipelines.

I.Virtualization

a. Uses hypervisors to run multiple OS instances.

b. Each VM has its own OS → heavy & resource-intensive.

c. Boot time is slow.

d. Better for monolithic apps or legacy systems.

2.Containerization

a. Uses Docker/Container engines to run apps in isolated user spaces.

b. Shares host OS kernel → lightweight & fast.

c. Starts in seconds.

d. Ideal for modern, scalable apps.

3. Why Containers for Microservices & CI/CD

a. Lightweight: Faster deployment and scaling.

b. Isolation: Each microservice runs independently.

c. Consistency: Same container runs across dev, test, prod.

d. DevOps-friendly: Seamless integration with CI/CD tools.

e. Faster Testing: Spin up environments quickly for automated tests.

f. Version Control: Easily track, update, or roll back services.

//Task 2: Create a Dockerfile for a Sample Project
//Create A Basic App using pyhon
//Write DockerFile For it
//Build a Docker Image from your DockerFile
//Run it Locally with docker run
//Push the image to docker hub

//Step 1: Create the App

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ mkdir myapp

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ cd myapp

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker/myapp$

//Create A Basic App using pyhon

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker/myapp$ touch app.py

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker/myapp$ touch requirements.txt

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker/myapp$ touch Dockerfile

//Folder Structure [File Structure]

myapp/
-app.py
-requirements.txt
-Dockerfile => (Remove .txt from the extension it will automatically change the logo to Docker no need to write extenstion)

//Step 2: Write the Dockerfile 
=> Dockerfile Written ref(myapp/Dockerfile) ref #Step1 //Creation for Dockerfile in the app

//Step 3 : Building Docker Image
=> kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker build -t dockerhub-devkshitij7/myapp:latest .                       //building the image locally to run on the local envsss

//Step 4: Run & Tested The Image Locally

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker run -p 5000:5000 devkshitij7/myapp:latest		//running the Image locally by mapping the ports
	
//Step 5 : Verify The Container is Running
kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker/myapp$ docker ps
CONTAINER ID   IMAGE                      COMMAND           CREATED      STATUS          PORTS                    NAMES
51fa8ca64504   devkshitij7/myapp:latest   "python app.py"   2 days ago   Up 18 seconds   0.0.0.0:5000->5000/tcp   frosty_mclean

//Step 6: Checking the logs using docker ps

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker/myapp$ docker logs 51fa8ca64504
 * Serving Flask app 'app'
 * Debug mode: off
WARNING: This is a development server. Do not use it in a production deployment. Use a production WSGI server instead.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:5000
 * Running on http://172.17.0.2:5000
Press CTRL+C to quit

//Step 7: Stopping The Container
kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker/myapp$ docker stop 51fa8ca64504


=====>Task 2 Completed <=======

//Task 3: Explore Docker Terminologies and Components

1. Image

A Docker image is a read-only template that contains the instructions needed to create a container.

It includes:

a.Application code

b.Libraries

c.Dependencies

d.Environment variables and configuration

Images are built from a Dockerfile and are versioned.

Stored in registries like Docker Hub, Amazon ECR, or GitHub Container Registry.

2. Container

A container is a runtime instance of a Docker image.

It includes everything from the image but adds a writable layer on top.

Containers are:

a.Lightweight and fast

b.Isolated from each other and the host OS

c.Portable across environments (development, test, production)

Think of it as a running application or service.	

3.Dockerfile

A Dockerfile is a text file that contains a series of instructions on how to build a Docker image.

Common Dockerfile commands:

//FROM: Base image to use (e.g., FROM ubuntu)

//COPY / ADD: Include files/folders

//RUN: Execute shell commands

//CMD / ENTRYPOINT: Define default command to run

//EXPOSE: Declare port the container listens on


4.Volume

A volume is a persistent storage mechanism for Docker containers.

Used to store data outside the container’s filesystem, so it’s not lost when the container stops or is removed.

Benefits:

a.Share data between containers

b.Back up and restore application state

Types:

i.Named volumes (docker volume create)

ii.Anonymous volumes

iii.Host bind mounts (map local directory to container)


5.Network

Docker networks enable communication between containers and between containers and the outside world.

Default network types:

a.bridge (default for standalone containers)

b.host (container shares host’s network)

c.none (no networking)

You can create custom networks to allow multiple containers to discover 
and communicate with each other securely (e.g., microservices setup).


//Task 4. Optimize Your Docker Image with Multi-Stage Builds

a.Implement a Multi-Stage Docker Build
//Modified Previous Docker File with multistage build
//[ref-myapp/Dockerfile]

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker build -t myapp .

b. Compare Image Sizes:

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker images

REPOSITORY          TAG       IMAGE ID       CREATED          SIZE
myapp               latest    8ad53405aa72   11 minutes ago   193MB			//latest updated image with multistage build
devkshitij7/myapp   latest    85e04f8a99db   20 minutes ago       207MB		//Older Version image without multistage build

c.Document the Differences

//Benefits of Multi-Stage Builds

1.Smaller images by excluding dev tools, cache, and build dependencies

2.Improved security with fewer attack surfaces

3.Faster deployments due to reduced image size

4.Cleaner separation between build and runtime stages

5.Easier maintenance with modular build logic

6.Better caching improves build efficiency

//Impact on Image Size

1.Can reduce image size by 50–80%

2.Only necessary files and binaries are copied into the final image

=======>Task 4 Completed <=======
 

//Task 5: Manage Your Image with Docker Hub

//Step 1: Tagging the Image

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker tag devkshitij7/myapp:latest devkshitij7/myapp:latest

//Step 2: Push Your Image to Docker Hub:

==> Logged To Docker Hub [Hiding Login Credentails]

//Step 3: Pushing the image
kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker push devkshitij7/myapp:latest

//Step 4: Verify by pulling your image

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker pull devkshitij7/myapp:latest



=====> Task 5 Completed <==============

//Task 6: Persist Data with Docker Volumes

1.Create a Docker Volume:

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker volume create myapp_volume
myapp_volume									//created new docker volume

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker volume ls		//Listing all the available volumes

local     myapp_volume

2. Run a Container with the Volume

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker run -d -v myapp_volume:/app/data myapp          //Runnig the container with the volume[Attaching the volume to container]

3.Document the Process

Docker Volumes:
1.Persist data even when containers stop or are deleted

2.Store app state, logs, databases, uploads, etc.

3.Decouple data from container lifecycle

4.Share data between multiple containers

5.Avoid data loss during container rebuilds or updates

6.Easier backups and restores

7.Improves performance compared to bind mounts

8.Keeps images lightweight by separating data from app code


=======> Task 6 Complete <=======


//Task 7: Configure Docker Networking

//Creation of NodeApp						//Using For Demo Purpose in Local to Fetch & Post The data 
//In This task I am using NodeApp As a Backend Server			//The NodeApp created for taking the data at the frontend side to see on server
// Ref[NodeApp=> demo-app]

// Using mongo [Docker Offical Image] In One container			//Actual database work
// Using mongo-express [Docker Official Image] In One Container		//Representation of MongoDB UI To Able to use mongodb in browser view 
 
//Create a Custom Docker Network

//Step1 : Listing all the previous networks
//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker network ls


//Step2 : Creating new network
kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker network create mongo-network

//Step3 : Listing all the networks [To check the mongo-network created succesfully or not]

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker network ls
NETWORK ID     NAME            DRIVER    SCOPE
3f8ef3952ec9   bridge          bridge    local
b67aa32842af   host            host      local
2e3246640058   mongo-network   bridge    local				//mogo-network listed
62d54d6b172c   none            null      local


//Step4: Running mongo image [with run command it will directly pull the image & direcly create the container ]
//container1

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker run -d \ -p27017:27017 \ --name mongo \ --network mongo-network \ -e MONGO_INITDB_ROOT_USERNAME=admin \ -e MONGO_INITDB_ROOT_PASSWORD=pass1 \ mongo

//Step5: Running mongo-express image [with run command it will directly pull the image & direcly create the container ]
//container2

kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker run -d \ -p 8081:8081 \ --name mongo-express \ --network mongo-network \ -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \ -e ME_CONFIG_MONGODB_ADMINPASSWORD=pass1 \ -e ME_CONFIG_MONGODB_URL="mongodb://admin:pass1@mongo:27017" \ mongo-express

//Step6: Listing All The Running Containers

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker ps


//Step7: Inspecting The mongo-network network

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker network inspect mongo-network

//Step7: Data Fetched From DB

//http://localhost:5050/getUsers 		//Ref[NodeApp->demo-app running on port 5050]

/*
[					//Fetched data Successfully From The DB
 {
    "_id": "684d82034c18c8a242299470",
    "email": "test@gmail.com",
    "username": "test",
    "password": "testp"
  }
]
*/

//Step8: Stopping the containers

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker stop fd24c9fc0a8b

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker stop f4068d997996

=====> Task 7 Completed <==============


//Task 8: Orchestrate with Docker Compose

1. Create a docker-compose.yml File
//created docker-compose.yml file [ref=>myapp/docker-compose.yml]
//With Two Service myapp-myapp & redis 
//with docker compose up -d  command the images are build & their respective container are created...

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker compose up -d		//using docker compose up command in detached mode

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker ps
CONTAINER ID   IMAGE         COMMAND                  CREATED          STATUS          PORTS                    NAMES
9682eee5332d   myapp-myapp   "python app.py"          16 seconds ago   Up 8 seconds    0.0.0.0:5000->5000/tcp   myapp-container
f6b553416356   redis:7       "docker-entrypoint.s…"   21 seconds ago   Up 14 seconds   0.0.0.0:6379->6379/tcp   redis-container


//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker compose down	
  Container myapp-container  Removed                                                           12.9s
  Container redis-container  Removed                                                            2.1s

Task 9: Analyze Your Image with Docker Scout

1. Run Docker Scout Analysis:
//Execute Docker Scout on your image to generate a detailed report of vulnerabilities and insights

//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker scout quickview devkshitij7/myapp:latest


//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$ docker scout cves devkshitij7/myapp:latest

3.Document Your Findings:

//saving the output file to scout_report.txt[ref=>myapp/scout.report.txt]
//kshitij@DESKTOP-CP5A3Q6:/mnt/f/DevOpsStudy/Week 5 - Docker$  docker scout cves devkshitij7/myapp:latest > scout_report.txt


====> Task 9 Completed<=====
