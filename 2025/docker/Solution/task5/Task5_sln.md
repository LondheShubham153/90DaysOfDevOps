### Task 5: Manage Your Image with Docker Hub
1. **Tag Your Image:**  
   - Tag your image appropriately:
     ```bash
     docker tag <your-username>/sample-app:latest <your-username>/sample-app:v1.0
     ```
2. **Push Your Image to Docker Hub:**  
   - Log in to Docker Hub if necessary:
     ```bash
     docker login
     ```
   - Push the image:
     ```bash
     docker push <your-username>/sample-app:v1.0
     ```
3. **(Optional) Pull the Image:**  
   - Verify by pulling your image:
     ```bash
     docker pull <your-username>/sample-app:v1.0
     ```

---