#base image
FROM openjdk:17-jdk-alpine

#working Dir
WORKDIR /app

#copy code from your host to your container (Workdir)
COPY src/Main.java /app/Main.java
COPY quotes.txt /app/quotes.txt

#Running the cmd to install dpenedances and compile the code
RUN javac Main.java

#Epose the port number
EXPOSE 8000

#Serve the appilcation/ keep it runnig
CMD ["java","Main"]