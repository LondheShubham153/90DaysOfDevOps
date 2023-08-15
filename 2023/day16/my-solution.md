## Day 16 Task: Docker for DevOps Engineers.


### Docker
 Docker is a software platform that allows you to build, test, and deploy applications quickly. Docker packages software into standardized units called containers that have everything the software needs to run including libraries, system tools, code, and runtime. Using Docker, you can quickly deploy and scale applications into any environment and know your code will run.

# Tasks

 As you have already installed docker in previous days tasks, now is the time to run Docker commands.

- Use the `docker run` command to start a new container and interact with it through the command line. [Hint: docker run hello-world]
```bash
docker run hello-world
```
![image](https://github.com/Simbaa815/90DaysOfDevOps/assets/112085387/9dea95b0-ddcf-48c6-ab27-9dc5f7804286)


- Use the `docker inspect` command to view detailed information about a container or image.
```Powershell
docker inspect <image_name>
```

![image](https://github.com/Simbaa815/90DaysOfDevOps/assets/112085387/a59fb7fc-44b8-43de-a6ed-f0125f94cdf9)


- Use the `docker port` command to list the port mappings for a container.
```PowerShell
docker port container_name_or_id
```

- Use the `docker stats` command to view resource usage statistics for one or more containers.
```PowerShell
docker stats container_name_or_id
```
![image](https://github.com/Simbaa815/90DaysOfDevOps/assets/112085387/2ac4eec7-1bc3-42cf-bec1-250a6daa5892)

- Use the `docker top` command to view the processes running inside a container.
```PowerShell
docker top container_name_or_id
```
![image](https://github.com/Simbaa815/90DaysOfDevOps/assets/112085387/f245c55a-b51b-48c8-b76c-ae813b0064d8)

- Use the `docker save` command to save an image to a tar archive.
```PowerShell
docker save -o <output_file_path>.tar <image_name>:<tag>
```
![image](https://github.com/Simbaa815/90DaysOfDevOps/assets/112085387/72edd57c-2b7f-40d4-94be-68d97ab4be4a)

- Use the `docker load` command to load an image from a tar archive.
```PowerShell
docker load -i <input_file_path>.tar
```

These tasks involve simple operations that can be used to manage images and containers. 
