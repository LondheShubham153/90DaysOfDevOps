this is my solution repo for week 1 
## Week 1 Networking Solution

Task 1 

Understand OSI & TCP/IP Models

Learn about the OSI and TCP/IP models, including their layers and purposes.
Task: Write examples of how each layer applies to real-world scenarios (e.g., HTTP at the Application Layer, TCP at the Transport Layer).

=================================================================================

Understanding how data travels through networks begins with conceptual frameworks like the OSI and TCP/IP models.

The OSI Model (Open Systems Interconnection)
The OSI model divides the process of communication between two networked systems into seven abstract layers:

OSI Model (7 Layers)

  Layer	Name	  Real-World Example
7	Application	  HTTP, SSH, FTP – Web browsing, file transfer
6	Presentation	SSL/TLS, JPEG – Data encryption, media formats
5	Session	      NetBIOS, RPC – Managing sessions between apps
4	Transport	    TCP, UDP – Reliable or fast data transfer
3	Network	      IP, ICMP – Routing, addressing
2	Data Link	    Ethernet, MAC – LAN communication
1	Physical	    Cables, NICs – Physical transmission of data


Physical Layer: Deals with the physical connection between devices (e.g., cables, switches).

Data Link Layer: Responsible for node-to-node data transfer and error detection (e.g., MAC addresses, Ethernet).

Network Layer: Manages data routing and addressing (e.g., IP addresses).

Transport Layer: Ensures reliable data transmission with protocols like TCP and UDP.

Session Layer: Establishes, manages, and terminates connections between applications.

Presentation Layer: Translates data formats and encrypts/decrypts information (e.g., SSL/TLS).

Application Layer: Interfaces with the end-user and supports services like HTTP, FTP, and DNS.


The TCP/IP Model

A simplified, practical model used widely in real-world networking. It consists of four layers:

| Layer | Real-World Technologies | | --- | --- | | Application | HTTP, FTP, DNS, SSH | | Transport | TCP, UDP | | Internet | IP, ICMP | | Network Access | Ethernet, Wi-Fi |

Network Access Layer: Similar to OSI’s physical and data link layers.

Internet Layer: Responsible for IP addressing and routing.

Transport Layer: Ensures reliable or fast communication.

Application Layer: Covers protocols used in everyday networking.

These models are essential for troubleshooting, network design, and understanding protocol behavior.

======================================================================================================

Task 2


Protocols and Ports for DevOps
Study the most commonly used protocols (e.g., HTTP, HTTPS, FTP, SSH, DNS) and their port numbers.
Task: Create a blog, article, GitHub page, or README listing these protocols and explaining their relevance to DevOps workflows.

 =========================================================================================

 Key Protocols and Port Numbers in DevOps
In DevOps, communication between tools, servers, and clients often happens over standardized protocols. Understanding their port numbers and roles can significantly streamline configuration and debugging tasks.

Protocol


  ---  Port	    Use Case in DevOps
HTTP	80	    Web servers, API communication
HTTPS	443	    Secure traffic for web apps and APIs
SSH	  22	     Remote server access, deployments
FTP	  20/21 	 File transfers
DNS	  53	     Domain name resolution
SMTP	25	    Sending alerts/emails from apps
MySQL	 3306	  Accessing databases
Redis	 6379	  In-memory caching, queues
DockerAPI 2375/2376	Remote Docker control

Security Tip: Always restrict access to known IPs and disable unused ports. For security, it is essential to understand which ports are exposed and ensure that only necessary ports are accessible based on the application’s need.

TAsk 3 

AWS EC2 and Security Groups
Launch an AWS EC2 instance (free tier is fine).
Learn about Security Groups, their rules, and their significance in securing cloud instances.
Task: Write a step-by-step guide or blog on how to create and configure Security Groups.

===========================================

Amazon Web Services (AWS) provides virtual servers through EC2 (Elastic Compute Cloud). Launching and securing an EC2 instance is a foundational cloud skill for DevOps engineers.

What is an EC2 Instance?
An EC2 instance is a resizable compute capacity in the cloud. It allows you to run virtual servers for hosting applications, testing environments, or deploying services.

What are Security Groups?
Security Groups act as virtual firewalls that control inbound and outbound traffic for your EC2 instances. They define which traffic is allowed to reach your instance and from where.

Best Practices:
Limit SSH (port 22) access to specific IP addresses.

Open only necessary ports (e.g., HTTP 80 or HTTPS 443 for web servers).

Use descriptive names and tags to manage access control logically.

This theoretical understanding of security groups is crucial before deploying any cloud-native service



TASK 4 

Hands-On with Networking Commands
Practice essential networking commands like:
ping (check connectivity)
traceroute / tracert (trace packet routes)
netstat (network statistics)
curl (make HTTP requests)
dig / nslookup (DNS lookup)
Task: Create a cheat sheet or short guide explaining the purpose and usage of each command.

=====================================================

 Networking Commands Every DevOps Engineer Should Know
Basic networking commands help diagnose connectivity issues and verify configurations. Here’s an overview of essential tools and their purposes:

ping:   Checks if a remote host is reachable.

traceroute/tracert: Shows the route packets take to reach a host.

netstat: Displays active network connections and listening ports.

curl: Performs HTTP requests from the command line.

dig/nslookup: Performs DNS queries and verifies name resolution.

Familiarity with these commands enhances troubleshooting capabilities and supports more effective incident response.



