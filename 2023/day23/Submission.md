Refer to my blog at [Hashnode](https://sumitramchandra.hashnode.dev/jenkins-freestyle-project-for-devops-engineers)
#
# TASK -01
create an agent for your app.
Set up your Jenkins server and open the dashboard.

![image](https://user-images.githubusercontent.com/119837985/233762969-36d26171-1a6f-4728-9a5b-aa5bcf174964.png)


From the dashboard click on Set up an agent, it's very very easy to set up an agent, just go through this video.

Create a new Jenkins freestyle project for your app.
To create a new project click on Create a job. Give the project name, select the freestyle project and click on ok.

![image](https://user-images.githubusercontent.com/119837985/233762979-a9e05501-77e6-4ab2-ae67-1803c4f979c7.png)


Configure project details-

Describe your project as per your need.

![image](https://user-images.githubusercontent.com/119837985/233762988-a6100eeb-3614-42a7-9c6a-39ec9245dd11.png)


In the Source Code Management select git and paste your GitHub repository URL and add credentials for integration and authentication.

![image](https://user-images.githubusercontent.com/119837985/233762995-4861fda5-48e3-435f-9f20-a10dc4f9816f.png)


Keep the domain default from the KIND dropdown and select the type of credentials you want, here I am using the Secret text method where can add Personal Access Token generated from GitHub.

![image](https://user-images.githubusercontent.com/119837985/233763002-804e2948-2764-4dae-860f-5f0aa8c28733.png)


give it an ID and description and click on add.

Specify the branches if you'd like to track a specific branch in a repository. If left blank, all branches will be examined for changes and built.

![image](https://user-images.githubusercontent.com/119837985/233763003-7ad03b75-c4ab-4eee-bed3-46b4c35bee61.png)


In the "Build" section of the project, Execute the shell and add a build step to run the "docker build" command to build the image for the container.

Add a second step to run the "docker run" command to start a container using the image created in the previous step.

![image](https://user-images.githubusercontent.com/119837985/233763006-952c4eaf-fd45-4b57-99ed-0ea667dea753.png)


Save the Configuration.

Now you can see the below window.

![image](https://user-images.githubusercontent.com/119837985/233763011-f82e7792-a919-42bc-95bc-609172875b38.png)


Click on the Build Now button and your project will start building if everything goes well the project will build successfully.

click on the green right button in the built history so that you can see the console output of your project.

![image](https://user-images.githubusercontent.com/119837985/233763014-202dfbb2-c9c9-4f21-bab4-e4aff8d30ca4.png)

![image](https://user-images.githubusercontent.com/119837985/233763019-35cbcdea-b4da-4d5b-8109-f4369eee2d38.png)


as you can see that my project is deployed successfully.

Expose port 8000 in your security group same as we have done for Jenkin's port 8080. After Allowing the port hit the IP:8000.

![image](https://user-images.githubusercontent.com/119837985/233763025-9e8536a3-9d07-440c-b328-336e50b1bfbc.png)


# Task-02
Create Jenkins project to run the "docker-compose up -d" command to start the multiple containers defined in the compose file (Hint- use day-19 Application & Database docker-compose file)

Set up a cleanup step in the Jenkins project to run the "docker-compose down" command to stop and remove the containers defined in the compose file

Create a docker-compose.yml file inside your project

![image](https://user-images.githubusercontent.com/119837985/233763032-0ce6ba3f-74ca-4b9a-9d42-f60ff8aa33be.png)


In the "Build" section of the project, add a build step "docker-compose down" command to stop and remove the containers defined in the compose file. then add the "docker-compose up -d" command.

![image](https://user-images.githubusercontent.com/119837985/233763054-20869640-b1d7-4f3f-b198-b983705f0b0b.png)


make sure to install docker-compose in the terminal.

Build the project.

After a build is completed, you can view the console output.

![image](https://user-images.githubusercontent.com/119837985/233763063-1be48d9b-5311-4c1b-8946-0044bce6d588.png)


You can see the container is created.

![image](https://user-images.githubusercontent.com/119837985/233763069-9b3af79c-85e3-406b-84f6-82fed7f4c0c0.png)

Browse IP:8000

![image](https://user-images.githubusercontent.com/119837985/233763076-60ad47e6-2813-4fb0-baf2-a89a9fa688f3.png)

That's all for today.

In this way, you can create a freestyle project.
