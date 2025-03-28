# **Networking In One Shot**

## **What is Networking**

`Networking is the process of building and managing Connections.` Imagine you have laptop and mobile. How will you transfer data? Using Wifi or a Cable... The Cable and Wifi is Networking. Yes, You heard it right. 

It is not just limited to Computer Science. Networking in real life is making friends, being close to relatives. 

**Example:** You are playing a game but you are not connecting to the game. You check the Wifi Signals but it is like `No Network`, It means the thread is broken and you can't connect to the game. Thread is the connection from your mobile to game. 

## **Why is Networking Important?**

- **Troubleshooting:** The Server is not being connected to Database. Maybe there is a network Issue. You can identify with certain Networking Framework that what is wrong?

- **Communication:** One Server is not sharing data to the other. Using Commands you can identify that is firewall giving connection.

- **Security:** Blocking certain people who spread racism on Facebook to access facebook. It is just because of Networking. They are added in the block list...

## **Networking For Everyone**

- [Networking Architecture](#networking-architecture)
- [OSI Model](#osi-model)
- [TCP/IP Model](#tcpip-model)
- [TCP/IP VS OSI Model](#tcpip-vs-osi-model)
- [Routers and Switches](#routers-and-switches)
- CIDR Notations
- MAC Addresses
- Firewall

## **Networking Concepts**

### **Networking Architecture**

This Data Center Networking Architecture Explains Networking

![Networking Architecture](./images/Data%20Center%20Networking%20Architecture.png)

---

### **OSI Model**

`OSI - Open Systems Interconnection Model` is framework designed to define on how things are served onto the Internet. It is served using certain Protocols or maybe Rules and Regulations. It is divided into 7 Layers...

![Networking Architecture](./images/OSI%20Model.jpg)

#### **Layer 7 - Application Layer**

- **Purpose:** Application Connected to the Internet. 
- **Example:** You type [`google.com`](https://www.google.com) and it appears. (HTTP/HTTPS)

#### **Layer 6 - Presentation Layer**

- **Purpose:** Translates data that apps Understand (Security/Encryption)
- **Example:** Using SSL/TTLS before connection to the server

#### **Layer 5 - Session Layer**

- **Purpose:** Manage Connections (Start/STOP/Pause/Resume)
- **Example:** You remain on google until you close it. You can connect to Cloud Server if you have SSH with the Keys.

#### **Layer 4 - Transport Layer**

- **Purpose:** Ensures that data transfers safely
- **Example:** TCP/UDP Ensures that Live Streams and Videos on Youtube don't get into errors or issues.

**TCP and UDP**

- `TCP - Transmission Control Protocol` ensures that data arrives safely using packets of data slowly and steadily. `Youtube Video Uploading.`
- `UDP - User Datagram Protocol` ensures that data is transferred seamlessly might be with error with faster speed. `Youtube Live Streams.`

#### **Layer 3 - Network Layer**

- **Purpose:** Routing Data Across the Networking using IP address.
- **Example:** AWS VPC Routing traffic in different Subnets.

#### **Layer 2 - Data Link Layer**

- **Purpose:** Moves data between same devices in the network.
- **Example:** Switch connecting laptop to the server

#### **Layer 1 - Physical Layer**

- **Purpose:** Raw Bits and Bytes sending over Cables (Wifi)
- **Example:** Ethernet Cable Connecting to your server to network

---

### **TCP/IP Model**

![Networking Architecture](./images/TCPIP%20Model.png)

#### **Layer 4 - Application Layer**

`Combination of Layer 5-7 in OSI Model`

- **Example:** Maintaining Connection to the Application using SSH with Security SSL/TLS and using DNS to route to google.com

#### **Layer 3 - Transport Layer**

- **Example:** TCP and UDP serving Youtube Videos and Youtube Live Streams

#### **Layer 2 - Internet Layer**

- **Example:** Routing Traffic on the Networking Using IP Addresses and Subnets

#### **Layer 1 - Link Layer**

`Combination of Layer 1-2 in OSI Model`

- **Example:** MAC Addresses and Ethernet Cables connecting to the Internet

---

### **TCP/IP vs OSI Model**

![TCP Vs OSI](/images/OSI%20vs%20TCP.webp)

---

### **Routers and Switches**

- **Router:** Router is used to connect the Networking (Nodes) to the outer World i.e Internet.
- **Switches:** Switches are used to Connect Devices within the Networking. One device to another.

![Routers and Switches](/images/switch-and-router.jpg)

---

### CIDR Notations

`CIDR - Classless Inter-Domain Routing`

It is a way to divide IP Addresses into smaller parts. 

**What is IP (Internet Prtocol)?**

IP which is used as a identification for Devices in a certain Inetenet. 

192.168.18.123 or 10.1.0.24

**Example:**

192.168.1.0/24 = A subnet with IPs from 192.168.1.1 to 192.168.1.254.

/24 means the first 24 bits are fixed (like a ZIP code), and the last 8 bits can vary (like house numbers).

---

### MAC Address (Media Access Control)

**What it is:** A unique ID for your device’s network card (like a toy’s serial number).

**Example:** 00:1A:2B:3C:4D:5E (hexadecimal format).

**Why DevOps (Sort of) Cares:**

- **Local Networks:** Switches use MAC addresses to direct traffic within the same subnet (Layer 2).

- **Containers:** Docker creates virtual MACs for containers in bridge networks.

- **Troubleshooting:** If two devices have the same MAC, the network gets confused (like twins swapping names!).

---

### **Firewall**