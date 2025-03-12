# ☁️ AWS EC2 & Security Groups

## 📌 Overview
Amazon Elastic Compute Cloud (EC2) provides scalable computing power in the AWS Cloud. Security Groups act as virtual firewalls to control inbound and outbound traffic.

---

## 🖥 **Launching an AWS EC2 Instance**

### ✅ Steps to Launch an EC2 Instance
1. **Login to AWS Console** ➝ Navigate to EC2 Dashboard.
2. **Click on "Launch Instance"** ➝ Choose an Amazon Machine Image (AMI) (e.g., Ubuntu, Amazon Linux).
3. **Select an Instance Type** ➝ Choose based on required CPU, RAM, and storage.
4. **Configure Instance Details** ➝ Define networking, IAM roles, and monitoring.
5. **Add Storage** ➝ Specify the storage type (e.g., EBS, Instance Store).
6. **Configure Security Group** ➝ Set up inbound/outbound rules.
7. **Assign Key Pair** ➝ Create/download a key pair for SSH access.
8. **Launch the Instance** ➝ Wait for provisioning, then connect via SSH.

### 🚀 Example: Connecting to an EC2 Instance
```sh
ssh -i my-key.pem ec2-user@your-ec2-instance-public-ip
```

---

## 🔐 **Security Groups in AWS**
### ✅ What are Security Groups?
- Security Groups act as virtual firewalls controlling inbound and outbound traffic.
- They operate at the **instance level**, unlike Network ACLs (which operate at the subnet level).

### ✅ Configuring Security Groups
1. **Allowing SSH Access** (Restrict to your IP for security)
   - Protocol: **TCP**
   - Port: **22**
   - Source: **My IP**
2. **Allowing HTTP/HTTPS Traffic** (For web servers)
   - Protocol: **TCP**
   - Port: **80 (HTTP)**, **443 (HTTPS)**
   - Source: **Anywhere (0.0.0.0/0)**
3. **Database Access** (Only for specific IPs)
   - Protocol: **TCP**
   - Port: **3306 (MySQL), 5432 (PostgreSQL)**
   - Source: **Specific IP (e.g., 192.168.1.10/32)**

---

## 🔍 **Real-World Analogy**
- Think of **EC2 instances** as apartments in a gated community.
- **Security Groups** are like security guards who check who is allowed in or out.
- You set rules to permit only certain visitors (ports) for safety and control.

---

## 📚 **Additional Resources**
🔗 [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)  
🔗 [AWS Security Groups Explained](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/security-groups.html)  
🔗 [Best Practices for Security Groups](https://aws.amazon.com/premiumsupport/knowledge-center/best-practices-security-groups/)

---

## 🏁 **Conclusion**
AWS EC2 instances provide scalable computing power, while Security Groups ensure controlled access to cloud resources. By configuring Security Groups correctly, DevOps engineers can protect applications and infrastructure, reducing exposure to security threats.
