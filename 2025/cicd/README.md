# Week 6: Jenkins Basics & Advanced Challenge
In this challenge, you will deepen your understanding of Jenkins and its advanced features—essential for building robust CI/CD pipelines in a cloud environment. You will explore the Jenkins UI, create and run pipelines, configure agents and RBAC, leverage Shared Libraries, and integrate vulnerability scanning using Trivy.

## Topics Covered
- **Jenkins UI Flow** – Navigating and understanding the Jenkins dashboard.
- **Jenkins Pipelines** – Building and automating CI/CD workflows.
- **Automate CI/CD** – Using pipelines to streamline deployments.
- **Agents / Nodes** – Configuring distributed builds.
- **RBAC (Role-Based Access Control)** – Securing your Jenkins environment.
- **Shared Libraries** – Reusing pipeline code across projects.
- **Trivy** – Scanning Docker images for vulnerabilities.

Complete each task below and document your steps, commands, and observations in a file named `solution.md`. Finally, share your experience on LinkedIn using the provided guidelines.

---

## Challenge Tasks

### Task 1: Explore the Jenkins UI Flow
1. **Log In and Navigate:**  
   - Access your Jenkins instance hosted on AWS.
   - Explore the dashboard, job configurations, build history, and system logs.
2. **Document Your Observations:**  
   - In `solution.md`, describe the main sections of the Jenkins UI.
   - Explain how you navigate between different views (jobs, builds, plugins, etc.).

---

### Task 2: Create a Jenkins Pipeline Job for CI/CD
1. **Set Up a Pipeline Job:**  
   - Create a new Pipeline job in Jenkins.
   - Write a basic Jenkinsfile that automates the build, test, and deployment of a sample application (e.g., a simple web app).  
   - Suggested stages: **Build**, **Test**, **Deploy**.
2. **Run and Verify the Pipeline:**  
   - Trigger the pipeline and ensure each stage runs successfully.
   - Verify the execution by checking console logs and, if applicable, using `docker ps` to confirm container status.
3. **Document Your Pipeline:**  
   - In `solution.md`, include your Jenkinsfile code and explain the purpose of each stage.

---

### Task 3: Configure Jenkins Agents / Nodes
1. **Set Up an Agent:**  
   - Connect an external agent (using a VM, Docker container, or cloud instance) to your Jenkins master.
   - Configure the agent via "Manage Jenkins" → "Manage Nodes and Clouds".
2. **Assign Jobs to the Agent:**  
   - Modify your pipeline job (from Task 2) to run on the newly configured agent.
3. **Document the Process:**  
   - In `solution.md`, detail the steps taken to configure the agent.
   - Explain how job assignment to agents improves scalability and parallel execution.

---

### Task 4: Implement RBAC in Jenkins
1. **Configure Role-Based Access Control:**  
   - Set up different user roles (e.g., Admin, Developer, Viewer) using "Matrix-based security" or the Role Strategy Plugin.
2. **Test the Access Controls:**  
   - Create test user accounts and verify that each role has the appropriate permissions.
3. **Document Your Configuration:**  
   - In `solution.md`, explain your RBAC setup and its importance in securing your Jenkins environment.

---

### Task 5: Utilize Jenkins Shared Libraries
1. **Create a Shared Library:**  
   - Develop a simple Shared Library containing reusable pipeline code (e.g., a common stage for running tests or sending notifications).
   - Host the library in a separate Git repository.
2. **Integrate the Library:**  
   - Modify your Jenkinsfile from Task 2 to call functions or steps defined in your Shared Library.
3. **Document Your Implementation:**  
   - In `solution.md`, include examples of your shared library code.
   - Explain how Shared Libraries enhance maintainability and consistency in pipeline code.

---

### Task 6: Integrate Trivy for Vulnerability Scanning
1. **Add a Vulnerability Scanning Stage:**  
   - Update your Jenkins pipeline to include a stage that runs Trivy on your Docker image:
     ```groovy
     stage('Vulnerability Scan') {
         steps {
             sh 'trivy image <your-username>/sample-app:v1.0'
         }
     }
     ```
2. **Review and Save the Scan Output:**  
   - Run the pipeline and capture the Trivy output.
   - Optionally, save the output for analysis:
     ```bash
     trivy image <your-username>/sample-app:v1.0 > trivy_report.txt
     ```
