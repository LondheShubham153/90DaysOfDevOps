# Jenkins Declarative Pipeline
Refer [Hashnode](https://sumitramchandra.hashnode.dev/jenkins-declarative-pipeline)

# Task
1. Create a New Job, this time select Pipeline instead of Freestyle Project.

2. Follow the Official Jenkins [Hello World](https://www.jenkins.io/doc/pipeline/tour/hello-world/) example.

3. Complete the example using the Declarative pipeline.

- To get started quickly with Pipeline:

1. Install the [Docker Pipeline plugin](https://plugins.jenkins.io/docker-workflow/) through the Manage Jenkins > Plugins page

2. After installing the plugin, restart Jenkins so that the plugin is ready to use.

3. To create a Declarative pipeline in Jenkins, go to Jenkins UI and click on New item.

4. Enter the pipeline name and select Pipeline, and then click on ok.

![image](https://user-images.githubusercontent.com/119837985/233901767-2d7af53b-d8e6-4e66-a64d-89499417bb96.png)


5. Go to the project configuration page.

![image](https://user-images.githubusercontent.com/119837985/233901870-2ad524b6-df4d-446f-b202-9ccbbd302fc8.png)

6. In the “Pipeline” section, define the Pipeline script.

![image](https://user-images.githubusercontent.com/119837985/233901911-c32dbd78-5692-48bf-a252-5b0df6e1dfa8.png)

7. Write a pipeline script and save changes.

8. Build the project. You can manually build the project by clicking on the "Build Now" link on the project's main page.

![image](https://user-images.githubusercontent.com/119837985/233901957-0088e6f5-923d-41b1-8f85-a1f39d48cbfe.png)

9. After a build is completed, you can view the console output by clicking on the "Console Output" link on the build page.

![image](https://user-images.githubusercontent.com/119837985/233901978-6eba1c04-fe9a-4d81-a7c3-fafcb886163d.png)

10. As you can see from the above output, the Pipeline run successfully and printed Hello World.

![image](https://user-images.githubusercontent.com/119837985/233902008-00715c0a-bc41-4e19-bafd-e5aabb48bebd.png)

In this way, you can create a Declarative pipeline. This was the simplest project, in the upcoming sessions we will see more advanced projects.
#
Hope you find this helpful. Thanks for Reading.
