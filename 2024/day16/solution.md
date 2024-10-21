
# Docker Commands Practice Questions

## 1. Run a New Container
**Question**: How do you use Docker to pull and run the `hello-world` container to ensure Docker is properly set up?
```bash
docker run hello-world
```

## 2. Inspect a Container or Image
**Question**: How can you retrieve detailed information (like configuration, environment variables, volumes) about a specific Docker container or image using Docker commands?
```bash
docker inspect <container_id_or_image_name>
```

## 3. List the Port Mappings for a Container
**Question**: Which Docker command allows you to see the port mappings (container to host) for a running container?
```bash
docker port <container_id_or_name>
```

## 4. View Resource Usage Statistics for Containers
**Question**: How can you monitor resource usage (such as CPU, memory, and network I/O) for all or specific Docker containers in real time?
```bash
docker stats
```

## 5. View Processes Running Inside a Container
**Question**: Which command shows the list of active processes running inside a Docker container, similar to the `top` command on Linux?
```bash
docker top <container_id_or_name>
```

## 6. Save an Image to a Tar Archive
**Question**: How can you export a Docker image as a `.tar` archive file for backup or sharing purposes?
```bash
docker save -o <output_file.tar> <image_name>
```

## 7. Load an Image from a Tar Archive
**Question**: If you have a Docker image saved in a `.tar` archive, how can you load it back into Docker?
```bash
docker load -i <input_file.tar>
```
[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)