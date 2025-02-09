# DevOps Networking Cheatsheet 📡

## 1. Networking Basics
- **Purpose**: Connect devices (servers, apps, clouds) to share data.
- **Why DevOps?**: Deploy apps, debug issues, secure microservices.

## 2. OSI Model (Layers 1-7)
- **Layer 7 (HTTP)**: Web apps, APIs.
- **Layer 4 (TCP/UDP)**: Reliable/fast data transfer.
- **Layer 3 (IP)**: Routing between networks.

## 3. Key Protocols & Ports
- **HTTP/HTTPS**: Port 80/443 (web apps).
- **SSH**: Port 22 (secure server access).
- **DNS**: Port 53 (domain → IP).
- **Database Ports**: 3306 (MySQL), 5432 (Postgres).

## 4. CIDR Notation
- **Example**: `10.0.0.0/16` = 65,534 IPs.
- **Use**: Cloud VPCs, Kubernetes subnets.

## 5. MAC Address
- **Example**: `00:1A:2B:3C:4D:5E`.
- **Use**: Local network traffic (Layer 2).

## Troubleshooting Tips
- Can’t connect to a server? Check if the port is open (e.g., `telnet 10.0.0.1 22`).
- IP conflict? Verify CIDR ranges in your cloud VPC.