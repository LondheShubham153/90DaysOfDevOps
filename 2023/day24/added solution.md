# Let's make a complete CI/CD project for your Node JS Application.

# Task-01
Fork this [repository](https://github.com/SumitRamchandra/node-todo-cicd.git):

Create a connection to your Jenkins job and your GitHub Repository via GitHub Integration.
we will use Personal Access Token for integrating your Jenkins and Github.

For Installing GitHub Integration plugin in Jenkins
Open your Jenkins dashboard.

Click on the Manage Jenkins button on your Jenkins dashboard

Click on Manage Plugins

Install the GitHub Integration plugin

![image](https://user-images.githubusercontent.com/119837985/233772083-a182a7c5-9136-4a4f-9376-c06634047d62.png)


To integrate your Jenkins and GitHub go to configure the system in the manage Jenkins tab. Find the GitHub section and add the GitHub server.

![image](https://user-images.githubusercontent.com/119837985/233772089-1a63b78f-2850-482e-974c-5db333b70ca3.png)

Add Jenkins credentials, use secret text in which you will add your Github Personal Access Token

![image](https://user-images.githubusercontent.com/119837985/233772098-1359be15-6de4-44d8-94fa-774f5a6732bb.png)

Select your credentials from the dropdown menu of credentials and test the connection.

![image](https://user-images.githubusercontent.com/119837985/233772107-74096d64-8b98-4131-9873-b1ecc928396a.png)

You can see that your GitHub is connected to the Jenkins server and your GitHub user name is displayed. Save the changes, by now you have integrated your Jenkins and GitHub successfully.

Read About GitHub [WebHooks](https://betterprogramming.pub/how-too-add-github-webhook-to-a-jenkins-pipeline-62b0be84e006) and make sure you have a CICD setup

# Task-02

Creating a new Freestyle Project for the node.js application
go to the dashboard and create a new job.

![image](https://user-images.githubusercontent.com/119837985/233772158-61c47b05-11ce-4d9a-9ed3-bee691312b89.png)

Configure your project-

-Give it a description.

-Select the GitHub project in general and add your repository URL to the project URL.

-In the Source Code Management, select git and add the details asked, leave the credentials section as we have already provided the credentials and it will automatically take the credentials.

-Specify the branch.

![image](https://user-images.githubusercontent.com/119837985/233772170-b4896654-fd71-4dda-ba88-563fcf561760.png)

![image](https://user-images.githubusercontent.com/119837985/233772179-264a8ac4-09a7-405b-a60e-90b2f8b9855f.png)


You will have to make a Docker Compose file for this Project

![image](https://user-images.githubusercontent.com/119837985/233772188-3f50a223-9ef1-43cb-926e-c671d329c48b.png)

In the Build Steps section, Execute the shell to run the application using Docker Compose.

![image](https://user-images.githubusercontent.com/119837985/233772196-bbe72f1c-befa-4b9a-a5a2-4f051d5ef523.png)

here, I am running `sudo docker-compose down` command first to stop the processes running on this port and then running `sudo docker-compose -d up` to run the application.

![image](https://user-images.githubusercontent.com/119837985/233772202-a7c9e44f-2f15-438e-8489-8647537e114d.png)

![image](https://user-images.githubusercontent.com/119837985/233772207-37de3836-8c6d-4f80-8fb3-64d51c21d354.png)


See the console output your project should be up and running successfully.

Open port 8000 with your IP (X.X.X.X:8000) to see the application.

![image](https://user-images.githubusercontent.com/119837985/233772215-540f1062-0f3c-4df8-a950-250429288f4d.png)


Run the project and give yourself a treat :)
For Reference and the entire hands-on Project visit [here](https://youtu.be/nplH3BzKHPk)

Visit [Hashnode](https://sumitramchandra.hashnode.dev/complete-jenkins-cicd-project)
