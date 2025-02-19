### **Task 4: Cherry-Picking - Selectively Apply Commits**  
**Scenario:** A bug fix exists in another branch, and you only want to apply that specific commit.  

1. Find the commit to cherry-pick.  
   ```bash
   git log --oneline
   ```  
2. Apply a specific commit to the current branch.  
   ```bash
   git cherry-pick <commit-hash>
   ```  
3. Resolve conflicts if any.  
   ```bash
   git cherry-pick --continue
   ```  

================================================Solution========================================================

![alt text](<Screenshot 2025-02-18 235326.png>)
![alt text](<Screenshot 2025-02-18 235345.png>) 


And Doc is in Task4_doc.md in Dir