# Jenkins Declarative Pipeline with Docker

# Task 1
1) Create a docker-integrated Jenkins declarative pipeline

- Set up the Jenkins server.

- In Jenkins, Click on “New Item”, create a new pipeline job, and select "Pipeline" as the project type.

![image](https://user-images.githubusercontent.com/119837985/234242019-99490ab4-4532-47a2-87b4-abb9f2e055d2.png)


- In the configuration, In the pipeline script section, define your stages, steps, and parameters.

![image](https://user-images.githubusercontent.com/119837985/234242125-b6a04d0a-fbb0-47a0-8003-eb56f11b762e.png)

- Save and run the pipeline. You should see the pipeline execute each stage and run your application inside a Docker container.

![image](https://user-images.githubusercontent.com/119837985/234242169-ae25e7c0-eff5-4a99-b963-3b1ffb04bf30.png)

- See the Console Output:

![image](https://user-images.githubusercontent.com/119837985/234242226-6523800f-b38d-4356-be0f-0318485fa896.png)

![image](https://user-images.githubusercontent.com/119837985/234242236-80c72357-aecd-4675-b110-9f57b8a188b0.png)

- You will face errors in case of running a job twice, as the docker container will be already created, so for that do task 2

# Task 2
- Create a docker-integrated Jenkins declarative pipeline using the docker groovy syntax inside the stage block.

![image](https://user-images.githubusercontent.com/119837985/234242386-db1d5b47-b388-4ba1-8dc1-dbf33692d75d.png)

Click on Save and then click on Build Now.

![image](https://user-images.githubusercontent.com/119837985/234242425-f0d8099a-1c24-44b2-a80b-480fb3226c21.png)

- See the Console Output:
Hope you find this helpful. Thanks for Reading.
