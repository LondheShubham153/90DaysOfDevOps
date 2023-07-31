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