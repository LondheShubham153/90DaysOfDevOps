
Step-by-Step Guide to Launch and Secure an AWS EC2 Instance with Security Groups

Launching an EC2 instance on AWS is the first step in using cloud computing. However, security is paramount when deploying your instance. Security Groups act as a virtual firewall to control the inbound and outbound traffic to your EC2 instances. In this blog, we’ll cover how to launch an EC2 instance and configure Security Groups for securing your instance.

Part 1: Launching an EC2 Instance on AWS

Step 1: Log in to AWS Management Console

Go to the AWS Management Console.

Enter your AWS credentials (username and password).

Navigate to the EC2 dashboard.

Step 2: Choose an Amazon Machine Image (AMI)

Click on Launch Instance.

Add name for the Instance.

Select an AMI (for instance, Amazon Linux 2 or Ubuntu Server).

Step 3: Select Instance Type

Choose an instance type. The instance type determines the hardware of your instance (CPU, memory, etc.).

For testing or small applications, you can choose t2.micro (eligible for the free tier).

Click Next: Configure Instance Details.

Step 4: Add Key Pair

Click on New Key Pair.

Add the details Key Pair Name, Key Pari Type, Private Key File Type

Click on Create Key Pair.

Step 5: Configure Security Group (Create a New One)


Part 2: Understanding and Configuring Security Groups

A Security Group acts as a firewall for your EC2 instance. It controls inbound and outbound traffic, allowing you to specify what traffic can reach your instance. A security group is stateful, meaning that if you allow inbound traffic, the response traffic is automatically allowed.

Security Group Rules

Inbound Rules: Control what incoming traffic is allowed to reach your instance.

Outbound Rules: Control what outgoing traffic is allowed from your instance to other destinations.

Step 6: Create a New Security Group

Add Inbound Rule:

Click Add Rule.

Select a Type of rule (e.g., SSH for Linux, RDP for Windows).

Set the Port Range (for SSH, it’s typically port 22).

Set Source to My IP to allow SSH access from only your current IP address, or use Anywhere (0.0.0.0/0) to allow SSH access from any location (not recommended for production environments).

Note: Open only necessary ports. For example, for a web server, you may want to open port 80 (HTTP) or 443 (HTTPS).

Add Outbound Rule (optional):

By default, all outbound traffic is allowed. If needed, you can restrict outbound traffic by setting specific rules.

After configuring the security group, click Review and Launch.

Step 7: Configure the Storage

Add the Storage Size.

Step 8: Review the Summery and Click on Launch Instance.

Step 9: Wait for Instance Initialize.

Go to the Instances Dashboard and wait for the instance to reach the running state.

You’ll see the instance initializing.

Step 10:Check the Instance Public Id.

Copy the Public IP and paste it into your browser:

  http://<public_ip_address>

Conclusion

By following these steps, you’ve successfully launched an EC2 instance on AWS and configured its security group to secure the instance’s traffic. Security Groups provide the essential capability to define and restrict network access to your EC2 instances, ensuring your cloud resources are protected.

Remember, security is an ongoing process, and keeping security groups up to date is essential to ensure your cloud environment remains safe from unauthorized access. Always adhere to the principle of least privilege and minimize exposure to only the traffic needed for your applications to function.

Happy cloud computing!
