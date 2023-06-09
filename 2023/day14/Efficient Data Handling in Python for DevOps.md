![Python Data Types: A Comprehensive Overview](https://cdn.hashnode.com/res/hashnode/image/upload/v1686222535595/2d5e4119-93d3-4421-ad3a-f5970afb08fe.png?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)
# Efficient Data Handling in Python for DevOps


In DevOps, Python offers various data types and data structures that are commonly used for efficient data handling and manipulation.

# Data Types

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1686222228713/668af677-49bc-4a3b-81a9-82d2064059b0.jpeg)

* Data types are the classification or categorization of data items. It represents the kind of value that tells what operations can be performed on a particular data.
    
* Since everything is an object in Python programming, data types are actually classes and variables are instance (object) of these classes.
    
* python is a dynamically typed language; hence we do not need to define the type of the variable while declaring it. The interpreter implicitly binds the value with its type.
    

Python has the following data types built-in by default, in these categories:

<table><tbody><tr><td colspan="1" rowspan="1"><p>Text Type:</p></td><td colspan="1" rowspan="1"><p><code>str</code></p></td></tr><tr><td colspan="1" rowspan="1"><p>Numeric Types:</p></td><td colspan="1" rowspan="1"><p><code>int</code>, <code>float</code>, <code>complex</code></p></td></tr><tr><td colspan="1" rowspan="1"><p>Sequence Types:</p></td><td colspan="1" rowspan="1"><p><code>list</code>, <code>tuple</code>, <code>range</code></p></td></tr><tr><td colspan="1" rowspan="1"><p>Mapping Type:</p></td><td colspan="1" rowspan="1"><p><code>dict</code></p></td></tr><tr><td colspan="1" rowspan="1"><p>Set Types:</p></td><td colspan="1" rowspan="1"><p><code>set</code>, <code>frozenset</code></p></td></tr><tr><td colspan="1" rowspan="1"><p>Boolean Type:</p></td><td colspan="1" rowspan="1"><p><code>bool</code></p></td></tr><tr><td colspan="1" rowspan="1"><p>Binary Types:</p></td><td colspan="1" rowspan="1"><p><code>bytes</code>, <code>bytearray</code>, <code>memoryview</code></p></td></tr><tr><td colspan="1" rowspan="1"><p>None Type:</p></td><td colspan="1" rowspan="1"><p><code>NoneType</code></p></td></tr></tbody></table>

To check what is the data type of the variable used, we can simply write:

```python
x = 5
print(type(x))  # DataType Output: int
```

In Python, the data type is set when you assign a value to a variable:

| Example | Data Type |
| --- | --- |
| x = "Hello World" | str |
| x = 20 | int |
| x = 20.5 | float |
| x = 1j | complex |
| x = \["apple", "banana", "cherry"\] | list |
| x = ("apple", "banana", "cherry") | tuple |
| x = range(6) | range |
| x = {"name" : "John", "age" : 36} | dict |
| x = {"apple", "banana", "cherry"} | set |
| x = frozenset({"apple", "banana", "cherry"}) | frozenset |
| x = True | bool |
| x = b"Hello" | bytes |
| x = bytearray(5) | bytearray |
| x = memoryview(bytes(5)) | memoryview |
| x = None | NoneType |

# Data Structures

Data Structures are a way of organizing data so that it can be accessed more efficiently depending upon the situation. Data Structures are fundamentals of any programming language around which a program is built. Python helps to learn the fundamental of these data structures in a simpler way as compared to other programming languages.

### **Types of Data Structures in Python**

