### Task 7: Configure Docker Networking
1. **Create a Custom Docker Network:**  
   - Create a custom Docker network:
     ```bash
     docker network create my_network
     ```
2. **Run Containers on the Same Network:**  
   - Run two containers (e.g., your sample app and a simple database like MySQL) on the same network to demonstrate inter-container communication:
     ```bash
     docker run -d --name sample-app --network my_network <your-username>/sample-app:v1.0
     docker run -d --name my-db --network my_network -e MYSQL_ROOT_PASSWORD=root mysql:latest
     ```
3. **Document the Process:**  
   - In `solution.md`, describe how Docker networking enables container communication and its significance in multi-container applications.

---