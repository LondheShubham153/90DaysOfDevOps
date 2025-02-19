### Task 6: Persist Data with Docker Volumes
1. **Create a Docker Volume:**  
   - Create a Docker volume:
     ```bash
     docker volume create my_volume
     ```
2. **Run a Container with the Volume:**  
   - Run a container using the volume to persist data:
     ```bash
     docker run -d -v my_volume:/app/data <your-username>/sample-app:v1.0
     ```
3. **Document the Process:**  
   - In `solution.md`, explain how Docker volumes help with data persistence and why they are useful.

---