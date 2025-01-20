# Day 29.5: Introduction and Overview of AWS CodePipeline

## Introduction to AWS CodePipeline
AWS CodePipeline is a fully managed continuous integration and continuous delivery (CI/CD) service that helps automate the build, test, and deployment phases of your application release process. It allows you to model and visualize your software delivery pipelines, enabling rapid and reliable application updates.

### Key Benefits of AWS CodePipeline:
1. **Automation**: Automates the entire release process, reducing manual effort and errors.
2. **Integration**: Seamlessly integrates with other AWS services like CodeBuild, CodeDeploy, and S3, as well as third-party tools.
3. **Scalability**: Handles workflows of varying sizes and complexities without any infrastructure management.
4. **Rapid Delivery**: Speeds up deployment cycles by automating workflows.

---

## Key Components of AWS CodePipeline

1. **AWS CodeBuild**:
   - A fully managed build service that compiles your source code, runs tests, and produces software packages ready for deployment.
   - Eliminates the need to provision, manage, and scale your build servers.

2. **AWS CodeDeploy**:
   - Automates application deployments to Amazon EC2 instances, Lambda functions, or on-premises servers.
   - Provides features like deployment rollback, monitoring, and health tracking.

3. **S3 Artifact Store**:
   - Stores intermediate artifacts (e.g., built packages, test results) during the pipeline execution.
   - Secure, durable, and scalable storage for pipeline outputs.

4. **CodePipeline Stages**:
   - **Source Stage**: Fetches source code from repositories (e.g., GitHub, CodeCommit).
   - **Build Stage**: Processes the code using AWS CodeBuild or a third-party service.
   - **Deploy Stage**: Deploys the application using AWS CodeDeploy or other deployment mechanisms.

---

## Task: Apply AWS CodePipeline to the Project Repository

**Repository**: [Amitabh-DevOps/Project-03-Jenkins-CI-CD-Project-Todo-node-app](https://github.com/Amitabh-DevOps/Project-03-Jenkins-CI-CD-Project-Todo-node-app)

**Branch**: `feat/awscicd`

### Steps to Create and Configure the AWS CodePipeline:

#### **1. Setup AWS S3 for Artifacts**
- Create an S3 bucket to store intermediate artifacts (e.g., build outputs and deployment packages).
- Configure the bucket:
  - Enable versioning to retain historical versions of artifacts.
  - Add an IAM policy granting CodePipeline, CodeBuild, and CodeDeploy access to the bucket.

#### **2. Create the AWS CodePipeline**
1. **Open CodePipeline Console**:
   - Navigate to the AWS Management Console → CodePipeline → **Create Pipeline**.
2. **General Settings**:
   - Name your pipeline (e.g., `Project-03-CICD-Pipeline`).
   - Choose the S3 bucket created earlier for artifact storage.
   - Ensure the pipeline has a proper IAM role with required permissions.

---

#### **3. Define the Source Stage**
- Source Provider: **GitHub**.
- Repository: `Project-03-Jenkins-CI-CD-Project-Todo-node-app`.
- Branch: `feat/awscicd`.
- Trigger: Enable webhook to automatically start the pipeline on changes.

---

#### **4. Configure the Build Stage with AWS CodeBuild**
1. **Create/Select a Build Project**:
   - **Environment**: Use a standard AWS-managed image with Node.js installed.
   - **Buildspec File**: Reference `buildspec.yml` in the repository.

2. **Sample `buildspec.yml`**:
   ```yaml
   version: 0.2
   phases:
     install:
       commands:
         - echo Installing dependencies...
         - npm install
     build:
       commands:
         - echo Building the application...
         - npm run build
     post_build:
       commands:
         - echo Packaging and uploading artifacts to S3...
         - zip -r build.zip *
         - aws s3 cp build.zip s3://<your-s3-bucket-name>/build.zip
   artifacts:
     files:
       - appspec.yml
       - build.zip
     discard-paths: yes
   ```

- The **post_build** phase uploads the build artifact (`build.zip`) and the deployment configuration file (`appspec.yml`) to the S3 bucket.

---

#### **5. Setup the Deploy Stage with AWS CodeDeploy**
1. **Deployment Configuration**:
   - Deployment Type: Select **EC2/On-Premises** or **Lambda** based on your application.
   - Deployment Group: Define target resources (e.g., EC2 instances).
   - AppSpec File: Include `appspec.yml` in the S3 artifact.

2. **Sample `appspec.yml`**:
   ```yaml
   version: 0.0
   os: linux
   files:
     - source: /build.zip
       destination: /var/www/html
   hooks:
     BeforeInstall:
       - location: scripts/install_dependencies.sh
         timeout: 300
         runas: root
     AfterInstall:
       - location: scripts/restart_server.sh
         timeout: 300
         runas: root
   ```

3. **Add Lifecycle Hooks**:
   - **BeforeInstall**: Install necessary dependencies.
   - **AfterInstall**: Restart services or validate the deployment.

---

#### **6. Test and Monitor the Pipeline**
1. Commit changes to the `feat/awscicd` branch.
2. Monitor the pipeline execution in the CodePipeline console:
   - Check artifact upload in the S3 bucket during the build phase.
   - Verify deployment to the target environment.
3. Use **CloudWatch Logs** to debug issues in CodeBuild or CodeDeploy stages.

---

#### **7. Security and Best Practices**
- Use **IAM roles** with least privilege for all AWS services.
- Store sensitive data (e.g., GitHub tokens) in **AWS Secrets Manager**.
- Enable **pipeline logging** to CloudWatch for detailed insights.


---

By completing this task, you will:
1. Gain hands-on experience with AWS CodePipeline.
2. Automate the build and deployment of a Node.js application.
3. Understand the integration of AWS CodeBuild, CodeDeploy, S3, and CodePipeline within a CI/CD pipeline.


**Happy Learning! 😊**

[← Previous Day](../day29/README.md) | [Next Day →](../day30/README.md)
