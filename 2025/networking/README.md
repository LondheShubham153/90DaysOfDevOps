# 🌐 Week 1 - Networking Challenge 💻

🚀In Week 1 of the 90 Days of DevOps - 2025 Edition, I focused on building a solid understanding of Networking, which is crucial for DevOps professionals. This week, I dove deep into key networking concepts, tools, and hands-on practices that are essential for a successful DevOps career. 🚀


### 1. **Understand OSI & TCP/IP Models**

#### OSI Model:
The **OSI (Open Systems Interconnection) Model** is a conceptual framework used to understand network interactions in seven layers. Here’s how each layer applies to real-world scenarios:

- **Application Layer (Layer 7)**: This is where applications and end-user processes reside. For example, **HTTP** is used by web browsers to request data from a server.
  
- **Presentation Layer (Layer 6)**: This layer is responsible for data translation, encryption, and compression. For example, **SSL/TLS** protocols work here to encrypt web traffic (HTTPS).
  
- **Session Layer (Layer 5)**: Manages sessions between applications. For example, **NetBIOS** maintains a session for file-sharing between two computers.
  
- **Transport Layer (Layer 4)**: Responsible for reliable data transfer and error correction. **TCP** and **UDP** work here; **TCP** ensures reliable delivery of packets between devices.
  
- **Network Layer (Layer 3)**: This layer determines how data is routed across networks. **IP** (Internet Protocol) is the protocol that allows devices to communicate across different networks.
  
- **Data Link Layer (Layer 2)**: This layer handles the physical addressing and error detection. **Ethernet** operates here, and devices use **MAC addresses** to communicate locally.
  
- **Physical Layer (Layer 1)**: This is the hardware layer responsible for the actual transmission of data over physical mediums. It deals with electrical signals, fiber optics, etc.

#### TCP/IP Model:
The **TCP/IP** model simplifies the OSI model into four layers:

- **Application Layer** (OSI’s Application, Presentation, and Session layers)
- **Transport Layer** (OSI’s Transport layer)
- **Internet Layer** (OSI’s Network layer)
- **Link Layer** (OSI’s Data Link and Physical layers)

### 2. **Protocols and Ports for DevOps**

Here are some commonly used protocols and their associated port numbers:

| Protocol | Port Number | Description                                 |
|----------|-------------|---------------------------------------------|
| **HTTP** | 80          | HyperText Transfer Protocol (Web Traffic)   |
| **HTTPS**| 443         | Secure HyperText Transfer Protocol (Secure Web Traffic) |
| **FTP**  | 21          | File Transfer Protocol (File Transfers)     |
| **SSH**  | 22          | Secure Shell (Remote Login)                 |
| **DNS**  | 53          | Domain Name System (Resolves Domain Names)  |
| **SMTP** | 25          | Simple Mail Transfer Protocol (Email)       |
| **IMAP** | 143         | Internet Message Access Protocol (Email Retrieval) |

#### Relevance to DevOps:
- **HTTP/HTTPS** are used for web applications and REST API communication.
- **FTP** is used for transferring files, especially in legacy systems.
- **SSH** is vital for securely accessing remote servers and managing configurations.
- **DNS** resolves domain names to IP addresses, crucial for DNS-based load balancing and service discovery in cloud environments.

### 3. **AWS EC2 and Security Groups**

#### Steps to Launch an AWS EC2 Instance and Configure Security Groups:
1. **Launch an EC2 Instance**:
    - Sign in to AWS Management Console.
    - Navigate to **EC2** and click **Launch Instance**.
    - Choose the **Amazon Linux 2** AMI (or any preferred OS).
    - Select an **Instance Type** (use the free tier, e.g., t2.micro).
    - Configure the instance details and add storage.
    - Create a new **Key Pair** for secure access to the instance.
    - Review and launch the instance.

2. **Configure Security Groups**:
    - During instance setup, create a new **Security Group** or use an existing one.
    - **Security Group Rules**:
      - **SSH (Port 22)**: Allows you to connect to the instance via SSH.
      - **HTTP (Port 80)**: Opens the HTTP port for web traffic.
      - **HTTPS (Port 443)**: Opens the HTTPS port for secure web traffic.
    - After configuring, save the Security Group and associate it with your EC2 instance.

#### Security Groups Importance:
Security Groups are vital in controlling the inbound and outbound traffic for your EC2 instances. They act as virtual firewalls, ensuring that only specific traffic can reach your instances.

### 4. **Hands-On with Networking Commands**

Here’s a cheat sheet with common networking commands:

| Command         | Description                                      | Example Usage                                     |
|-----------------|--------------------------------------------------|---------------------------------------------------|
| **ping**        | Tests connectivity between devices.              | `ping google.com`                                 |
| **traceroute**  | Traces the route packets take to reach a destination. | `traceroute google.com`                           |
| **netstat**     | Displays network connections, routing tables, and stats. | `netstat -tuln`                                   |
| **curl**        | Makes HTTP requests to test web servers.         | `curl http://example.com`                         |
| **dig / nslookup** | Queries DNS to retrieve domain information.     | `dig google.com` or `nslookup google.com`         |
