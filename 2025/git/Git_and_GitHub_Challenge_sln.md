### Task 1: Fork and Clone the Repository
1. **Fork the Repository:**  
   - Visit [this repository](https://github.com/LondheShubham153/90DaysOfDevOps) and fork it to your own GitHub account. If not done yet.

**DONE**
# Navigate to the Repository: Visit the GitHub page of the repository you want to fork.
# Fork the Repository: Look for the "Fork" button in the top-right corner of the repository's page. Click on it. This action will create a copy of the repository in your own GitHub account.
# By forking the repository, you'll have your own copy that you can work on without affecting the original repository. Any changes you make will only impact your forked version.


2. **Clone Your Fork Locally:** 

**Done by doing as below**
2. **Clone Your Fork Locally:**  
   - Clone the forked repository using HTTPS:
    
     git clone <your-fork-url>

     ![alt text](<Screenshot 2025-02-18 105319-1.png>)
     ![alt text](<Screenshot 2025-02-18 105634.png>)
 
   - Change directory into the cloned repository:
   
     cd 2025/git/01_Git_and_Github_Basics
     
     ![alt text](<Screenshot 2025-02-18 105906.png>)



### Task 2: Initialize a Local Repository and Create a File
1. **Set Up Your Challenge Directory:**  
   - Inside the cloned repository, create a new directory for this challenge:
     mkdir week-4-challenge
     cd week-4-challenge

2. **Initialize a Git Repository:**  
   - Initialize the directory as a new Git repository:
     git init

3. **Create a File:**  
   - Create a file named `info.txt` and add some initial content (for example, your name and a brief introduction).

4. **Stage and Commit Your File:**  
   - Stage the file:
     git add info.txt

   - Commit the file with a descriptive message:

     git commit -m "Initial commit: Add info.txt with introductory content"

![alt text](<Screenshot 2025-02-18 111117.png>)


## Task 3: Configure Remote URL with PAT and Push/Pull

1. **Configure Remote URL with Your PAT:**  
   To avoid entering your Personal Access Token (PAT) every time you push or pull, update your remote URL to include your credentials.  

   **⚠️ Note:** Embedding your PAT in the URL is only for this exercise. It is not recommended for production use.  
   
   Replace `<your-username>`, `<your-PAT>`, and `<repository-name>` with your actual GitHub username, your PAT, and the repository name respectively:
   
   ```bash
   git remote add origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git
   ```
   If a remote named `origin` already exists, update it with:
   ```bash
   git remote set-url origin https://<your-username>:<your-PAT>@github.com/<your-username>/90DaysOfDevOps.git
   ```
2. **Push Your Commit to Remote:**  
   - Push your current branch (typically `main`) and set the upstream:
     ```bash
     git push -u origin main
     ```
3. **(Optional) Pull Remote Changes:**  
   - Verify your configuration by pulling changes:
     ```bash
     git pull origin main
     ```
![alt text](<Screenshot 2025-02-18 142540.png>)
