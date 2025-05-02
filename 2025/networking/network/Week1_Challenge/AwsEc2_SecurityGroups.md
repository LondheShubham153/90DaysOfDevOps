# 🚀 AWS EC2 & Security Groups  

## 📌 Overview  
Amazon EC2 (Elastic Compute Cloud) provides scalable virtual servers in the AWS cloud. **Security Groups** act as firewalls, **controlling inbound and outbound traffic** to and from instances.  

---

## 🌟 **Step-by-Step Guide to Launch an EC2 Instance**  

1️⃣ **Login to AWS Console** → Navigate to the **EC2 Dashboard**.
  
2️⃣ **Click "Launch Instance"** → Choose **Amazon Machine Image (AMI)** (e.g., Ubuntu, Amazon Linux).
  
3️⃣ **Select Instance Type** → Choose **t2.micro** (Free Tier eligible). 
 
4️⃣ **Configure Instance Details** → Add VPC, Subnet, IAM Role if required. 
 
5️⃣ **Add Storage** → Define volume size and type.  

6️⃣ **Configure Security Group** → Manage inbound and outbound rules.  

7️⃣ **Review & Launch** → Use an existing **Key Pair** or create a new one for SSH access.  

8️⃣ **Connect to Instance** → Use SSH:  
   ```bash
   ssh -i "your-key.pem" ubuntu@your-ec2-public-ip
   ```

---

## 🔐 **Understanding AWS Security Groups**  

📌 **Security Groups** control inbound/outbound traffic based on rules. They act as **stateful firewalls**, allowing or denying access to EC2 instances.  

### **🔥 Inbound Rules (Incoming Traffic)**
| **Protocol** | **Port** | **Source** | **Purpose** |
|-------------|---------|-----------|-------------|
| **SSH**     | 22      | My IP     | Secure remote access |
| **HTTP**    | 80      | 0.0.0.0/0 | Web server access |
| **HTTPS**   | 443     | 0.0.0.0/0 | Secure web access |
| **MySQL**   | 3306    | Custom IP | Database connection (Limit to backend only) |
| **RDP**     | 3389    | Custom IP | Remote Desktop for Windows instances |
| **PostgreSQL** | 5432 | Custom IP | Database access |

### **🚀 Outbound Rules (Outgoing Traffic)**
By default, **all outbound traffic is allowed**.

---

## 🎯 **Best Practices for Security Groups**
💚 **Follow Least Privilege Principle** – Open only necessary ports.  

💚 **Restrict SSH (Port 22) Access** – Allow only **your IP** instead of `0.0.0.0/0`.  

💚 **Use IAM Roles for Permissions** – Instead of allowing public access. 
 
💚 **Monitor Traffic** – Enable **AWS CloudTrail & VPC Flow Logs**.  

💚 **Regularly Audit Security Groups** – Remove unused rules.  

💚 **Use Network ACLs** – For an additional layer of security.  

---

## 🔍 **How to Modify Security Groups?**
### **📌 Adding a New Rule**
1️⃣ Go to **AWS EC2 Dashboard → Security Groups**.  

2️⃣ Select the Security Group associated with your instance. 
 
3️⃣ Click on **Inbound Rules → Edit**.  

4️⃣ **Add a New Rule** (e.g., Allow **Port 443 for HTTPS**). 
 
5️⃣ Click **Save**.  

### **📌 Deleting Unused Rules**
- Identify **unused ports** and remove unnecessary access.  

---

## 📚 Additional Resources  

🔗 [AWS EC2 Documentation](https://docs.aws.amazon.com/ec2/)  

🔗 [Security Groups Best Practices](https://aws.amazon.com/premiumsupport/knowledge-center/ec2-security-group-best-practices/)  

🔗 [AWS Key Pair for SSH](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)  

🔗 [VPC Flow Logs](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html)  

🔗 [AWS Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)  

---

💪 **Task Completed!** 🚀  

📌 **GitHub Repository:** [90 Days of DevOps - Network](https://github.com/Kisalaykisu/90DaysOfDevOps/tree/master/2025/networking/network)  
💡 *Contributions are welcome! Feel free to raise an issue or PR.*  

🚀 **Happy Cloud Learning!** 🎉
