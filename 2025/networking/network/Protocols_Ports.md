# 🌐 Protocols & Ports for DevOps  

📌 **Overview**  
Networking is crucial in **DevOps, cloud computing, and CI/CD pipelines**. Understanding **protocols and their port numbers** helps in **network security, firewall configurations, and troubleshooting**.  

---

## 📌 Commonly Used Protocols in DevOps  

| **Protocol** | **Port Number** | **Usage in DevOps** |
|-------------|--------------|--------------------|
| **HTTP**    | 80           | Used in web apps, REST APIs, monitoring tools |

| **HTTPS**   | 443          | Secure web communication with TLS/SSL |

| **SSH**     | 22           | Remote server access, Git authentication |

| **FTP**     | 21           | File transfers, CI/CD pipeline storage |

| **SFTP**    | 22           | Secure file transfers over SSH |

| **DNS**     | 53           | Resolving domain names, Kubernetes service discovery |

| **SMTP**    | 25, 587      | Sending emails from CI/CD pipelines |

| **IMAP/POP3** | 143, 110  | Email retrieval in monitoring tools |

| **MySQL**   | 3306         | Database access for cloud apps |

| **PostgreSQL** | 5432      | Database access for Kubernetes microservices |

| **Redis**   | 6379         | Caching for high-speed DevOps applications |

| **RabbitMQ**| 5672         | Message queues for event-driven architectures |

| **Elasticsearch** | 9200   | Log aggregation & search in ELK stack |

| **Kubernetes API** | 6443  | Managing K8s clusters |

| **Docker API** | 2375, 2376 | Container management |

| **NTP**     | 123          | Time synchronization in distributed systems |

| **VPN (OpenVPN, WireGuard)** | 1194, 51820 | Secure networking in cloud environments |

---


## 🚀 **How These Protocols Are Used in DevOps?**  

🔹 **CI/CD Pipelines** → Uses **HTTP, HTTPS, FTP, SSH** to pull/push code and deploy apps.  

🔹 **Cloud Infrastructure (AWS, GCP, Azure)** → Requires **DNS, NTP, API ports** for scalability. 
 
🔹 **Microservices & Kubernetes** → Depends on **Redis, RabbitMQ, PostgreSQL, Elasticsearch**.  

🔹 **Monitoring & Logging** → Uses **SMTP, Elasticsearch, Syslog ports** for alerting.  

🔹 **Security & Authentication** → Requires **TLS (HTTPS), VPN, SFTP, SSH** for access control.  

---

## 🔍 **Best Practices for Managing Ports in DevOps**  

✅ **Use Firewalls & Security Groups** → Allow only necessary ports.  

✅ **Enforce TLS/SSL (HTTPS, FTPS, SSH)** → Encrypt communication.  

✅ **Monitor Open Ports Regularly** → Detect security vulnerabilities.  

✅ **Implement VPNs & IAM Policies** → Restrict unauthorized access. 
 
✅ **Use Container Networking Wisely** → Avoid exposing sensitive services directly.  

---

## 📖 Additional Resources  

🔗 [Common TCP/IP Ports List](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)  

🔗 [IANA Port Number Registry](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)  

🔗 [How SSH Works in DevOps](https://www.ssh.com/academy/ssh) 
 
🔗 [Kubernetes API Ports](https://kubernetes.io/docs/reference/networking/)  

🔗 [Docker Network Best Practices](https://docs.docker.com/network/)  

🔗 [AWS Security Groups & Firewall Rules](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)  

---

✅ **Task Completed!** 🚀  

📍 **GitHub Repository:** [90 Days of DevOps - Networking](https://github.com/Kisalaykisu/90DaysOfDevOps/tree/master/2025/networking)  

💡 *Contributions are welcome! Feel free to raise an issue or PR.*  

🚀 **Happy Learning!** 🎉
