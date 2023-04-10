Refer to my blog at [Hashnode](https://sumitramchandra.hashnode.dev/docker-for-devops-engineers-3)
# Task-1
Create a multi-container docker-compose file that will bring UP and bring DOWN containers in a single shot ( Example - Create application and database container )

First, create a docker volume named volume1.

![image](https://user-images.githubusercontent.com/119837985/230881031-1730a372-76e2-4d1d-85a3-0b2191d64bff.png)

after creating volume create a multi-container docker-compose file as shown

![image](https://user-images.githubusercontent.com/119837985/230881066-cfe1d066-a128-43b1-a81a-0a41c57b569d.png)

This Docker Compose file defines two services: web and db. The web service is based on the ubuntu:latest image and is configured to run two replicas. It exposes ports 8086 through 8090 on the host and maps them to port 8080 inside the container. It also mounts a volume named volume1 to the /app directory inside the container.

The db service is based on the mongo:latest image and exposes ports 27818 and 27819 on the host, which are mapped to port 27017 inside the container. It also mounts the same volume1 volume to the /app directory inside the container.

At the end of the file, we define the volume1 volume as an external volume, which means it should already exist before running the Docker Compose file.

Use the `docker-compose up` command with the `-d` flag to start a multi-container application in detached mode.

![image](https://user-images.githubusercontent.com/119837985/230881097-10c89a80-fac6-44ab-be1c-8b091071f561.png)

Use the `docker-compose scale` command to increase or decrease the number of replicas for a specific service. You can also add replicas in the deployment file for auto-scaling.

![image](https://user-images.githubusercontent.com/119837985/230881195-8cf28311-c2a0-4bc3-8319-7358d389d190.png)

Use the `docker-compose ps` command to view the status of all containers

![image](https://user-images.githubusercontent.com/119837985/230881236-fc08b802-64ca-47e3-aa7e-9502000c6a70.png)

Use the `docker-compose logs` to view the logs of a specific service.

![image](https://user-images.githubusercontent.com/119837985/230881297-190c0808-0e01-4b84-9944-29949da2be61.png)

Use the `docker-compose down` command to stop and remove all containers, networks, and volumes associated with the application

![image](https://user-images.githubusercontent.com/119837985/230881331-8b9a7d7a-cd4c-4f6d-b81c-9a147babd64c.png)

# Task-2
Learn how to use Docker Volumes and Named Volumes to share files and directories between multiple containers.

`mkdir volume1`

Now, we are creating a docker volume and attaching it to the volume directory in our local machine that we just created.

![image](https://user-images.githubusercontent.com/119837985/230881453-f6dcd412-428c-404b-b901-38faffc41715.png)


Create two or more containers that read and write data to the same volume using the `docker run --mount` command.

we mount the Ubuntu container to the docker volume we just created,

Repeat the same step for mounting the docker volume for the Mongo container

![image](https://user-images.githubusercontent.com/119837985/230881533-bd7a0515-5bbf-4fea-bc32-01c9123fdccb.png)


Verify that the data is the same in all containers by using the `docker exec -it` commands to run commands inside each container.
Now, we mount data into the Ubuntu container by using the docker exec command

![image](https://user-images.githubusercontent.com/119837985/230881828-1d05b86f-98e9-4170-82aa-68de30df7062.png)

Mounting data in Ubuntu container

Now, we run the docker exec command for the Mongo container and verify that we can access the same data that we had mounted on the Ubuntu container.
Try doing it yourself by following the same procedure.
So we can conclude, both the containers (ubuntu and Mongo) sharing the same volume.

Use the docker volume ls command to list all volumes and docker volume rm command to remove the volume when you’re done.

![image](https://user-images.githubusercontent.com/119837985/230881885-d4100579-f197-41ce-bab9-0118b61b2ebc.png)

Now, to remove, first we stop and remove the running containers,

![image](https://user-images.githubusercontent.com/119837985/230881979-eae25a6e-585d-4828-86bd-5754f558186f.png)

![image](https://user-images.githubusercontent.com/119837985/230881993-b7a87e5b-9b13-499f-8c34-3507fdcac143.png)


Still, when we check the shared volume the data remains and is not destroyed.
#
Thanks for reading! Hope you find this helpful.

Happy learning !!!