![](https://d1jnx9ba8s6j9r.cloudfront.net/blog/wp-content/uploads/2019/10/TreeStructure-Data-Structures-in-Python-Edureka1.png)

* **Lists:** Python Lists are just like the arrays, declared in other languages which is an ordered collection of data. It is very flexible as the items in a list do not need to be of the same type.
    

![python-list-slicing](https://media.geeksforgeeks.org/wp-content/uploads/List-Slicing.jpg)

List elements can be accessed by the assigned index. In python starting index of the list, sequence is 0 and the ending index is (if N elements are there) N-1.

```python
List = [1, 2,  3, "GFG", 2.3]
print(List)

#output
[1, 2, 3, 'GFG', 2.3]
```

* **Tuple:** Python Tuple is a collection of Python objects much like a list but Tuples are immutable in nature i.e. the elements in the tuple cannot be added or removed once created. Just like a List, a Tuple can also contain elements of various types.
    

```python
# Creating a Tuple with
# the use of Strings
Tuple = ('Geeks', 'For')
print("\nTuple with the use of String: ")
print(Tuple)
     
# Creating a Tuple with
# the use of list
list1 = [1, 2, 4, 5, 6]
print("\nTuple using List: ")
Tuple = tuple(list1)

#Output:
Tuple with the use of String: 
('Geeks', 'For')

Tuple using List: 
First element of tuple
1
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1686225468751/8eeb3981-75af-4497-939f-5eb8c82ac962.png)

* **Dictionary:** Python dictionary is like hash tables in any other language with the time complexity of O(1). It is an unordered collection of data values, used to store data values like a map, which, unlike other Data Types that hold only a single value as an element, Dictionary holds the key:value pair. Key-value is provided in the dictionary to make it more optimized
    

```python

# Creating a Dictionary
Dict = {'Name': 'Geeks', 1: [1, 2, 3, 4]}
print("Creating Dictionary: ")
print(Dict)
 
# accessing a element using key
print("Accessing a element using key:")
print(Dict['Name'])

#Output
Creating Dictionary: 
{'Name': 'Geeks', 1: [1, 2, 3, 4]}
Accessing a element using key:
Geeks
```

# Tasks

1. **Give the Difference between List, Tuple, Set and Dictionary.**
    

List, Tuple, Set, and Dictionary are the data structures in Python that are used to store and organize data efficiently.

<table><tbody><tr><td colspan="1" rowspan="1"><p><strong>List</strong></p></td><td colspan="1" rowspan="1"><p><strong>Tuple</strong></p></td><td colspan="1" rowspan="1"><p><strong>Set</strong></p></td><td colspan="1" rowspan="1"><p><strong>Dictionary</strong></p></td></tr><tr><td colspan="1" rowspan="1"><p>List can be represented by [ ]</p></td><td colspan="1" rowspan="1"><p>Tuple can be represented by &nbsp;</p></td><td colspan="1" rowspan="1"><p>Set can be represented by { }</p></td><td colspan="1" rowspan="1"><p>Dictionary &nbsp;can be represented by { }</p></td></tr><tr><td colspan="1" rowspan="1"><p>List allows duplicate elements</p></td><td colspan="1" rowspan="1"><p>Tuple allows duplicate elements</p></td><td colspan="1" rowspan="1"><p>Set will not allow duplicate elements</p></td><td colspan="1" rowspan="1"><p>Dictionary doesn’t allow duplicate keys.</p></td></tr><tr><td colspan="1" rowspan="1"><p>List can use nested among all</p></td><td colspan="1" rowspan="1"><p>Tuple can use nested among all</p></td><td colspan="1" rowspan="1"><p>Set can use nested among all</p></td><td colspan="1" rowspan="1"><p>Dictionary can use nested among all</p></td></tr><tr><td colspan="1" rowspan="1"><p>Example: [1, 2, 3, 4, 5]</p></td><td colspan="1" rowspan="1"><p>Example: (1, 2, 3, 4, 5)</p></td><td colspan="1" rowspan="1"><p>Example: {1, 2, 3, 4, 5}</p></td><td colspan="1" rowspan="1"><p>Example: {1: “a”, 2: “b”, 3: “c”, 4: “d”, 5: “e”}</p></td></tr><tr><td colspan="1" rowspan="1"><p>List is ordered</p></td><td colspan="1" rowspan="1"><p>Tuple is ordered</p></td><td colspan="1" rowspan="1"><p>Set is unordered</p></td><td colspan="1" rowspan="1"><p>Dictionary is ordered (Python 3.7 and above)</p></td></tr><tr><td colspan="1" rowspan="1"><p>Creating an empty list</p></td><td colspan="1" rowspan="1"><p>Creating an empty Tuple</p></td><td colspan="1" rowspan="1"><p>Creating a set</p></td><td colspan="1" rowspan="1"><p>Creating an empty dictionary</p></td></tr></tbody></table>

1. Create below Dictionary and use Dictionary methods to print your favourite tool just by using the keys of the Dictionary.
    

```bash
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
```

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1686225791275/9f3cb119-9b73-43bf-9139-e0cfc5d1651a.png)

1. Create a List of cloud service providers eg.
    

```bash
cloud_providers = ["AWS","GCP","Azure"]
```

Write a program to add `Digital Ocean` to the list of cloud\_providers and sort the list in alphabetical order.

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1686225935233/e31b60b0-5103-4f93-849a-d1193c04bdda.png)

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1686225942657/c44824a0-2ed6-43f4-a8d4-9047bf120884.png)

These data types and structures in Python provide a rich set of tools for handling and manipulating data in DevOps workflows. Understanding their characteristics and functionalities allows you to choose the most appropriate ones for your specific requirements.

*Thanks for reading my article. Have a nice day.*

![No alt text provided for this image](https://media.licdn.com/dms/image/D4D12AQHNlk8ZIYUrAA/article-inline_image-shrink_1500_2232/0/1675886031853?e=1689811200&v=beta&t=lTPiTxCi1a0PbsEsySKh5fvp6gDIMlaAaq6Q9xtUKhQ)

### For updates follow me on **LinkedIn**: [Swapnil Khairnar](https://www.linkedin.com/in/swapnilkhairnar78/)

---

Hashtags:

[#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#devops](https://www.linkedin.com/feed/hashtag/devops)  [#cloud](https://www.linkedin.com/feed/hashtag/cloud)  [#aws](https://www.linkedin.com/feed/hashtag/aws)  [#awscloud](https://www.linkedin.com/feed/hashtag/awscloud)  [#awscommunity](https://www.linkedin.com/feed/hashtag/awscommunity)  [#docker](https://www.linkedin.com/feed/hashtag/docker)  [#linux](https://www.linkedin.com/feed/hashtag/linux)  [#kubernetes](https://www.linkedin.com/feed/hashtag/kubernetes)  [#k8s](https://www.linkedin.com/feed/hashtag/k8s)  [#ansible](https://www.linkedin.com/feed/hashtag/ansible)  [#grafana](https://www.linkedin.com/feed/hashtag/grafana)  [#terraform](https://www.linkedin.com/feed/hashtag/terraform)  [#github](https://www.linkedin.com/feed/hashtag/github)  [#opensource](https://www.linkedin.com/feed/hashtag/opensource)  [#90daysofdevops](https://www.linkedin.com/feed/hashtag/90daysofdevops)  [#challenge](https://www.linkedin.com/feed/hashtag/challenge)  [#learningprogress](https://www.linkedin.com/feed/hashtag/learningprogress)  [#freelancer](https://www.linkedin.com/feed/hashtag/freelancer)  [#linkedin](https://www.linkedin.com/feed/hashtag/linkedin)  [#trainwithshubham](https://www.linkedin.com/feed/hashtag/trainwithshubham)  [#devopscommunity](https://www.linkedin.com/feed/hashtag/devopscommunity)  [#cloudproviders](https://www.linkedin.com/feed/hashtag/cloudproviders)  [#bash](https://www.linkedin.com/feed/hashtag/bash) [#bashshellscripting](https://www.linkedin.com/feed/hashtag/bashshellscripting) [#awkward](https://www.linkedin.com/feed/hashtag/awkward) [#shellscripting](https://www.linkedin.com/feed/hashtag/shellscripting)