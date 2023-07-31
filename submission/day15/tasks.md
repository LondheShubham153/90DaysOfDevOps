# Day 15 Python Tasks: Python Libraries

**1. Create a Dictionary in Python and write it to a json File.**

On running the code, it will create a new file data.json on the given file path ie. current directory in our case

<img width="354" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/30444e1a-3aef-49a6-8c2a-61907a46891b">

```
import json

# Create a dictionary
data = {
    "name": "Parag Pallav Singh",
    "age": 25,
    "course": "90 Days of Devops",
    "Task Day": 15,
}

# Specify the file path where you want to save the JSON data
file_path = "data.json"

# Write the dictionary to a JSON file
with open(file_path, "w") as json_file:
    json.dump(data, json_file)

print("Data has been written to 'data.json'.")
```
Refer script: [dict2json.py](https://github.com/paragpallavsingh/90DaysOfDevOps/blob/master/submission/day15/dict2json.py)

file generated: [data.json](https://github.com/paragpallavsingh/90DaysOfDevOps/blob/master/submission/day15/data.json)

**2. Read a json file services.json kept in this folder and print the service names of every cloud service provider.**

<img width="347" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/5a5cba1c-4294-4711-b17e-ff4d5fdfd24b">

```
import json

# Read the contents of the "services.json" file
with open("services.json", "r") as json_file:
    data = json.load(json_file)

# Get the "services" dictionary from the loaded JSON data
services = data["services"]

# Print the service names of each cloud service provider
for provider, service_data in services.items():
    if provider != "debug":
        service_name = service_data["name"]
        print(f"Service name for {provider}: {service_name}")
```
Refer Script: [readjson.py](https://github.com/paragpallavsingh/90DaysOfDevOps/blob/master/submission/day15/readjson.py)

File: [services.json](https://github.com/paragpallavsingh/90DaysOfDevOps/blob/master/submission/day15/services.json)

**3. Read YAML file using python, file services.yaml and read the contents to convert yaml to json**

<img width="355" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/bf00756e-9364-4ac0-9f9f-83c3949c24ca">

```
#pip install pyyaml
import yaml

# Read the contents of the "services.yaml" file
with open("services.yaml", "r") as yaml_file:
    data = yaml.safe_load(yaml_file)

# Get the "services" dictionary from the loaded YAML data
services = data["services"]

# Print the service names of each cloud service provider
for provider, service_data in services.items():
    if provider != "debug":
        service_name = service_data["name"]
        print(f"Service name for {provider}: {service_name}")
```

Refer Script : [readyaml.py](https://github.com/paragpallavsingh/90DaysOfDevOps/blob/master/submission/day15/readyaml.py)

File: [services.yaml](https://github.com/paragpallavsingh/90DaysOfDevOps/blob/master/submission/day15/services.yaml)

## Error resolution

if you face this error: **No module named 'yaml'**

just install **pyyaml**

```
pip install pyyaml
```
<img width="476" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/8c384b3e-7b20-4003-a11d-4a863466bec5">

you will be able to read yaml successfully as shown above in task 3⬆️

<img width="392" alt="image" src="https://github.com/paragpallavsingh/90DaysOfDevOps/assets/40052830/5cb1fba1-efa6-467c-8d0e-37ad69b9a31a">
