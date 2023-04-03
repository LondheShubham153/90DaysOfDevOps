# Day 15 Tasks

# Tasks
1. Create a Dictionary in Python and write it to a json File.

![image](https://user-images.githubusercontent.com/119837985/229428777-88ea12d6-57a3-4d6b-97b6-1bb7c5226a1d.png)

In this example, we first import the json module. Then we create a dictionary called my_dict with some key-value pairs. Finally, we open a file called my_dict.json in write mode and use the json.dump() method to write the dictionary to the file in JSON format. The with statement ensures that the file is properly closed when we're done writing to it.

After running this code, you should have a file called my_dict.json in your current working directory, with the contents.

2. Read a JSON file services.json kept in this folder and print the service names of every cloud service provider.

output
aws : ec2
azure : VM
gcp : compute engine

Based on the JSON data provided, here is how to read the data and extract the service names:

![image](https://user-images.githubusercontent.com/119837985/229428904-4e640b4d-1290-479a-bd4c-fa96b3ffecad.png)


In this code, we first use the open() function to open the services.json file in read mode and load its contents into a Python dictionary called data using the json. load() method.

Then we iterate over each key-value pair in the services dictionary using a for loop and extracting the service name from each provider's information dictionary using the key name.

Finally, we print the output in the desired format.

3. Read YAML file using python, file services.yaml and read the contents to convert yaml to json.

![image](https://user-images.githubusercontent.com/119837985/229429067-cf1b1145-0a8c-4773-ad8f-8d6f469962a6.png)

# Thanks for reading! Hope you find this helpful.

Happy learning !!!
