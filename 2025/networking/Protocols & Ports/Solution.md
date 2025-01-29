# DevOps Essential Protocols and Ports Guide

## Common Application Layer Protocols

### Web Protocols
1. **HTTP (Hypertext Transfer Protocol)**
   - Port: 80
   - DevOps Usage: 
     - Web application deployment and testing
     - REST API communications
     - Container registry HTTP access
     - Health check endpoints

2. **HTTPS (HTTP Secure)**
   - Port: 443
   - DevOps Usage:
     - Secure web application deployment
     - Secure API communications
     - SSL/TLS certificate management
     - Secure container registry access

### Remote Access Protocols
1. **SSH (Secure Shell)**
   - Port: 22
   - DevOps Usage:
     - Secure server access
     - Git operations over SSH
     - Automated deployments
     - Configuration management
     - Remote troubleshooting

2. **RDP (Remote Desktop Protocol)**
   - Port: 3389
   - DevOps Usage:
     - Windows server management
     - GUI-based troubleshooting
     - Visual application testing

### File Transfer Protocols
1. **SFTP (SSH File Transfer Protocol)**
   - Port: 22 (uses SSH)
   - DevOps Usage:
     - Secure file transfers
     - Artifact deployment
     - Configuration file distribution
     - Log file collection

2. **FTP (File Transfer Protocol)**
   - Port: 21
   - DevOps Usage:
     - Legacy system file transfers
     - Simple file hosting
     - Note: Generally avoided in modern DevOps due to lack of security

### Infrastructure Protocols
1. **DNS (Domain Name System)**
   - Port: 53 (TCP/UDP)
   - DevOps Usage:
     - Service discovery
     - Load balancing
     - Domain management
     - Internal DNS for container networking

2. **NTP (Network Time Protocol)**
   - Port: 123
   - DevOps Usage:
     - Time synchronization across servers
     - Log consistency
     - Certificate validation
     - Distributed systems coordination

## Database Protocols
1. **MySQL/MariaDB**
   - Port: 3306
   - DevOps Usage:
     - Database administration
     - Application data storage
     - Backup and replication

2. **PostgreSQL**
   - Port: 5432
   - DevOps Usage:
     - Database management
     - Application data storage
     - Replication setup

3. **MongoDB**
   - Port: 27017
   - DevOps Usage:
     - NoSQL database operations
     - Document storage
     - Replica set configuration

## Container and Orchestration Protocols
1. **Docker**
   - Port: 2375 (unencrypted)
   - Port: 2376 (encrypted)
   - DevOps Usage:
     - Container management
     - Image building
     - Container deployment

2. **Kubernetes**
   - Port: 6443 (API Server)
   - Port: 10250 (Kubelet)
   - DevOps Usage:
     - Container orchestration
     - Service deployment
     - Cluster management

## Monitoring and Logging Protocols
1. **Prometheus**
   - Port: 9090
   - DevOps Usage:
     - Metrics collection
     - Monitoring
     - Alerting

2. **Grafana**
   - Port: 3000
   - DevOps Usage:
     - Metrics visualization
     - Dashboard creation
     - Alert management

## Best Practices for Port Management

1. **Security Considerations**
   - Always use secure versions of protocols (HTTPS over HTTP, SFTP over FTP)
   - Implement proper firewall rules
   - Use non-standard ports where applicable
   - Regular security audits of open ports

2. **Documentation Requirements**
   - Maintain updated port documentation
   - Include port configurations in IaC
   - Document port dependencies
   - Keep security groups updated

3. **Monitoring and Maintenance**
   - Regular port scanning
   - Monitor port usage and traffic
   - Implement port access logging
   - Set up alerts for unauthorized port access
