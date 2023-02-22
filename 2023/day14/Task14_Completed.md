### Tasks

### Give the Difference between List, Tuple and set. Do Handson and put screenshots as per your understanding.

### Ans:-
                List                                 Tuple                                      Set
     -------------------------------------------------------------------------------------------------------------------
     
     1) list is a collection of           1) Tuple is a collection of            1) Set is a collection of
        data elements.                       data elements.                         data elements.
       
     2) lists are changable,              2) Tuples are unchangable,             2) Sets are unchangable,
        ordered and allow duplicate          ordered and allow duplicate            unordered and no duplicate
        values.                              values.                                values.
        
     3) lists are created by placing      3) Tuples are created by placing       3) Sets are created by placing
        elements between []                  separated by "comma" without           elements between {}
                                             paranthesis.
     
     
     
     
### Create below Dictionary and use Dictionary methods to print your favourite tool just by using the keys of the Dictionary.
fav_tools = 
{ 
  1:"Linux", 
  2:"Git", 
  3:"Docker", 
  4:"Kubernetes", 
  5:"Terraform", 
  6:"Ansible", 
  7:"Chef"
}

### Ans:-
         fav_tools = 
         { 
          1:"Linux", 
          2:"Git", 
          3:"Docker", 
          4:"Kubernetes", 
          5:"Terraform", 
          6:"Ansible", 
          7:"Chef"
          }
          
          To print favourite tool just by key
          ---> print(fav_tools[2])
          o/p --> Git
  
         Dictionary Methods:
         
         1) clear() --> The clear() method removes all the elements from a dictionary.
          ---> fav_tools.clear()
               print(fav_tools)
          o/p:- {}
          
         2) copy() --> The copy() method returns a copy of the specified dictionary.
          ---> x = fav_tools.copy()
               print(x)
          o/p:- {1: 'Linux', 2: 'Git', 3: 'Docker', 4: 'Kubernetes', 5: 'Terraform', 6: 'Ansible', 7: 'Chef'}
          
         Reference for python dictionary methods:- https://www.w3schools.com/python/python_ref_dictionary.asp
         
         
         
         
### Create a List of cloud service providers eg.
### cloud_providers = ["AWS","GCP","Azure"]
### Write a program to add Digital Ocean to the list of cloud_providers and sort the list in alphabetical order.

[Hint: Use keys to built in functions for Lists]

If you want to deep dive further, Watch Python

You can share the learning with everyone over linkedin and tag us along 😃
