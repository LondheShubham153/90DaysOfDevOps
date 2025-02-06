# 🌍 OSI & TCP/IP Models

📌 **Overview**  
The **OSI (Open Systems Interconnection) Model** and the **TCP/IP Model** provide structured frameworks for network communication. These models help understand how data moves from one device to another across a network.

---

## 📊 OSI Model (7 Layers)

| **Layer**        | **Function**                                 | **Example**                      |
|-----------------|--------------------------------------------|----------------------------------|
| **7. Application**  | End-user interaction with network services | HTTP, FTP, SMTP                 |
| **6. Presentation** | Data translation, encryption, compression | SSL/TLS, JPEG, ASCII            |
| **5. Session**     | Establishing and managing connections    | NetBIOS, RPC, SQL Sessions      |
| **4. Transport**   | Ensuring reliable transmission           | TCP (reliable), UDP (fast)      |
| **3. Network**     | Routing and addressing                   | IP, ICMP, ARP                   |
| **2. Data Link**   | Error detection, MAC addressing         | Ethernet, Wi-Fi (802.11)        |
| **1. Physical**    | Hardware transmission of bits           | Cables, Switches, Fiber Optics  |

---

## 🏛 TCP/IP Model (4 Layers)

| **Layer**        | **Function**                  | **OSI Equivalent**   | **Example**            |
|-----------------|-----------------------------|---------------------|------------------------|
| **4. Application**  | End-user applications      | Application, Presentation, Session | HTTP, DNS, SMTP       |
| **3. Transport**    | Reliable communication     | Transport          | TCP, UDP               |
| **2. Internet**     | Routing and addressing    | Network            | IP, ICMP, ARP          |
| **1. Network Access** | Data transmission       | Data Link + Physical | Ethernet, Wi-Fi        |

---

## 🌟 Real-World Examples

🔹 **Application Layer (HTTP/HTTPS)**  
   - Browsing websites using **Google Chrome** (HTTP/S)  
   - Sending an **email via Gmail** (SMTP, IMAP, POP3)  

🔹 **Transport Layer (TCP/UDP)**  
   - **TCP:** Ensures reliable file transfers using FTP  
   - **UDP:** Used in online gaming & video streaming (low latency)  

🔹 **Network Layer (IP Routing)**  
   - When accessing a website, IP packets route data through different networks.  

🔹 **Data Link Layer (MAC Addresses & Ethernet)**  
   - Your router assigns a **MAC address** for device communication.  

🔹 **Physical Layer (Hardware Communication)**  
   - Using **fiber optics** or **Wi-Fi signals** to transmit data.  

---

## 🎯 Why Understanding OSI & TCP/IP Models is Important?
✅ Helps troubleshoot **networking issues** efficiently.  
✅ Guides **firewall and security configurations**.  
✅ Essential for **cloud engineers & DevOps** working with AWS, Azure, and Kubernetes.  

---

## 📖 Additional Resources

🔗 [OSI Model Explained](https://www.cloudflare.com/learning/ddos/glossary/open-systems-interconnection-model-osi/)  
🔗 [TCP/IP Protocol Suite](https://www.techtarget.com/searchnetworking/definition/TCP-IP)  
🔗 [RFC 1122 - Requirements for Internet Hosts (TCP/IP Model)](https://datatracker.ietf.org/doc/html/rfc1122)  
🔗 [AWS Networking Overview](https://aws.amazon.com/networking/)  
🔗 [Understanding Network Protocols in Cloud Computing](https://cloud.google.com/architecture/networking/)  
🔗 [Packet Tracer by Cisco (Network Simulation)](https://www.netacad.com/courses/packet-tracer)  

---

📍 **Project Repository:** [90 Days of DevOps - Networking](https://github.com/Kisalaykisu/90DaysOfDevOps/tree/master/2025/networking)  

✍ **Contributions are welcome! Feel free to raise an issue or PR.**  

🚀 **Task Completed!** Happy Learning! 🎉
