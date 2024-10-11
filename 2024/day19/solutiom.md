![image](https://github.com/user-attachments/assets/8d1a32d0-254e-441d-8689-7ca859799e16)
# Docker-Volume
![image](https://github.com/user-attachments/assets/b4f83ba9-147c-4d83-a84c-f72b2b453edc)
# Docker Network
![image](https://github.com/user-attachments/assets/a699a653-4e57-4dd5-8bc7-f5df357058e9)
Task-1
Create a multi-container docker-compose file which will bring UP and bring DOWN containers in a single shot ( Example - Create application and database container )

Create a directory day-19 in that again create directory docker-compose
![image](https://github.com/user-attachments/assets/b369f8ce-6ee5-405a-94c4-504369b7db72)
![image](https://github.com/user-attachments/assets/39be7fa0-1088-498a-ade6-d7d95bae3fad)
![image](https://github.com/user-attachments/assets/d9a6f2f1-25dd-4ce2-8090-4ad5b7684426)
```
docker-compose up -d
```
```
docker volume create --name=my_django_volume
```
![image](https://github.com/user-attachments/assets/8022cc35-14cd-4557-9d4a-43f8f42cf37a)
![image](https://github.com/user-attachments/assets/8f30446d-3f3d-4630-a5db-120013bd4e18)
* To kill and remove our containers.
```
docker-compose down
```
![image](https://github.com/user-attachments/assets/7e3d9ab4-1b83-4857-a261-4b9a8219fef7)
```
docker-compose up -d --scale web=5
```
![image](https://github.com/user-attachments/assets/f20120b8-63ac-42f3-9142-4d07e832be62)
* Use the ``docker-compose ps`` command to view the status of all containers, and ``docker-compose logs ``to view the logs of a specific service.
![image](https://github.com/user-attachments/assets/fbebc824-edfc-408e-84fc-dfd104a22088)
![image](https://github.com/user-attachments/assets/15d39ab8-6304-46a4-ac35-2f53a9507ad3)
![image](https://github.com/user-attachments/assets/f8dc10c8-495c-47e4-ab6c-4e6b8ec45f89)
# Task-2
Learn how to use Docker Volumes and Named Volumes to share files and directories between multiple containers.
 ```
 docker volume create ubuntu_volume
 docker volume ls
 docker volume inspect ubuntu_volume
```
![image](https://github.com/user-attachments/assets/28e5a69b-bc5b-40dc-bf21-1f86475f0e12)
* Create two or more containers that read and write data to the same volume using the ``docker run --mount`` command.
```
docker run -d --name nginx_container_1 -v ubuntu_volume:/app nginx:latest
docker run -d --name nginx_container_2 -v ubuntu_volume:/app nginx:latest
docker ps
```
![image](https://github.com/user-attachments/assets/6e2d33a1-fec1-4698-a8fc-6c7927a7db2e)
![image](https://github.com/user-attachments/assets/b802dc43-0fba-4322-b936-1c64ac13bf80)
![image](https://github.com/user-attachments/assets/b860f828-a267-4776-9de1-13c83748d0d1)
Verify that the data is the same in all containers.
```
 docker exec -it <CONTAINER ID 1> bash
```
```
cd app
echo "File created in container 1" > volume.txt
ls
exit
```
![image](https://github.com/user-attachments/assets/c35ab5e5-ad27-40ec-b072-0f59bfd98084)
![image](https://github.com/user-attachments/assets/caca07d4-455c-4f81-b2c9-50ee38b1956c)
* Utilize docker ``volume ls`` to list all volumes and docker volume rm to remove the volume 
```
docker volume ls
```
![image](https://github.com/user-attachments/assets/9c8c4bee-f31a-44e5-8908-4f71e57fe129)
![image](https://github.com/user-attachments/assets/aa2dc35a-47d1-4926-8319-97ecb55548e1)
* Removing the volumes:
```
docker volume ls
docker volume rm <VOLUME NAME>
```
![image](https://github.com/user-attachments/assets/46bf2d39-c26e-44b8-ad44-d929039d61c6)
