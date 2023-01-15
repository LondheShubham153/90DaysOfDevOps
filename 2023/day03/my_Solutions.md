- To view what's written in a file.
``cat or vim``
- To change the access permissions of files.
Syntax : chmod permission file_name 

chmod 777 -> to provide rwx to owner, groups and others.
r -> 4 , x -> 1 , w -> 2
![image](https://user-images.githubusercontent.com/63184865/212555716-6f363ce9-8d20-44b4-b7bc-bc6241b4ecf3.png)

<img width="544" alt="image" src="https://user-images.githubusercontent.com/63184865/212556311-ce7bde17-621c-44ad-8361-fc255ec28b38.png">
<img width="508" alt="image" src="https://user-images.githubusercontent.com/63184865/212557285-ff88ae46-83e8-4c5c-a5ca-30570270007b.png">


- To check which commands you have run till now.    
 ``history``
- To remove a directory/ Folder.  
 ``rmdir`` OR ``rm``
 
- To create a fruits.txt file and to view the content.  
``touch fruits.txt`` -> ``cat fruits.txt`` OR ``vim fruits.txt``
- Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava.  
``echo "Apple"  >> devops.txt; echo "Mango"  >> devops.txt; echo "Banana" >> devops.txt; echo "Cherry" >> devops.txt; echo "Kiwi" >> devops.txt; echo "Orange" >> devops.txt; echo "Guava"  >> devops.txt ``

- To Show only top three fruits from the file.  
``cat fruits.txt | head -3``
- To Show only bottom three fruits from the file.  
``cat fruits.txt | tail -3``
To create another file Colors.txt and to view the content.    
``touch Colors.txt`` -> ``cat Colors.txt``
- Add content in Colors.txt (One in each line) - Red, Pink, White, Black, Blue, Orange, Purple, Grey.  
1. ``echo -e "Red \n, Pink \n, White \n, Black \n, Blue \n, Orange \n, Purple \n, Grey" >> Colors.txt``
2. ``vim Colors.txt`` 
3.  In vim editor``:%s/ ,//g``

- To find the difference between fruits.txt and Colors.txt file.  
``diff fruits.txt Colors.txt`` OR ``vimdiff fruits.txt Colors.txt``
