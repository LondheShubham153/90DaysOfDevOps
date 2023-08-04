# Day 16 Task: Docker Beginning

## Prerequisites.

1. **Check that docker is installed. If not, you need to install it first**

Refer this for easy and proper installation: [Install Docker on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

If it is properly installed, your docker run will be green

<img width="541" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/2a5c9049-2097-4b42-9862-7951138a52df">


2. **Other important thing is to give proper [permissions to docker in Linux](https://docs.docker.com/engine/install/linux-postinstall/)**

```
#check if you are getting permission denied error. if yes follo below steps to setup right permissions
docker run hello-world 
sudo groupadd docker
echo $USER
# check which user you are giving permission to
sudo usermod -aG docker $USER
# after this you need to restart your machine for the changes to take effect
```
<img width="524" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/aa650519-9cf8-47a3-a7f1-999072e07a25"><p>

## Task 1 *docker run hello-world*
```
docker run hello-world
```
<img width="470" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/da1cae79-d357-4ddc-8616-d71a8a55d76a">


3. To get the container related commands, [**Containerise an application**](https://docs.docker.com/get-started/02_our_app/)

```
git clone https://github.com/docker/getting-started-app.git
cd /path/to/getting-started-app
touch Dockerfile
```
Paste below into the Dockerfile
```
# syntax=docker/dockerfile:1
   
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
```
After that follow below steps
```
cd /path/to/getting-started-app
docker build -t getting-started .
docker run -dp 127.0.0.1:3000:3000 getting-started
```
<img width="634" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/90639f6b-e252-45d7-bd9f-bc5bcdf95786">

After a few seconds, open your web browser to http://localhost:3000. You should see your app.

Alternatively you can curl in your terminal to confirm
```
curl localhost:3000
```
<img width="555" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/cabf0983-02a3-43a1-b484-c5d7b69d027a">

# Now all your remaining task commands can be executed with charm!😀
## Task 2 *docker inspect hello-world:latest*
```
docker inspect hello-world:latest
```
<img width="553" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/2e872d3b-3186-4e54-963d-b6ac84a2f560">

```
docker image ls
```
<img width="428" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/cb06b595-680e-4b8a-8bc2-fa4b270e0e2c">


## Task 3 *dokcer ps, port, stat*
```
docker ps
```
<img width="714" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/a6bea820-5727-43ec-85fe-da5e0f98d77c">

```
docker port 15bf70b409f9
```
<img width="570" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/2535b254-919f-40a0-8867-bcbe0485b817">

```
docker stats 15bf70b409f9
```
<img width="642" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/6d32b33c-9b7f-4f8c-bd51-8c0bd763536b">

```
docker top 15bf70b409f9
```
<img width="706" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/f315e2d3-d580-4535-ad53-4bd0e5d6716f">

## Task 4 docker save and load
```
docker save getting-started > getting-started.tar
ls -sh getting-started.tar
docker save --output getting-started.tar getting-started
docker load  < getting-started.tar
docker images
```
![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/fcf94a97-d307-4637-aa45-b7ed2d6088c5)







