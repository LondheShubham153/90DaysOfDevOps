### Task:

### Create a Dockerfile for a simple web application (e.g. a Node.js or Python app) 

### Ans:- 
         1) vi Dockerfile
         2) FROM python
            COPY . .
            RUN pip install django
            RUN python3 manage.py makemigrations
            RUN python3 manage.py migrate
            EXPOSE 8000
            CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]




### Build the image using the Dockerfile and run the container

### Ans:- 
         1) docker build -t python .
         2) docker run -p 8000:8000 python




### Verify that the application is working as expected by accessing it in a web browser

### Ans:- 
         Yes it's working.




### Push the image to a public or private repository (e.g. Docker Hub )

### Ans:-
         1) docker images
         2) docker tag python <dockerhub_username>/<tagname_which_you_want_to_give>
         3) docker push madhupdevops/django-app
         4) visit hub.docker.com and login with credentials and check.




For Refference Project visit here

If you want to dive further, Watch bootcamp

You can share the learning with everyone over linkedin and tag us along 😃

Happy Learning:)
