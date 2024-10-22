
# Docker for DevOps Engineers - Day 18 Task

## Docker Compose Overview

**Docker Compose** is a powerful tool that helps developers manage multi-container applications by defining them in a simple, human-readable format using YAML. It allows you to start, stop, and configure multiple containers with just a few commands, making it a valuable tool for DevOps engineers.

---

## Task 1: Learning to Use `docker-compose.yml`

A typical `docker-compose.yml` file defines:
- **Services**: These are the different containers that your application is composed of.
- **Networks**: How services communicate with each other.
- **Volumes**: Data persistence across containers.
- **Environment Variables**: Used for configurations specific to each service.

Here's a **sample `docker-compose.yml`** file:

```yaml
version: '3.8'
services:
  web:
    image: nginx:latest
    ports:
      - "8080:80"
    volumes:
      - ./html:/usr/share/nginx/html
    environment:
      - NGINX_HOST=localhost
      - NGINX_PORT=80
  database:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: example_password
    volumes:
      - db_data:/var/lib/mysql
volumes:
  db_data:
```

- **version**: The Compose file version.
- **services**: Defines the containers.
  - **web**: This service uses an Nginx container and exposes port 80.
  - **database**: This service uses a MySQL container with environment variables to set the root password.
- **volumes**: Data persistence. The database’s data will persist on the local machine.

To **bring the services up**:
```bash
docker-compose up
```

To **bring them down**:
```bash
docker-compose down
```

---

## Task 2: Pulling a Pre-existing Docker Image & Running it

### Step-by-Step Instructions:

1. **Pull an Image from Docker Hub**
   ```bash
   docker pull nginx:latest
   ```

2. **Run the Container as a Non-root User**:
   Ensure the current user can run Docker commands without `sudo`:
   ```bash
   sudo usermod -a -G docker $USER
   ```
   After executing this, reboot the machine:
   ```bash
   sudo reboot
   ```

   Once back, run the image:
   ```bash
   docker run -d --name my_nginx -p 8080:80 nginx:latest
   ```

3. **Inspect the Running Container**:
   To check the processes and exposed ports, use:
   ```bash
   docker inspect my_nginx
   ```

4. **View Logs**:
   To check the logs of the running container:
   ```bash
   docker logs my_nginx
   ```

5. **Stop and Start the Container**:
   To stop and restart the container:
   ```bash
   docker stop my_nginx
   docker start my_nginx
   ```

6. **Remove the Container**:
   Once done, remove the container:
   ```bash
   docker rm my_nginx
   ```

---

## Additional Concepts

- **Docker without sudo**:
  - After adding the user to the `docker` group (`sudo usermod -a -G docker $USER`), reboot is essential to apply the changes.

---

 

[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)  😃