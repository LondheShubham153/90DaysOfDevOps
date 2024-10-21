
# Day 17 Task: Docker Project for DevOps Engineers

You people are doing just amazing in **#90daysofdevops**. Today's challenge is so special because you are going to do a DevOps project with Docker. Are you excited? 😍

## Dockerfile

Docker is a tool that makes it easy to run applications in containers. Containers are like small packages that hold everything an application needs to run. To create these containers, developers use something called a Dockerfile.

A Dockerfile is like a set of instructions for making a container. It tells Docker what base image to use, what commands to run, and what files to include. For example, if you were making a container for a website, the Dockerfile might tell Docker to use an official web server image, copy the files for your website into the container, and start the web server when the container starts.

For more about Dockerfile, visit here.

## Task

1. Create a Dockerfile for a simple web application (e.g. a Node.js or Python app)
2. Build the image using the Dockerfile and run the container
3. Verify that the application is working as expected by accessing it in a web browser
4. Push the image to a public or private repository (e.g. Docker Hub)

---

### Steps to Complete the Task:

### 1. **Create a Simple Web Application (Node.js or Python)**

#### **For Node.js:**

Create a file called `app.js`:
```javascript
// app.js

const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello, World from Dockerized Node.js App!');
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
```

Now, create a `package.json` file to manage dependencies:
```json
{
  "name": "docker-node-app",
  "version": "1.0.0",
  "main": "app.js",
  "dependencies": {
    "express": "^4.17.1"
  },
  "scripts": {
    "start": "node app.js"
  }
}
```

#### **For Python (Flask):**

Create a file called `app.py`:
```python
# app.py

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World from Dockerized Python App!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

Create a `requirements.txt` file to manage dependencies:
```
Flask==2.0.1
```

---

### 2. **Create a Dockerfile**

#### **For Node.js App (Dockerfile):**

```dockerfile
# Use an official Node.js image as the base
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
```

#### **For Python Flask App (Dockerfile):**

```dockerfile
# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy requirements.txt and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Start the app
CMD ["python", "app.py"]
```

---

### 3. **Build the Docker Image**

In your terminal, navigate to the directory containing the Dockerfile and run:

#### For Node.js App:
```bash
docker build -t docker-node-app .
```

#### For Python Flask App:
```bash
docker build -t docker-python-app .
```

---

### 4. **Run the Container**

#### For Node.js App:
```bash
docker run -p 3000:3000 docker-node-app
```

#### For Python Flask App:
```bash
docker run -p 5000:5000 docker-python-app
```

---

### 5. **Push the Image to a Repository**

1. **Login to Docker Hub**:
   ```bash
   docker login
   ```

2. **Tag your image**:
   ```bash
   docker tag docker-node-app yourdockerhubusername/docker-node-app
   ```

3. **Push the image**:
   ```bash
   docker push yourdockerhubusername/docker-node-app
   ```

---

[LinkedIn](https://www.linkedin.com/in/faizan-shaikh-433245194/)
