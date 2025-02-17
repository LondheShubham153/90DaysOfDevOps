Understanding Of Networking: The OSI and TCP/IP Models


Data communication is a process or act in which we can send or receive data. Understanding the fundamental structures of networking is crucial for anyone working with computer systems and communication. For data communication two models are available, the OSI (Open Systems Interconnection) Model, and the TCP/IP (Transmission Control Protocol/Internet Protocol) Model.
These models work as frameworks for organizing and understanding how data moves from one device to another across networks. While both models aim to achieve similar goals, they differ in their approach, layer organization, and practical application within computer networking. We will discuss these two models in this article and also see the differences between the two models.

OSI Model
 
The data flow in the OSI (Open Systems Interconnection) model describes how data is transmitted from one device to another through the seven layers of the OSI model. This process involves encapsulation and decapsulation at each layer to ensure proper data transmission and reception.

The data flow in the OSI model involves encapsulating data at each layer on the sender side, transmitting it over the network, and decapsulating it at each layer on the receiver side to ensure the data reaches its intended destination correctly and reliably.

1.	Physical Layer: Deals with the physical connection between devices, including cables and signals.
2.	Data Link Layer: Provides node-to-node data transfer and error detection/correction.
3.	Network Layer: Manages the routing of data across different networks.
4.	Transport Layer: Ensures complete data transfer and reliability, providing error recovery and flow control.
5.	Session Layer: Manages sessions between applications, facilitating communication.
6.	Presentation Layer: Transforms data into a format that the application layer can use, handling data encryption and translation.
7.	Application Layer: The interface for end-user services and applications, where user interaction occurs.
The OSI model provides a universal language for networking professionals, helping them diagnose and resolve issues at various layers of the communication process.
TCP/IP Model
 
The TCP/IP model is a fundamental framework for computer networking. It stands for Transmission Control Protocol/Internet Protocol, which are the core protocols of the Internet. This model defines how data is transmitted over networks, ensuring reliable communication between devices. It consists of four layers: the Link Layer, the Internet Layer, the Transport Layer, and the Application Layer. Each layer has specific functions that help manage different aspects of network communication, making it essential for understanding and working with modern networks.
The main work of TCP/IP is to transfer the data of a computer from one device to another. The main condition of this process is to make data reliable and accurate so that the receiver will receive the same information which is sent by the sender. To ensure that, each message reaches its final destination accurately, the TCP/IP model divides its data into packets and combines them at the other end, which helps in maintaining the accuracy of the data while transferring from one end to another end.

How Does the TCP/IP Model Work?
Whenever we want to send something over the internet using the TCP/IP Model, the TCP/IP Model divides the data into packets at the sender’s end and the same packets have to be recombined at the receiver’s end to form the same data, and this thing happens to maintain the accuracy of the data. TCP/IP model divides the data into a 4-layer procedure, where the data first go into this layer in one order and again in reverse order to get organized in the same way at the receiver’s end.
Layers of TCP/IP Model
The diagrammatic comparison of the TCP/IP and OSI model is as follows:
 
Layers of TCP/IP Model

1. Network Access Layer
It is a group of applications requiring network communications. This layer is responsible for generating the data and requesting connections. It acts on behalf of the sender and the Network Access layer on the behalf of the receiver. During this article, we will be talking on the behalf of the receiver.
The packet’s network protocol type, in this case, TCP/IP, is identified by network access layer. Error prevention and “framing” are also provided by this layer. Point-to-Point Protocol (PPP) framing and Ethernet IEEE 802.2 framing are two examples of data-link layer protocols.

