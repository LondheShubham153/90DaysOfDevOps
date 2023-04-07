Day 17 Task refer [Hashnode](https://sumitramchandra.hashnode.dev/docker-project-for-devops-engineers)
# Task
Create a Dockerfile for a simple web application (e.g. a Node.js or Python app)
Here, we are going to clone an open-source project and dockerize it.

![image](https://user-images.githubusercontent.com/119837985/230570891-eb52223c-8d1b-4bb7-97a8-4ead315746c7.png)

![image](https://user-images.githubusercontent.com/119837985/230571056-38b5a65b-aead-48f4-9f21-21481bd42eaa.png)


Build the image using the Dockerfile and run the container
let's look at the Dockerfile first

![image](https://user-images.githubusercontent.com/119837985/230571088-8f060f3e-4d78-4ce5-bb27-529a500d2b24.png)


Let's break down the above Dockerfile into its components:

FROM - sets the base image to use. In this case, we are using version 3.9 of python

WORKDIR - sets the working directory for the container to /app.

COPY - copies the application files into the container.

RUN - runs a command to install any dependencies needed. In this case, we are updating the package list and installing Python 3.

CMD - sets the command to run when the container starts.

Note that the instructions in a Dockerfile are executed in the order they are written. It is also important to use the correct syntax and formatting when writing a Dockerfile, as any mistakes can result in errors during the build process.

Now, after creating the Dockerfile, let's create the image using

sudo docker build . -t <tag>
Now run the docker image using

sudo docker run -d -p 8001:8001

![image](https://user-images.githubusercontent.com/119837985/230571288-596199a9-0754-4d87-8f66-3bd96b2556f4.png)

  
here, -d means in the background (Daemon) mode and -p is used for port mapping. We have exposed our image to port 8001.

Verify that the application is working as expected by accessing it in a web browser
to verify the application is running copy your IP and paste it into the browser

along with the colon and respective port number (ex. http://xx.xxx.xx.xx:8001)

![image](https://user-images.githubusercontent.com/119837985/230571318-fef38d76-3b20-4db1-a3e2-d23094ac6ffd.png)


Push the image to a public or private repository (e.g. Docker Hub )

docker push <hub-user>/<repo-name>:<tag>
  
So, this is how you dockerize any open-source application and then publish it into your repository.

You can share the learning with everyone over LinkedIn and tag us along 😃

Happy Learning:)

************************************************************************

Thanks for reading! Hope you find this helpful.

Happy learning !!!
