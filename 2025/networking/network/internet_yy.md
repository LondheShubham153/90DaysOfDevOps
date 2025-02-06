# AWS EC2 & Security Groups

## 🚀 Overview
Amazon EC2 (Elastic Compute Cloud) provides scalable compute capacity in the cloud, allowing users to run virtual servers. Security Groups act as virtual firewalls controlling inbound and outbound traffic to EC2 instances.

## 🏛 AWS EC2 (Elastic Compute Cloud)

### 📌 Key Features:
- **Scalability** – Launch and terminate instances on demand.
- **Elasticity** – Adjust compute power dynamically based on workload.
- **Variety of Instance Types** – Choose from a range of CPU, memory, and storage configurations.
- **Pay-As-You-Go** – Pay only for what you use.
- **Secure & Reliable** – Integrated with IAM roles and Security Groups.

### 🔧 How to Launch an EC2 Instance
1️⃣ **Login to AWS Console** → Navigate to EC2 Service.

2️⃣ **Click 'Launch Instance'** → Choose AMI (Amazon Machine Image) like Ubuntu, Amazon Linux, etc.

3️⃣ **Select Instance Type** → Choose based on vCPU, RAM, and network requirements.

4️⃣ **Configure Instance Details** → Define network, IAM roles, and auto-scaling options.

5️⃣ **Add Storage** → Define EBS (Elastic Block Store) volumes.

6️⃣ **Configure Security Group** → Allow/deny specific traffic.

7️⃣ **Assign Key Pair** → Use SSH key for secure access.

8️⃣ **Launch Instance** 🚀

## 🔐 Security Groups in AWS EC2
Security Groups (SG) act as virtual firewalls, controlling traffic at the instance level.

### 📌 Key Features:
- **Stateful Rules** – If an inbound rule allows traffic, the response is automatically allowed.
- **Inbound & Outbound Rules** – Define explicit allow rules for traffic.
- **Protocol & Port Control** – Restrict traffic to specific protocols and ports.
- **Association** – Attach multiple instances to a single Security Group.

### 🔧 How to Configure Security Groups
1️⃣ **Login to AWS Console** → Navigate to EC2 Service → Select Security Groups.

2️⃣ **Create Security Group** → Assign name and description.

3️⃣ **Define Inbound Rules** → Example:

   - Allow SSH (port 22) → Access EC2 via terminal.
     
   - Allow HTTP (port 80) → Web server access.
     
   - Allow HTTPS (port 443) → Secure web access.
     
4️⃣ **Define Outbound Rules** → Typically, all outbound traffic is allowed.

5️⃣ **Associate SG with EC2** → Apply security group to an instance.

## 🎯 Best Practices
✔ **Least Privilege Principle** – Allow only required access.
✔ **Use IAM Roles** – Avoid using SSH keys widely.
✔ **Restrict Public Access** – Open only essential ports.
✔ **Monitor & Audit Logs** – Use AWS CloudTrail & VPC Flow Logs.
✔ **Multi-Layer Security** – Combine SG with AWS WAF and NACLs.

## 📖 Resources & Examples
🔗 [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)  
🔗 [AWS Security Groups Guide](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)  
🔗 [EC2 Instance Pricing](https://aws.amazon.com/ec2/pricing/)  

## 🚀 Real-World Example
Imagine you're hosting a web application on AWS:
1️⃣ **EC2 Instance** – The server hosting your application.
2️⃣ **Security Groups** – Configured to allow HTTP(S) traffic for users and SSH access for developers.
3️⃣ **Load Balancer** – Distributes traffic across multiple instances.
4️⃣ **Auto-Scaling** – Launches additional instances based on demand.

---
✅ Next Task: [Final Review & Submission](#)
