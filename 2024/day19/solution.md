
# Docker for DevOps Engineers – Day 19 Task: Docker Volumes and Networks

Today’s focus is on learning about **Docker Volumes** and **Docker Networks**. We'll use these concepts to enhance the way containers handle data and communicate with each other, especially in a multi-container setup using `docker-compose`. Here’s a step-by-step approach to complete the tasks.

---

### **Task 1: Create a Multi-Container `docker-compose.yml` File**

In this task, we’ll create a `docker-compose.yml` file that defines multiple services—an application and a database container. This will demonstrate how to bring up and bring down these services together with Docker Compose.

#### Steps:

1. **Create the `docker-compose.yml` file:**

```yaml
version: '3'
services:
  app:
    image: my_app_image   # Replace with your application image
    ports:
      - "5000:5000"       # Mapping host port to container port
    volumes:
      - app_data:/usr/src/app
    depends_on:
      - db                # App depends on the database service

  db:
    image: postgres:latest # Using PostgreSQL as an example
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: mydatabase
    volumes:
      - db_data:/var/lib/postgresql/data # Persistent data storage for DB

volumes:
  app_data:  # Volume for application
  db_data:   # Volume for database
```

This file:
- Defines an application (`app`) and a database (`db`) container.
- Sets up volumes to store persistent data for both containers.
- Links the application to the database using `depends_on` to ensure the database starts first.

2. **Bring up the multi-container application:**
   - Use the `docker-compose up -d` command to start the containers in detached mode.
   
   ```bash
   docker-compose up -d
   ```

3. **Scale the application:**
   - Use `docker-compose scale` or include replica settings in the `docker-compose.yml` file to scale the service.
   
   ```bash
   docker-compose up --scale app=3 -d  # Scaling the app service to 3 replicas
   ```

4. **Check the container statuses:**
   - Use `docker-compose ps` to view the status of all running containers.
   
   ```bash
   docker-compose ps
   ```

5. **Check logs for a specific service:**
   - Use `docker-compose logs` to view logs from the app or database container.
   
   ```bash
   docker-compose logs app
   ```

6. **Bring down all containers, networks, and volumes:**
   - Use `docker-compose down` to clean up the environment when you’re done.
   
   ```bash
   docker-compose down
   ```

---

### **Task 2: Docker Volumes and Named Volumes**

This task focuses on using **Docker Volumes** to share data between multiple containers. We will use Docker’s `--mount` flag to achieve this and verify the shared data across containers.

#### Steps:

1. **Create two containers that share the same volume:**

   Use the `docker run` command with the `--mount` option to create two containers that share a named volume.

```bash
# Create first container and mount the volume
docker run -d --name container1 --mount source=shared_volume,target=/data busybox

# Create second container and mount the same volume
docker run -d --name container2 --mount source=shared_volume,target=/data busybox
```

Here, `shared_volume` is the name of the volume, and `/data` is the target directory inside both containers.

2. **Write data in the first container:**

   Use `docker exec` to run a command in the first container that writes data to the shared volume.

```bash
docker exec container1 sh -c "echo 'Hello from container1' > /data/file.txt"
```

3. **Verify data in the second container:**

   Use `docker exec` in the second container to verify that the data written by the first container is available.

```bash
docker exec container2 cat /data/file.txt
```

The output should show the data `Hello from container1`, confirming that the volume is shared between the containers.

4. **List and remove volumes:**

   - List all Docker volumes using `docker volume ls`:

   ```bash
   docker volume ls
   ```

   - Remove the shared volume when you’re done using `docker volume rm`:

   ```bash
   docker volume rm shared_volume
   ```

---

### **Summary:**
- In **Task 1**, we created a multi-container application using `docker-compose`, explored how to scale services, and managed container logs and statuses.
- In **Task 2**, we shared data between containers using **Docker Volumes**, mounted the same volume in multiple containers, and verified data consistency.

These tasks are essential skills for managing multi-container applications and data storage in a Docker-based environment, commonly used in DevOps workflows.

[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)
