# Day 15 Task: Python Libraries for DevOps


![day15 task](https://cdn.hashnode.com/res/hashnode/image/upload/v1707647285744/0ca825d6-8c7c-47eb-8fe5-71e0ab76349e.png?w=1600&h=840&fit=crop&crop=entropy&auto=compress,format&format=webp)









## Reading JSON and YAML in Python for DevOps

- As a DevOps Engineer, understanding how to parse various file formats like text files (txt), JavaScript Object Notation (JSON), YAML Ain't Markup Language (YAML), etc., is essential for automating tasks and managing configurations efficiently.

### Importance of File Parsing:

1. Versatility in File Types: DevOps Engineers encounter a wide range of file types in their daily tasks, from simple text files to structured data formats like JSON and YAML.

2. Libraries for File Parsing: Python offers a rich ecosystem of libraries tailored for DevOps tasks. Key libraries include:

- os: Provides functions for interacting with the operating system, such as file and directory operations.

- sys: Offers access to system-specific parameters and functions.

- json: Facilitates parsing and encoding JSON data, a popular format for configuration files and API responses.

- yaml: Enables parsing and handling YAML files, commonly used for configuration management and defining infrastructure-as-code.

### Advantages of JSON and YAML:

1. JSON (JavaScript Object Notation):

- Lightweight and human-readable format for transmitting data between server and client applications.

- Supports nested structures with key-value pairs enclosed in curly braces {}.

- Widely adopted in web development and API integrations due to its simplicity and interoperability.

2. YAML (YAML Ain't Markup Language):

- Human-friendly data serialization format that emphasizes readability and simplicity.

- Uses indentation and whitespace to represent data structures, making it intuitive and easy to understand.

- Preferred for configuration files, defining infrastructure-as-code, and documenting complex data structures.

### Python Libraries for File Parsing:

- os: Provides platform-independent functions for interacting with the operating system, such as file manipulation, directory traversal, and environment variables management.

- sys: Offers access to system-specific parameters and functions, including command-line arguments, Python interpreter settings, and standard I/O streams.

- json: Facilitates parsing and encoding JSON data using functions like json.load() to parse JSON from a file object and json.dump() to write JSON to a file.

- yaml: Enables parsing and handling YAML files with functions like yaml.safe_load() to safely load YAML data and yaml.dump() to serialize Python objects into YAML format.

By leveraging these libraries, DevOps Engineers can effectively parse, manipulate, and manage files in various formats, empowering them to automate workflows, manage configurations, and deploy infrastructure with ease.

## Tasks

### Task 1: Create a Dictionary and Write to a JSON File

- Define a dictionary named data containing key-value pairs of cloud service providers and their services.

- Use the json.dump() function to write the data dictionary to a file named services.json in JSON format.


```shell
# Task 1: Create a Dictionary and Write to a JSON File
data = {
    "aws": "ec2",
    "azure": "VM",
    "gcp": "compute engine"
}

# Use the json library to write the dictionary to a JSON file named services.json
with open('services.json', 'w') as f:
    json.dump(data, f)
    ```



![services snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1707648519359/f46ebeaa-153c-4b0e-b4b1-bead8cac5e0e.png?auto=compress,format&format=webp)





## Task 2: Read and Print Service Names from JSON File

- Use the json.load() function to read the contents of the services.json file into a dictionary named services.

- Iterate through the services dictionary using a loop.

- Print the cloud service provider names along with their corresponding service names to the console.

```shell
# Task 2: Read and Print Service Names from JSON File
# Read the contents of the services.json file
with open('services.json', 'r') as f:
    services = json.load(f)

# Print the service names for each cloud provider
print("Service Names for Each Cloud Provider:")
for provider, service in services.items():
    print(f"{provider}: {service}")
```


![services](https://cdn.hashnode.com/res/hashnode/image/upload/v1707648537552/c598c2c3-ef8b-4d08-9a76-308646a1c87e.png?auto=compress,format&format=webp)





## Task 3: Read YAML File and Convert to JSON

- Use the yaml.safe_load() function to read the contents of the services.yaml file into a Python object.

- Use the json.dumps() function to convert the Python object into JSON format.

- Print the converted JSON data to the console.


```shell
# Task 3: Read YAML File and Convert to JSON
# Read the contents of the services.yaml file
with open('services.yaml', 'r') as f:
    yaml_data = yaml.safe_load(f)

# Convert the YAML data to JSON format
json_data = json.dumps(yaml_data, indent=4)
print("\nConverted YAML to JSON:")
print(json_data)
```


![task3 snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1707648457667/5987e56f-e13c-4215-9380-c8d7849f5408.png?auto=compress,format&format=webp)













- Output:

![output snap](https://cdn.hashnode.com/res/hashnode/image/upload/v1707648621576/2876461a-6a74-401d-91b3-c25070129643.png?auto=compress,format&format=webp)

- These tasks provide you with essential skills to manage JSON and YAML files using Python, which are vital for your growth as a DevOps practitioner. Continuous exploration and experimentation with various file formats and libraries will help you expand your expertise.


##### For further insights, please visit my Hashnode blog: [Link to my Hashnode blog](https://supriyasurkar.hashnode.dev/day-15-task-python-libraries-for-devops)
