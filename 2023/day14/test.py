thistuple = ("apple", "banana", "cherry")
print(thistuple)

#Tuples are used to store multiple items in a single variable.

#Tuple is one of 4 built-in data types in Python used to store collections of data, the other 3 are List, Set, and Dictionary, all with different qualities and usage.

#A tuple is a collection which is ordered and unchangeable.

#Tuples are written with round brackets.\

thislist = ["apple", "banana", "cherry"]
print(thislist)



#Lists are used to store multiple items in a single variable.

#Lists are one of 4 built-in data types in Python used to store collections of data, the other 3 are Tuple, Set, and Dictionary, all with different qualities and usage.

#ists are created using square brackets:

myset = {"apple", "banana", "cherry"}
print(myset)
 #Sets are used to store multiple items in a single variable.

#Set is one of 4 built-in data types in Python used to store collections of data, the other 3 are List, Tuple, and Dictionary, all with different qualities and usage.

# set is a collection which is unordered, unchangeable*, and unindexed.


fav_tools={
  1:"Linux",
  2:"Git",
  3:"Docker",
  4:"Kubernetes",
  5:"Terraform",
  6:"Ansible",
  7:"Chef"
}
test =fav_tools.values()
print(test)



cloud_providers = ["AWS","GCP","Azure"]

cloud_providers.append("digital ocean")


cloud_providers.sort()

print(cloud_providers)