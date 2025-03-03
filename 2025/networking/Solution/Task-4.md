**Task 4: Hands-On with Networking Commands**

### Understanding Networking Commands
Networking commands are essential for troubleshooting, monitoring, and configuring network settings in DevOps environments. Below are some fundamental networking commands used frequently.

### **1. ping** (Check Connectivity)
The `ping` command checks if a host is reachable and measures round-trip time.
- **Usage:**
  ```sh
  ping google.com
  ```
- **Purpose:** Used to test network connectivity between devices.

### **2. traceroute / tracert** (Trace Packet Route)
The `traceroute` (Linux/macOS) or `tracert` (Windows) command traces the path that packets take to a destination.
- **Usage:**
  ```sh
  traceroute google.com  # Linux/macOS
  
  ```
- **Purpose:** Helps diagnose slow networks by identifying delays at specific network hops.

### **3. netstat** (Network Statistics)
The `netstat` command displays active network connections, listening ports, and routing tables.
- **Usage:**
  ```sh
  netstat -tulnp  # Linux

  ```
- **Purpose:** Monitors open ports and network activity, useful for security analysis.

### **4. curl** (Make HTTP Requests)
The `curl` command interacts with URLs and APIs over HTTP/HTTPS.
- **Usage:**
  ```sh
  curl -I https://www.google.com
  ```
- **Purpose:** Retrieves headers or content from a web server, often used in API testing.

### **5. dig / nslookup** (DNS Lookup)
The `dig` (Linux/macOS) or `nslookup` (Windows) command queries DNS records to resolve domain names.
- **Usage:**
  ```sh
  dig google.com    # Linux/macOS
  
  ```
- **Purpose:** Troubleshoots DNS issues and checks domain resolution.

### **Creating a Networking Cheat Sheet**
For quick reference, create a summarized cheat sheet with commonly used commands and their purposes.

By mastering these commands, DevOps professionals can efficiently troubleshoot, monitor, and optimize network performance.

