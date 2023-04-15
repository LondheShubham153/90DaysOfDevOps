Refer my Blog [Hashnode](https://sumitramchandra.hashnode.dev/getting-started-with-jenkins)
# Task

- Create a freestyle pipeline to print "Hello World!! Hint: Use the link for the Article.

In this task, we will install Jenkins using an AWS EC2 instance.

1. Set up your Ubuntu server and connect it through CLI.

2. To install Jenkins on your server simply follow these steps.

3. Start Jenkins

`sudo systemctl enable jenkins`

`sudo systemctl start jenkins`

`sudo systemctl status jenkins`

after starting, the status of Jenkins should be active and running.

![image](https://user-images.githubusercontent.com/119837985/232207875-218adc1f-87d4-49ec-8376-fb9b2531c596.png)


4. Open port 8080 from AWS Console: (ex. your servers IP add:8080)

![image](https://user-images.githubusercontent.com/119837985/232207893-4b188400-bf4d-4140-9160-3f90475b1da8.png)


5. Install Suggested plugins

![image](https://user-images.githubusercontent.com/119837985/232207902-6a4b7545-48c1-44e7-b0bb-d08906e3501e.png)


6. Complete your Jenkins setup to create Admin User

![image](https://user-images.githubusercontent.com/119837985/232207924-7991f1ec-4f0e-4c53-b245-9523fa7c79c0.png)

7. After completing the setup you can see the Jenkins dashboard

![image](https://user-images.githubusercontent.com/119837985/232207945-ccdae57c-b25c-48ad-bc0a-4f29dc489c62.png)
#
- Now, let's create a simple freestyle project.

1. to create a new project click on Create a job on the dashboard and select a freestyle project.

![image](https://user-images.githubusercontent.com/119837985/232208004-c550e2c4-706c-4cd4-a78f-3fe551349321.png)


2. After this, you will reach a page where you have different options(like source code management, build triggers, etc. ) that help you manage your job.

![image](https://user-images.githubusercontent.com/119837985/232208031-28e0a915-6e24-4139-82f8-4a4caa0d3843.png)

3. provide some description as per your need

4. choose none in source code management as we are creating a very simple project.

5. Select execute shell option in the build step and enter some commands Keep all other options unchecked as at this point we do not need to use any of them.

![image](https://user-images.githubusercontent.com/119837985/232208058-25779db9-f9a0-4fdf-baf6-a6d579d1b01b.png)

Then click apply and save. So, your job is created.

6. Now, we will run it for which click the ‘build now’ option and a building history will be created then click on it.

![image](https://user-images.githubusercontent.com/119837985/232208078-485a04e2-667c-4ce0-a243-9d416d8ffb72.png)

7. Now, Click on console output, and you can see your output. Also, by console output, you can see whether your job is failed or been successful.

![image](https://user-images.githubusercontent.com/119837985/232208096-60313309-b4e5-4fea-8a93-dc8dd5320004.png)

In this way, you can create a freestyle project.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Hope you find this helpful.
