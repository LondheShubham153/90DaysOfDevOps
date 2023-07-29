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
