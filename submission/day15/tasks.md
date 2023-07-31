# Day 15 Python Tasks: Python Libraries

**1. Create a Dictionary in Python and write it to a json File.**

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

**2. Read a json file services.json kept in this folder and print the service names of every cloud service provider.**

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

**3. Read YAML file using python, file services.yaml and read the contents to convert yaml to json**

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