# Day 18 Dockerfile and Docker-Compose

## **Making a Flask app using Redis through Docker compose**

1. **Adding Flask App and define dependencies**
Adding project files as

![image](https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/1e739373-dee5-4c82-a158-a440a2250d7a)

2. **Writing the Dockerfile**
```
#syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]
```


4. **Writing services in docker compose (yaml file)**
```
services:
  web:
    build: .
    ports:
      - "8000:5000"
  redis:
    image: "redis:alpine"
```
4. **Build and Run using docker-compose up**
```
docker-compose up
```
<img width="531" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/9d1da0a6-e41f-4501-85e1-29eb32b46479">
<p>
<img width="335" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/27e07487-9c52-4f82-aab3-770989fc753b">
</p>
<img width="323" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/ab2d3dd9-2337-4457-9369-950c374ffc49">
<p>

## Here is the running app

<kbd><img width="419" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/f6bfd2d5-1cc6-412f-916e-4813f31abe98" align=centre></kbd>

On pressing **Ctrl+C**

<img width="432" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/c423dad7-398f-4853-b67f-b6a8feb60d30">
</p>

## **Some other commands**

***1. to stop the application***
```
docker-compose down
```

<img width="451" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/1cd711d4-39e5-40ff-9086-4524c14d56d6">


***2. to run the container in detached mode***
```
docker-compose up -d
```

<img width="594" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/a5dcc6ca-774a-43e9-a28c-c4125610c831">


***3. to stop the detached container***
```
docker-compose stop
```
<img width="567" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/c07d564a-e441-4b58-87f4-810e5ea4bb04">


## SOME Suggestions if you are working in AWS Free Tier Account

1. ***Use these commands to find your instance slowness***

> To check the available memory
```
df -h
```
<img width="449" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/c8f01878-e0a1-40de-a965-9b846be99619">


> To check all the container whether running or stopped ones.
```
docker ps -a
```
<img width="774" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/b53c7f95-c353-4181-a951-5e4c70aa6ab9">


> To remove unused container 
```
docker rm <container-id>
#refer above image
```

> To check all the images
```
docker images -a
```
<img width="500" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/5409986f-0562-43a6-b489-5ee5e45ec4d0">


> To delelte an image
```
docker rmi <image-name>
```
<img width="526" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/d7079242-8635-4fa9-b2a8-9a94e45c9c36">

<img width="537" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/2b0ff4bc-ae55-4c5a-a2eb-d103c836d487">



*Please note: you can delete only untagged images. If the above command does not work, first remove the container attched then try this*