3. **Document Your Findings:**  
   - In `solution.md`, summarize the key vulnerabilities, their severity, and any recommended remediation steps.
   - Reflect on how these insights can improve your image security.

---

### Task 7: Documentation and Critical Reflection
1. **Update `solution.md`:**  
   - List all commands, configuration steps, and scripts used throughout the challenge.
   - Provide detailed explanations for each task.
2. **Reflect on Jenkins in CI/CD:**  
   - Write a brief reflection on how Jenkins—with its pipelines, agents, RBAC, shared libraries, and vulnerability scanning—integrates into a modern DevOps workflow.
   - Discuss any challenges faced and lessons learned.

---

### Bonus Task: Integrate Email Notifications into Your Jenkins Pipeline
1. **Configure Email Notifications:**  
   - Ensure that your Jenkins instance is configured to send emails by setting up the SMTP server details under "Manage Jenkins" → "Configure System".
2. **Update Your Jenkinsfile:**  
   - Add a new stage to your pipeline that sends an email notification upon build completion. For example:
     ```groovy
     stage('Notify') {
         steps {
             emailext (
                 subject: "Build Notification: ${env.JOB_NAME} - Build #${env.BUILD_NUMBER}",
                 body: "The build has completed successfully. Check the details at: ${env.BUILD_URL}",
                 recipientProviders: [[$class: 'DevelopersRecipientProvider']]
             )
         }
     }
     ```
3. **Test the Notification:**  
   - Trigger your pipeline and verify that an email is sent.
4. **Document the Integration:**  
   - In `solution.md`, explain how you configured email notifications, including any challenges and how you resolved them.

---

**Troubleshooting Tips:**  
- If your pipeline fails, review the console output for error messages and use `docker logs` for container-specific issues.
- Verify agent connectivity by checking the node status in "Manage Jenkins" → "Manage Nodes and Clouds."
- For RBAC issues, ensure that user permissions are correctly configured by testing with different roles.

**Monitoring & Maintenance:**  
- Regularly check Jenkins system logs and build histories to monitor performance.
- Use Jenkins plugins such as the Monitoring Plugin to gain insights into resource usage and build metrics.

**Advanced Debugging:**  
- Add `echo` statements in your Jenkinsfile to print environment variables and intermediate outputs.
- Enable verbose logging in Jenkins (if needed) to troubleshoot complex pipeline issues.
- Consider using the "Replay" feature in Jenkins to run modified pipeline scripts without committing changes.

---

## How to Submit

1. **Push Your Final Work to GitHub:**  
   - Ensure that all files (e.g., Jenkinsfile, configuration scripts, `solution.md`, etc.) are committed and pushed to your repository.

2. **Create a Pull Request (PR):**  
   - Open a PR from your branch (e.g., `jenkins-challenge`) to the main repository.
   - **Title:**  
     ```
     Week 6 Challenge - DevOps Batch 9: Jenkins Basics & Advanced Challenge
     ```
   - **PR Description:**  
     - Summarize your approach and list key commands and configurations.
     - Include screenshots or logs as evidence of your work.

3. **Share Your Experience on LinkedIn:**  
   - Write a post summarizing your Jenkins challenge experience.
   - Include key takeaways, challenges faced, and insights (e.g., integration with Trivy, RBAC configuration, or email notifications).
   - Use the hashtags: **#90DaysOfDevOps #Jenkins #CI/CD #DevOps**
   - Optionally, provide links to your repository or blog posts detailing your journey.

---

## Additional Resources

- **[Jenkins Official Documentation](https://www.jenkins.io/doc/)**  
- **[Jenkins Pipeline Documentation](https://www.jenkins.io/doc/book/pipeline/)**  
- **[Jenkins Agents and Nodes](https://www.jenkins.io/doc/book/managing/nodes/)**  
- **[Jenkins RBAC & Role Strategy Plugin](https://plugins.jenkins.io/role-strategy/)**  
- **[Jenkins Shared Libraries](https://www.jenkins.io/doc/book/pipeline/shared-libraries/)**  
- **[Trivy Vulnerability Scanner](https://trivy.dev/latest/docs/scanner/vulnerability/)**  

---

Complete this challenge, document your journey thoroughly in `solution.md`, and share your work to demonstrate your mastery of Basics & advanced Jenkins concepts.

