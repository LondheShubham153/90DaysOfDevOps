Week 1: Networking Challenge

1 => OSI Model & TCP/IP Model

The OSI (Open Systems Interconnection) model is a conceptual framework used to understand and standardize how different networking protocols interact and work together in computer networks. It divides the communication process into seven distinct layers, each responsible for specific aspects of communication.

Here are the seven layers of the OSI model & TCP/IP Model , starting from the bottom (physical layer) to the top (application layer):

=> Network Layer Core 

1. Physical Layer 
Function: Deals with the physical connection between devices. It is responsible for the transmission of raw data bits over a physical medium, such as cables, fiber optics, or wireless signals.
Examples: Ethernet cables, network adapters, switches, radio frequencies.

2. Data Link Layer 
Function: Provides node-to-node data transfer and handles error detection and correction. It also defines how data packets are framed for transmission.
Examples: Ethernet, Wi-Fi, MAC (Media Access Control) addresses, switches.

3. Network Layer 
Function: Responsible for routing data between devices on different networks. It determines the best path for data to travel from source to destination.
Examples: IP (Internet Protocol), routers, IP addressing.

4. Transport Layer 
Function: Ensures reliable data transfer between two devices. It is responsible for error correction, flow control, and data segmentation.
Examples: TCP (Transmission Control Protocol), UDP (User Datagram Protocol).

=> Application Level Core

5. Session Layer
Function: Manages sessions or connections between applications. It establishes, maintains, and terminates connections between applications.
Examples: NetBIOS, RPC (Remote Procedure Call).

6. Presentation Layer 
Function: Handles data formatting, encryption, and compression. It ensures that data is in a format that the receiving application can understand.
Examples: SSL/TLS (encryption), JPEG, ASCII, XML.

7. Application Layer 
Function: The top layer that directly interacts with end-user applications. It provides network services to applications, such as email, file transfer, and web browsing.
Examples: HTTP (Hypertext Transfer Protocol), FTP (File Transfer Protocol), SMTP (Simple Mail Transfer Protocol), DNS (Domain Name System).

Key Points to Remember:

Layer Interactions: Data flows down the layers on the sender's side and up the layers on the receiver's side.

Encapsulation: As data moves down the OSI model, it gets encapsulated into different headers (and sometimes trailers), with each layer adding its own specific information.

Decapsulation: When the data reaches the destination, each layer removes its corresponding header in reverse order.

The OSI model provides a standardized way of understanding and designing network protocols, ensuring interoperability between different network technologies. 
However, in practice, the OSI model is often referenced alongside the TCP/IP model, which is more commonly used in real-world networking.


TCP/IP Model

The TCP/IP model is a fundamental framework for computer networking. 
It stands for Transmission Control Protocol/Internet Protocol, which are the core protocols of the Internet. 
This model defines how data is transmitted over networks, ensuring reliable communication between devices. 
It consists of four layers: the Link Layer, the Internet Layer, the Transport Layer, and the Application Layer. 
Each layer has specific functions that help manage different aspects of network communication, making it essential for understanding and working with modern networks.


The TCP/IP Model is more simplified compared to the OSI model and consists of 4 layers. It is the foundation of the Internet and describes how communication occurs in a TCP/IP-based network.

1.Application Layer: Similar to the OSI model's application, presentation, and session layers combined. It provides application services such as email, web browsing, and file transfer. Protocols: HTTP, FTP, SMTP, DNS.

2.Transport Layer: This layer provides end-to-end communication services and error handling, much like the OSI model's transport layer. Protocols: TCP, UDP.

3.Internet Layer: Equivalent to the OSI model's network layer. It handles logical addressing, routing, and packet forwarding. Protocols: IP (IPv4, IPv6), ICMP, ARP.

4.Network Access Layer (Link Layer): Combines the OSI model's data link and physical layers. It handles how data is transmitted over the physical medium and provides device addressing and access control. Protocols: Ethernet, Wi-Fi, ARP.


2 => Protocols and Ports for DevOps

1. HTTP/HTTPS (Hypertext Transfer Protocol / Secure HTTP)
Protocol: TCP
Ports:
HTTP: Port 80
HTTPS: Port 443
Purpose: Used for communication between web servers and clients. HTTP is widely used for API calls, web services, and user interfaces, while HTTPS is the secure version that encrypts data between the client and server.

2. SSH (Secure Shell)
Protocol: TCP
Ports:
Port 22
Purpose: SSH is used to securely access and manage remote servers. DevOps teams use SSH for remote login to configure servers, deploy applications, and execute commands.

3. FTP (File Transfer Protocol)
Protocol: TCP
Ports:
FTP: Port 21
FTP Data: Port 20
Purpose: FTP is used to transfer files between systems over a network. DevOps often use FTP to upload deployment artifacts, source code, or configuration files to servers.


