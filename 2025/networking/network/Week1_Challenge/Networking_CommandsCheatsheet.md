# 📌 Hands-On with Networking Commands

## 🚀 Overview
Networking commands are essential for diagnosing, troubleshooting, and optimizing network connections. Below is a cheat sheet explaining the purpose and usage of key networking commands.

---

## 🔍 **Essential Networking Commands**

### 1️⃣ **Ping** - Check Network Connectivity
- Used to test the reachability of a host and measure round-trip time.
- Example:
  ```bash
  ping google.com
  ```
  
### 2️⃣ **Traceroute / Tracert** - Trace Packet Routes
- Shows the path packets take to reach a destination.
- Example:
  ```bash
  traceroute google.com  # Linux/macOS
  tracert google.com     # Windows
  ```
  
### 3️⃣ **Netstat** - Display Network Statistics
- Shows active connections, listening ports, and routing tables.
- Example:
  ```bash
  netstat -an
  ```
  
### 4️⃣ **Curl** - Make HTTP Requests
- Used to interact with URLs and APIs.
- Example:
  ```bash
  curl -I https://www.example.com
  ```
  
### 5️⃣ **Dig / Nslookup** - DNS Lookup
- Used to query DNS records and troubleshoot domain issues.
- Example:
  ```bash
  dig google.com  # Linux/macOS
  nslookup google.com  # Windows
  ```

---

## 🎯 **Cheat Sheet Summary**

| Command  | Purpose | Example |
|----------|---------|---------|
| `ping`   | Check connectivity | `ping google.com` |
| `traceroute` / `tracert` | Trace network path | `traceroute google.com` |
| `netstat` | Show network statistics | `netstat -an` |
| `curl` | Test HTTP requests | `curl -I example.com` |
| `dig` / `nslookup` | DNS lookup | `dig google.com` |

---

## 📚 **Additional Resources**

🔗 [Linux Networking Commands Guide](https://linuxize.com/post/linux-network-commands/)

🔗 [Netstat Usage](https://www.geeksforgeeks.org/netstat-command-in-linux-with-examples/)

🔗 [How to Use Curl](https://curl.se/docs/manual.html)

🔗 [Traceroute Explained](https://www.howtogeek.com/134132/how-to-use-traceroute-to-identify-network-problems/)

---

💪 **Task Completed!** 🚀

📌 **GitHub Repository:** [90 Days of DevOps - Networking]📌 (https://github.com/Kisalaykisu/90DaysOfDevOps/tree/master/2025/networking/network)  

🚀 **Happy Networking!** 🎉
