# Assignment: Networking Protocols, Ports, and Commands

This assignment is designed for learners working on a HEC2 instance. It contains 10 medium-level questions—5 practical and 5 theory—to help you understand and apply networking protocols, ports, and commands in a DevOps environment.

---

## Part A: Practical Questions

Perform the following tasks on your HEC2 instance (or your local lab environment) and record your results. Provide screenshots or command outputs along with a brief explanation of your findings.

### 1. Checking Connectivity with `ping`
- **Task:** Use the `ping` command to check the connectivity to `google.com`.
- **Questions:**
  - What is the average round-trip time (RTT) reported by the command?
  - Did you observe any packet loss?
- **Hint:**  
  ```bash
  ping -c 5 google.com
  ```

---

### 2. Tracing the Route with `traceroute`/`tracert`
- **Task:** Use `traceroute` (Linux/macOS) or `tracert` (Windows) to map the path your packets take to reach `google.com`.
- **Questions:**
  - Identify and list the IP addresses of the first three hops.
  - Comment on any noticeable delays in any of the hops.
- **Hint:**  
  ```bash
  traceroute google.com  # On Linux/macOS
  ```

---

### 3. Monitoring Open Ports with `netstat`
- **Task:** Use `netstat` to display all active connections and listening ports on your instance.
- **Questions:**
  - Identify which ports are open and list the services associated with common ports like SSH (22) and HTTP (80).
  - Explain what the output tells you about your network’s current activity.
- **Hint:**  
  ```bash
  netstat -tulnp
  ```

---

### 4. Fetching HTTP Headers with `curl`
- **Task:** Use the `curl` command to retrieve the HTTP headers from `https://www.google.com`.
- **Questions:**
  - What are the key HTTP response headers you observe?
  - What do these headers indicate about the website’s server or security configuration?
- **Hint:**  
  ```bash
  curl -I https://www.google.com
  ```

---

### 5. Domain Name Resolution with `dig`/`nslookup`
- **Task:** Use `dig` or `nslookup` to resolve the domain `example.com` to its IP address.
- **Questions:**
  - What IP address is returned for `example.com`?
  - Briefly explain what additional information (if any) the tool provides about the domain.
- **Hint:**  
  ```bash
  dig example.com
  # or
  nslookup example.com
  ```

---

## Part B: Theory Questions

Answer the following questions in a short essay or bullet-point format (approximately 150–250 words per answer). Ensure that you support your explanations with examples or analogies where appropriate.

### 6. TCP vs. UDP
- **Question:** Explain the differences between TCP and UDP. In what scenarios might a DevOps engineer choose UDP over TCP, and why?
- **Consider:** Reliability, speed, ordering of packets, and use cases such as streaming or real-time communications.

---

### 7. Firewall Fundamentals
- **Question:** Describe how a firewall works in a network environment. Compare and contrast a packet filtering firewall with a stateful firewall, highlighting their pros and cons in managing network security.

---

### 8. Understanding Ports
- **Question:** What are ports in the context of computer networking? Use a real-world analogy (for example, comparing ports to apartment numbers) to explain how ports facilitate communication between applications.

---

### 9. IPv4 vs. IPv6
- **Question:** Compare IPv4 and IPv6 addressing. What are the main differences in their structures and capacities? Why is the transition to IPv6 important for modern networks?

---

### 10. IP Address vs. MAC Address
- **Question:** Explain the roles of IP addresses and MAC addresses in network communication. How do they work together to ensure that data is correctly transmitted both within a local network and over the internet?

---

## Submission Instructions

- Submit your command outputs/screenshots for Part A along with your written answers for Part B in a single document or as directed by your instructor.
- Ensure that your explanations are clear and demonstrate a solid understanding of the networking protocols, commands, and concepts covered in the assignment.

Good luck!
