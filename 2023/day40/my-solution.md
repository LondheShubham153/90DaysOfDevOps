# Day 40 AWS EC2 Automation ☁
AWS

I hope your journey with AWS cloud and automation is going well

😍
Automation in EC2:
Amazon EC2 or Amazon Elastic Compute Cloud can give you secure, reliable, high-performance, and cost-effective computing infrastructure to meet demanding business needs.

Also, if you know a few things, you can automate many things.

Read from here

Launch template in AWS EC2:
You can make a launch template with the configuration information you need to start an instance. You can save launch parameters in launch templates so you don't have to type them in every time you start a new instance.
For example, a launch template can have the AMI ID, instance type, and network settings that you usually use to launch instances.
You can tell the Amazon EC2 console to use a certain launch template when you start an instance.
Read more from here

Instance Types:
Amazon EC2 has a large number of instance types that are optimised for different uses. The different combinations of CPU, memory, storage and networking capacity in instance types give you the freedom to choose the right mix of resources for your apps. Each instance type comes with one or more instance sizes, so you can adjust your resources to meet the needs of the workload you want to run.

Read from here

AMI:
An Amazon Machine Image (AMI) is an image that AWS supports and keeps up to date. It contains the information needed to start an instance. When you launch an instance, you must choose an AMI. When you need multiple instances with the same configuration, you can launch them from a single AMI.

Task1:
Create a launch template with Amazon Linux 2 AMI and t2.micro instance type with Jenkins and Docker setup (You can use the Day 39 User data script for installing the required tools.

Create 3 Instances using Launch Template, there must be an option that shows number of instances to be launched ,can you find it? :)

You can go one step ahead and create an auto-scaling group, sounds tough?

# [Blog link here](https://devxblog.hashnode.dev/automating-aws-ec2-for-efficiency-and-scalability)