2. Internet or Network Layer
This layer parallels the functions of OSI’s Network layer. It defines the protocols which are responsible for the logical transmission of data over the entire network. The main protocols residing at this layer are as follows:
•	IP:IP stands for Internet Protocol and it is responsible for delivering packets from the source host to the destination host by looking at the IP addresses in the packet headers. IP has 2 versions: IPv4 and IPv6. IPv4 is the one that most websites are using currently. But IPv6 is growing as the number of IPv4 addresses is limited in number when compared to the number of users.
•	ICMP:ICMP stands for Internet Control Message Protocol. It is encapsulated within IP datagrams and is responsible for providing hosts with information about network problems.
•	ARP:ARP stands for Address Resolution Protocol. Its job is to find the hardware address of a host from a known IP address. ARP has several types: Reverse ARP, Proxy ARP, Gratuitous ARP, and Inverse ARP.
The Internet Layer is a layer in the Internet Protocol (IP) suite, which is the set of protocols that define the Internet. The Internet Layer is responsible for routing packets of data from one device to another across a network. It does this by assigning each device a unique IP address, which is used to identify the device and determine the route that packets should take to reach it.
Example: Imagine that you are using a computer to send an email to a friend. When you click “send,” the email is broken down into smaller packets of data, which are then sent to the Internet Layer for routing. The Internet Layer assigns an IP address to each packet and uses routing tables to determine the best route for the packet to take to reach its destination. The packet is then forwarded to the next hop on its route until it reaches its destination. When all of the packets have been delivered, your friend’s computer can reassemble them into the original email message.
In this example, the Internet Layer plays a crucial role in delivering the email from your computer to your friend’s computer. It uses IP addresses and routing tables to determine the best route for the packets to take, and it ensures that the packets are delivered to the correct destination. Without the Internet Layer, it would not be possible to send data across the Internet.

3. Transport Layer
The TCP/IP transport layer protocols exchange data receipt acknowledgments and retransmit missing packets to ensure that packets arrive in order and without error. End-to-end communication is referred to as such. Transmission Control Protocol (TCP) and User Datagram Protocol are transport layer protocols at this level (UDP).
•	TCP: Applications can interact with one another using TCP as though they were physically connected by a circuit. TCP transmits data in a way that resembles character-by-character transmission rather than separate packets. A starting point that establishes the connection, the whole transmission in byte order, and an ending point that closes the connection make up this transmission.
•	UDP: The datagram delivery service is provided by UDP , the other transport layer protocol. Connections between receiving and sending hosts are not verified by UDP. Applications that transport little amounts of data use UDP rather than TCP because it eliminates the processes of establishing and validating connections.

4. Application Layer
This layer is analogous to the transport layer of the OSI model. It is responsible for end-to-end communication and error-free delivery of data. It shields the upper-layer applications from the complexities of data. The three main protocols present in this layer are:
•	HTTP and HTTPS:HTTP stands for Hypertext transfer protocol. It is used by the World Wide Web to manage communications between web browsers and servers. HTTPS stands for HTTP-Secure. It is a combination of HTTP with SSL(Secure Socket Layer). It is efficient in cases where the browser needs to fill out forms, sign in, authenticate, and carry out bank transactions.
•	SSH:SSH stands for Secure Shell. It is a terminal emulations software similar to Telnet. The reason SSH is preferred is because of its ability to maintain the encrypted connection. It sets up a secure session over a TCP/IP connection.
•	NTP:NTP stands for Network Time Protocol. It is used to synchronize the clocks on our computer to one standard time source. It is very useful in situations like bank transactions. Assume the following situation without the presence of NTP. Suppose you carry out a transaction, where your computer reads the time at 2:30 PM while the server records it at 2:28 PM. The server can crash very badly if it’s out of sync.
Most Commonly Used Protocols and Their Port Numbers: A DevOps Perspective
In the world of DevOps, understanding the protocols and their associated port numbers is crucial for ensuring smooth communication, security, and efficiency within development, testing, and production environments. Below is an overview of some of the most commonly used protocols in DevOps workflows, their associated port numbers, and how they fit into the DevOps lifecycle.

1. HTTP (HyperText Transfer Protocol)
•	Port Number: 80
•	Description: HTTP is the foundation of data communication on the World Wide Web. It is used for transferring hypertext documents, including HTML pages, images, and other media between clients (browsers) and servers.
•	Relevance to DevOps: HTTP is often used in testing and deployment pipelines for web applications. Understanding HTTP traffic is essential for setting up web servers, routing traffic, and debugging web applications.

2. HTTPS (Hypertext Transfer Protocol Secure)
•	Port Number: 443
•	Description: HTTPS is the secure version of HTTP, where communications are encrypted using SSL/TLS to protect data integrity and confidentiality.
•	Relevance to DevOps: HTTPS is critical in DevOps workflows for secure communication between services and users. Secure deployment and monitoring of web applications, ensuring that data is encrypted during transit, are key parts of the DevOps pipeline.

3. FTP (File Transfer Protocol)
•	Port Numbers:
•	FTP Data: 20
•	FTP Control: 21
•	Description: FTP is used for transferring files between a client and server over a TCP/IP network. It allows users to upload, download, and manage files on remote systems.
•	Relevance to DevOps: FTP can be used in the deployment phase for transferring artifacts, such as build packages or deployment scripts, between systems. However, due to security concerns, it’s often replaced by more secure protocols like SFTP.

