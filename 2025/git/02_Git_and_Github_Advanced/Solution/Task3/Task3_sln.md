
### **Task 3: Stashing - Save Work Without Committing**  
**Scenario:** You need to switch branches but don’t want to commit incomplete work.  

1. Modify a file without committing.  
   ```bash
   echo "Temporary Change" >> temp.txt
   git add temp.txt
   ```  
2. Stash the changes.  
   ```bash
   git stash
   ```  
3. Switch to another branch and apply the stash.  
   ```bash
   git checkout main
   git stash pop
   ```  
================================================Solution========================================================

![alt text](<Screenshot 2025-02-18 232806.png>)

![alt text](<Screenshot 2025-02-18 232822.png>)

And Doc is in Task3_doc.md in Dir