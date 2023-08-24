## Tasks: 

**1. What you understood in Jenkin, write a small article in your own words (Don't copy from Internet Directly)**<br>
[Blog Link](https://devxblog.hashnode.dev/introduction-to-jenkins-a-beginners-guide)

**2.Create a freestyle pipeline to print "Hello World!!**
- **Step 1: Create a New Freestyle Job**<br>
**Step1.1:** To create a Declarative pipeline in Jenkins, go to Jenkins UI 					  and click on **New item**.<br>
**Step1.2:** Provide **the pipeline name** and **select Pipeline,** and then click on **ok**
![Jenkins pipeline example hello world](https://naiveskill.com/wp-content/uploads/2021/10/Screenshot-2021-10-31-at-9.31.52-PM-1024x613.png)
**Step 1.3:** Now goto the pipeline session
  ![Screenshot-2021-10-31-at-9_cleanup](https://github.com/Simbaa815/90DaysOfDevOps/assets/112085387/ea95c4c9-4b2f-4886-82cb-0c32c710df9d)

```
pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
```
- Code explanation:
--> **Pipeline:** Starts with the pipeline block, a must-have.
--> **Agent:** Specifies where the Jenkins job runs; "any" here.
--> **Stages/Stage:** Contains executable stage blocks; at least one is required.
-->**Steps:** Holds actions to perform; like printing "Hello World".<br>
**Step 1.4:** Click on the **save** button to save the Pipeline.

- **Step 2:** **Click on the **save** button to save the Pipeline.**
![](https://naiveskill.com/wp-content/uploads/2021/10/Screenshot-2021-10-31-at-10.12.23-PM-1024x626.png)<br>
**Step 2.2:** Click on **#1** to view logs and then goto the **console output**
![Jenkins pipeline example hello world logs](https://naiveskill.com/wp-content/uploads/2021/10/Screenshot-2021-10-31-at-10.18.07-PM-1024x432.png)

Include this [article link](https://www.geeksforgeeks.org/what-is-jenkins) for more information.

Till then Happy learning :)