4. DNS (Domain Name System)
Protocol: UDP (primary), TCP (secondary for large responses)
Ports:
Port 53
Purpose: DNS is used to translate domain names into IP addresses. DevOps engineers rely on DNS for routing traffic and resolving domain names, particularly when working with Kubernetes clusters or microservices architectures.



3 => AWS EC2 (Elastic Compute Cloud)

AWS EC2 provides scalable compute capacity in the cloud, allowing you to run virtual machines (VMs) known as instances. You can use EC2 to host applications, websites, databases, and other services, with the flexibility to scale resources up or down based on demand.


AWS Security Groups
Security Groups act as virtual firewalls for EC2 instances. They control inbound and outbound traffic to EC2 instances, ensuring that only authorized traffic is allowed. Each EC2 instance can be associated with one or more Security Groups.

Key Features of Security Groups:
Stateful: If you allow inbound traffic on a port, the corresponding outbound traffic is automatically allowed, even if the outbound rule is not explicitly defined. For example, if you allow HTTP (port 80) inbound, the return traffic from the server will be allowed automatically.
Inbound and Outbound Rules: Security Groups contain rules that specify allowed inbound and outbound traffic based on:

Protocol (e.g., TCP, UDP, ICMP)

Port Range (e.g., port 80 for HTTP)

Source/Destination (e.g., specific IP addresses or CIDR blocks)

1.Default Behavior: By default, all inbound traffic is denied, but all outbound traffic is allowed. When creating a Security Group, you must explicitly define which ports and IP addresses can access your instances.

2.Multiple Security Groups: An EC2 instance can be assigned multiple Security Groups, which gives you flexibility to apply different levels of access control.

3.Security Group Associations: Security Groups are associated with ENIs (Elastic Network Interfaces) of EC2 instances, so if you modify a Security Group rule, the change will be applied instantly to all associated instances.

Security Group Rule Examples:

i.Allow HTTP traffic on port 80 from anywhere (0.0.0.0/0).

ii.Allow SSH traffic on port 22 from a specific IP address (e.g., 192.168.1.100/32).

iii.Allow traffic between instances in the same Security Group (for internal communication)


Example of Using EC2 and Security Groups Together

1.Launch an EC2 Instance:

i.Choose an instance type (e.g., t2.micro for testing).
ii.Select the operating system (e.g., Amazon Linux, Ubuntu).
iii.Configure the instance's storage and network settings (VPC, subnet, etc.).

2.Create a Security Group:

i.Allow inbound HTTP (port 80) from any IP (0.0.0.0/0).
ii.Allow inbound SSH (port 22) from your specific IP (e.g., 192.168.1.100/32).
iii.Allow all outbound traffic (default behavior).

3.Assign the Security Group to the EC2 Instance:

i.During the EC2 instance launch process, you can assign the newly created Security Group to the instance.
ii.The rules in the Security Group will dictate which traffic can reach the EC2 instance.

4.Connect to the EC2 Instance:

i.Once the EC2 instance is running, you can connect to it via SSH (using the private key if using Linux/Ubuntu).
ii.The instance will accept connections only on the ports you've specified in the Security Group (in this case, SSH and HTTP)

4 => Networking Commands Cheat Sheet

1.Ping 

A ping is a basic Internet command that allows a user to test and verify whether a given destination IP address exists and can accept requests in computer network administration. 
Ping is also used for diagnosis to confirm that the computer the user tries to reach is operational. 
Ping can be used with any operating system (OS) that supports networking, including the majority of embedded network administration software.

$ ping example.com

2.Traceout

The `traceroute` command is a network diagnostic tool used to trace the route taken by packets from a source to a destination over an IP network.
 It provides valuable insights into the network path, including the number of hops (routers) between the source and destination and the round-trip time (RTT) for each hop.

$ traceroute example.com

3.netstat

`netstat` stands for network statistics. It allows users to display network-related information and diagnose various networking issues. The command has several options that can be combined to retrieve specific details.

example 

$ netstat -a | more 

4.curl

Originally developed by Daniel Stenberg, `curl` is a command-line tool and library for transferring data with URLs. It supports a wide range of protocols, making it an invaluable tool for fetching, uploading, and managing data over the Internet. In this comprehensive guide, we delve into the intricacies of the `curl` command in Linux, exploring its features, options, and various use cases.

eg.

$ curl https://example.com

5.nslookup

Nslookup (stands for “Name Server Lookup”) is a useful command for getting information from the DNS server. It is a network administration tool for querying the Domain Name System (DNS) to obtain domain name or IP address mapping or any other specific DNS record. It is also used to troubleshoot DNS-related problems.

eg. 
$ nslookup example.com

