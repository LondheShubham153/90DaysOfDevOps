**Task 3: AWS EC2 and Security Groups**

### Understanding AWS EC2 and Security Groups
Amazon EC2 (Elastic Compute Cloud) is a service that provides scalable computing capacity in the cloud. Security Groups act as virtual firewalls, controlling inbound and outbound traffic for EC2 instances.

### Step-by-Step Guide to Launch an EC2 Instance and Configure Security Groups

#### **1. Sign in to AWS Console**
- Go to [AWS Management Console](https://aws.amazon.com/console/).
- Navigate to the **EC2 Dashboard**.

#### **2. Launch a New EC2 Instance**
- Click **Launch Instance**.
- Choose **Amazon Linux 2** or **Ubuntu** as the operating system.
- Select **t2.micro** (Free tier eligible).
- Configure the instance settings as required.

#### **3. Configure Security Groups**
Security Groups define the allowed traffic to and from your EC2 instance.

- Create a new Security Group or use an existing one.
- Set inbound rules:
  - **SSH (Port 22):** Allow only your IP for secure remote access.
  - **HTTP (Port 80):** Allow access if running a web server.
  - **HTTPS (Port 443):** Allow secure web traffic.
- Set outbound rules to allow all traffic (default setting).

#### **4. Launch and Connect to the Instance**
- Click **Launch** and select/create a key pair (.pem file) for SSH access.
- Use SSH to connect:
  ```sh
  ssh -i your-key.pem ec2-user@your-instance-ip
  ```
- Verify security settings:
  ```sh
  netstat -tulnp
  ```

#### **5. Modify Security Groups as Needed**
- Go to **EC2 Dashboard** → **Security Groups**.
- Edit inbound/outbound rules based on application requirements.

### Best Practices for Security Groups
- **Limit SSH access** to specific IPs instead of open access (0.0.0.0/0).
- **Use IAM roles** for access control instead of opening unnecessary ports.
- **Enable CloudWatch logs** to monitor and analyze traffic patterns.

By following these steps, you can securely launch and manage EC2 instances with properly configured Security Groups.

