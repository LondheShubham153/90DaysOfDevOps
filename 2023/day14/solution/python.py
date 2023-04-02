#Task 1.

#list - A list is a collection of ordered elements.

mobile_co = ["Samsung", "Nokia", "Apple", "Oneplus", "Motorola"]
print(type(mobile_co))
print(mobile_co)

#Tuple - A tuple is a collection of ordered elements.

my_tuple = (1, 2, 3, 'four', 'five')
print(type(my_tuple))
print(my_tuple)

#Set - A set is an unordered collection of unique elements.

my_set = {1, 2, 3, 4, 5}
print(type(my_set))
print(my_set)

#Task 2.
# Dictionary
fav_tools = { 
  1:"Linux", 2:"Git", 3:"Docker", 4:"Kubernetes", 5:"Terraform", 6:"Ansible", 7:"Chef"
}
print(fav_tools[3])




#Task 3.
cloud_providers = ["AWS", "GCP", "Azure"]

# Add "Digital Ocean" to the list
cloud_providers.append("Digital Ocean")

# Sort the list in alphabetical order
cloud_providers.sort()

# Print the sorted list
print(cloud_providers)