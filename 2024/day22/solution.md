# **Day-22: Getting Started with Jenkins 😃**  

## **Tasks**  

## **Solution : 👇**

### **Task 1: Write an Article in Your Own Words**  

1. **What is Jenkins and why is it used?**  
   Jenkins is a CI/CD tool used primarily for continuous integration (CI). It automates repetitive tasks, such as building, testing, and deploying applications. While Jenkins handles CI, tools like ArgoCD are often used for CD (Continuous Delivery).  

2. **How does Jenkins integrate into the DevOps lifecycle, and what are its benefits?**  
   Jenkins plays a crucial role in the DevOps lifecycle:  
   - It automates the pipeline from code integration to deployment.  
   - It supports DevSecOps practices, ensuring security integration in the pipeline.  
   - Jenkins uses a **master/slave architecture**, which helps offload processes from the primary server. This ensures efficient resource utilization.  

3. **The role of Jenkins in automating build, test, and deployment processes**  
   Jenkins simplifies the software delivery process:  
   - **Build**: It compiles the code into executable artifacts using tools like Maven or Gradle.  
   - **Test**: Jenkins runs automated tests to validate code quality and functionality.  
   - **Deploy**: It can deploy the application using Docker Compose, Kubernetes, or tools like ArgoCD.  

---

### **Task 2: Create a Freestyle Pipeline to Print "Hello World"**  

#### **Step 1: Open Jenkins and Create a New Freestyle Project**  
1. **Access Jenkins:**  
   - Open your Jenkins dashboard in a web browser.  
   - URL format: `http://<your-jenkins-server-ip>:8080`.  

2. **Create a New Item:**  
   - On the Jenkins dashboard, click on **"New Item"**.  
   - Enter a name for your project (e.g., `HelloWorldPipeline`).  
   - Select **"Freestyle project"** from the options and click **OK**.  



#### **Step 2: Configure the Pipeline**  
1. **General Settings:**  
   - Add a description for your pipeline (optional but recommended). Example:  
     ```
     This pipeline demonstrates a basic Jenkins Freestyle project that:
     - Prints "Hello World"
     - Displays the current date and time
     - Clones a GitHub repository and lists its contents
     ```  

2. **Build Steps:**  
   - In the project configuration page, scroll to the **"Build"** section.  
   - Click on **"Add build step"** and select **"Execute shell"** for each of the following steps:  

   **Step 2.1: Print "Hello World":**  
   - In the shell script section, enter:  
     ```bash
     echo "Hello World"
     ```  

   **Step 2.2: Print the Current Date and Time:**  
   - Add another shell script step.  
   - In the shell script section, enter:  
     ```bash
     date
     ```  

   **Step 2.3: Clone a GitHub Repository and List its Contents:**  
   - Add another shell script step.  
   - In the shell script section, enter: 
    
     ```bash
     
    if [ -d "DevOps-Installation" ]; then
        echo "Directory exists."
    
        # List the contents of the repository
        ls DevOps-Installation
    else
        echo "Cloning the repository..."
        git clone https://github.com/Amitabh-DevOps/DevOps-Installation.git
    
        # List the contents of the repository
	    ls DevOps-Installation
    fi

     ```  



#### **Step 3: Schedule the Pipeline to Run Periodically**  
1. Scroll to the **"Build Triggers"** section.  
2. Check **"Build periodically"** and specify the schedule:  
   ```
   H * * * *
   ```  
   This configuration will trigger the pipeline every hour.  
   - `H`: Randomizes the minute within the hour.  
   - `* * * *`: Indicates the job will run every hour of every day.  



#### **Step 4: Save and Run the Pipeline**  
1. **Save Configuration:**  
   - Scroll to the bottom of the configuration page and click **"Save"**.  

2. **Run the Pipeline:**  
   - On the project page, click **"Build Now"** to manually trigger the pipeline for testing.  
   - Monitor the console output by clicking on the **build number** (e.g., #1) under the **Build History** section, then selecting **"Console Output"**.  

3. **Output Image:**
    ![output-image](<Screenshot 2025-01-17 104435.png>)

---


[LinkedIn](https://www.linkedin.com/in/amitabh-devops/)