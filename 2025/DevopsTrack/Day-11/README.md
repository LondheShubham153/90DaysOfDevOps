# 📅 Day 11: Networking Basics - How the Internet Works & Key Concepts

---

##  How the Internet Works  
The internet is a huge global network connecting millions of devices. It depends on undersea fiber optic cables to transmit data across continents.  

![image](https://github.com/user-attachments/assets/ca10908e-a726-499b-83f9-d3e9d8c6f801)

- Submarine Cable Map is a great interactive tool to visualize the actual cables connecting countries worldwide.  
- **Internet connectivity hierarchy:**  
  - **Tier 1:** Cable owners/operators who own and manage the main global backbone cables.  
  - **Tier 2:** Regional providers that purchase bandwidth from Tier 1 and supply countries or large areas.  
  - **Tier 3:** Local ISPs and providers that deliver internet access directly to homes and businesses via fiber or other mediums.  

---

##  Internet Structure Overview (Ocean to Home)  
Visualize the internet connection as nested layers:  
- **WAN (Wide Area Network):** The global network of internet cables and backbone connections.  
- **MAN (Metropolitan Area Network):** Networks covering a city or large campus.  
- **LAN (Local Area Network):** Local networks like office or home Wi-Fi.  
- **PAN (Personal Area Network):** Networks near a person, like Bluetooth or personal hotspot.  

---

##  OSI Model   
The OSI (Open Systems Interconnection) model standardizes network functions into seven layers:  
- **Application, Presentation, Session** (Software Layer)  
- **Transport, Network, Data Link, Physical** (Hardware Layer)
  
  ![image](https://github.com/user-attachments/assets/4d1da1c4-36b0-41b9-96d3-f3a546e22e0b)

Each layer handles a specific part of communication, from user interface to physical transmission.  

---

##  TCP/IP Model 
A simpler, practical model used for internet communication:  
- Application  
- Transport  
- Internet  
- Network 
  
  ![image](https://github.com/user-attachments/assets/d5e339f1-9229-4248-8fcd-c3f8eb1d643a)


---

##  Common Protocols and Their Usage  
- **Application Layer:** HTTP/HTTPS (web browsing), SMTP (email), FTP (file transfer)  
- **Transport Layer:** TCP (reliable connection), UDP (fast but unreliable)  
- **Internet Layer:** IP (routing packets)  
- **Network Layer:** Routers forwarding packets based on IP addresses  

---

##  IP Address & MAC Address  
- **IP Address:** Logical address assigned by your ISP; can change when you switch networks.  
- **MAC Address:** Physical hardware address of your network device; unique and permanent.  
- **Subnetting:** Dividing IP address space into smaller networks for organization and security.  
- Different IP types: Public, Private, Static, Dynamic.  

---

## 7. Router vs Switch


 **Router**:
 - Connects different networks (WAN to LAN)
 - Routes packets using IP addresses
 - Works at OSI Layer 3 (Network Layer)
 - Handles DHCP, NAT, firewall functions
 - Manages internet traffic

 **Switch**:
 - Connects devices within the same LAN
 - Forwards data based on MAC addresses
 - Works at OSI Layer 2 (Data Link Layer)
 - Creates network segments to reduce collisions
 - Connects computers, printers, and other devices

---

##  On-Premise vs Cloud Services  

| Feature          | On-Premise                              | Cloud Services                         |
|------------------|---------------------------------------|--------------------------------------|
| **Definition**   | Infrastructure hosted within company premises | Infrastructure hosted by third-party cloud providers |
| **Who Uses**     | Large enterprises, organizations ,governments with strict compliance needs | Startups, SMEs, businesses seeking scalability and flexibility |
| **Maintenance**  | Managed by internal IT team            | Managed by cloud provider             |
| **Cost**         | High cost as it is individual use cases | Pay-as-you-Want   |
| **Scalability**  | Limited by physical hardware capacity | Highly scalable on demand             |
| **Security**     | Full control over security policies and data | Shared responsibility; cloud provider secures infrastructure, user manages data security |
| **Funding**      | Requires large initial investment     | Flexible pricing models, no large upfront cost |
| **Deployment Time** | Longer setup and deployment time     | Rapid deployment and provisioning    |
| **Upgrades & Updates** | Manual upgrades handled internally | Automatic updates by cloud provider  |


---
[Previous Day →](../Day-10/README.md)                                                                                    [Next Day →](../Day-12/README.md) 
