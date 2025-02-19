### **Task 2: Undoing Changes – Reset & Revert**  
**Scenario:** You accidentally committed incorrect changes and need to undo them.  

1. Create and modify a file.  
   ```bash
   echo "Wrong code" >> wrong.txt
   git add .
   git commit -m "Committed by mistake"
   ```  
2. Soft Reset (keeps changes staged).  
   ```bash
   git reset --soft HEAD~1
   ```  
3. Mixed Reset (unstages changes but keeps files).  
   ```bash
   git reset --mixed HEAD~1
   ```  
4. Hard Reset (removes all changes).  
   ```bash
   git reset --hard HEAD~1
   ```  
5. Revert a commit safely.  
   ```bash
   git revert HEAD
   ```  
================================================Solution========================================================


![alt text](<Screenshot 2025-02-18 231836.png>)

And Doc is in Task2_doc.md in Dir