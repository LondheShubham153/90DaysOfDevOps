task completed

1. Create below Dictionary and use Dictionary methods to print your favourite tool just by using the keys of the Dictionary.

add-on: if the key is not in the list, it will show "Not in dict"

<img width="362" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/28f1b399-d028-4630-bed6-4d988dec47e2">

Refer: [dict.py](https://github.com/paragpallavsingh/90DaysOfDevOps/blob/master/submission/day14/dict.py)

```
fav_tools = { 
  1:"Linux", 
  2:"Git", 
  3:"Docker", 
  4:"Kubernetes", 
  5:"Terraform", 
  6:"Ansible", 
  7:"Chef"
}

try:
    user_input = int(input("Enter the key for tool: "))
    if user_input in fav_tools:
        print("Your favorite tool :", fav_tools[user_input])
    else:
        print("Not in dict")
except ValueError:
    print("Invalid input. Please enter a valid integer key.")
````