4. SFTP (Secure File Transfer Protocol)
•	Port Number: 22
•	Description: SFTP is a secure version of FTP that operates over SSH (Secure Shell). It encrypts both data and commands, ensuring secure file transfers.
•	Relevance to DevOps: SFTP is crucial for securely transferring build artifacts, logs, and configuration files during the deployment and configuration management stages. It is often used in combination with automation tools like Ansible or Terraform.

5. SSH (Secure Shell)
•	Port Number: 22
•	Description: SSH is a cryptographic network protocol used for securely accessing remote systems over a network. It provides a secure channel for logging into remote servers and executing commands.
•	Relevance to DevOps: SSH is essential in DevOps for automating tasks such as server provisioning, remote management, and automation scripts. Tools like Ansible, Puppet, and Chef rely on SSH for remote task execution on servers.

6. DNS (Domain Name System)
•	Port Numbers:
•	DNS Queries: 53 (UDP)
•	DNS Zone Transfers: 53 (TCP)
•	Description: DNS is responsible for translating human-readable domain names (e.g., example.com) into machine-readable IP addresses.
•	Relevance to DevOps: DNS is vital for ensuring services are correctly routed within a network. In DevOps, DNS configuration is essential during the deployment and scaling of applications, as services need to be discoverable by name. Ensuring that DNS records are set up correctly is critical when configuring environments or orchestrating microservices.

7. SMTP (Simple Mail Transfer Protocol)
•	Port Numbers:
•	SMTP: 25
•	SMTP (Secure): 465 (SSL), 587 (TLS)
•	Description: SMTP is the protocol used to send emails between servers. It is the foundation for sending messages in most email systems.
•	Relevance to DevOps: SMTP can be useful in DevOps for alerting or notification systems, where emails are sent as part of build failures, deployment progress, or other automated notifications.

8. IMAP (Internet Message Access Protocol)
•	Port Numbers:
•	IMAP: 143
•	IMAPS (secure): 993
•	Description: IMAP is used for retrieving and storing email on a remote server. It allows users to view and manipulate emails without downloading them.
•	Relevance to DevOps: While not directly part of the core DevOps toolchain, IMAP can be integrated into automated notification systems to send detailed logs or status updates, particularly for deployment or testing results.

9. RDP (Remote Desktop Protocol)
•	Port Number: 3389
•	Description: RDP allows users to connect to a Windows-based machine and interact with its graphical interface remotely.
•	Relevance to DevOps: While not typically used in automation, RDP is useful for troubleshooting and managing Windows-based systems. For DevOps teams working with mixed environments (Linux and Windows), RDP can provide access to Windows VMs for configuration or diagnostics.

10. MySQL (Database Protocol)
•	Port Number: 3306
•	Description: MySQL is an open-source relational database management system (RDBMS) that uses a client-server protocol for querying and managing data.
•	Relevance to DevOps: MySQL is widely used in applications, and DevOps teams must be familiar with setting up, configuring, and scaling MySQL databases as part of their infrastructure automation. Port 3306 is crucial for managing database connectivity within services.

11. Git (Git Version Control)
•	Port Numbers:
•	Git HTTP: 80/443
•	Git SSH: 22
•	Description: Git is a distributed version control system that allows developers to track changes in code, collaborate, and manage source code across multiple contributors.
•	Relevance to DevOps: Git is foundational to the CI/CD pipeline. Developers use Git to store and manage code, and DevOps engineers use it to automate build processes and deployments via integrations with CI tools like Jenkins, GitLab CI, or Circle CI.

12. LDAP (Lightweight Directory Access Protocol)
•	Port Number: 389
•	Description: LDAP is used to access and maintain distributed directory information services, such as user authentication and authorization within an organization.
•	Relevance to DevOps: LDAP is commonly used in enterprise environments for identity management, integrating with CI/CD tools and version control systems to manage user roles and permissions.

Conclusion
These protocols play a critical role in a DevOps environment. From version control (Git) to secure remote management (SSH), each protocol enables seamless communication between systems, ensuring that automation, continuous integration, continuous delivery, and system security all function smoothly. Knowing how each protocol works and understanding their relevant port numbers is essential for DevOps teams to troubleshoot, optimize workflows, and maintain secure and efficient systems.
By understanding these protocols and their relevance to the DevOps lifecycle, teams can build robust, scalable systems that align with best practices for security, automation, and collaboration.


