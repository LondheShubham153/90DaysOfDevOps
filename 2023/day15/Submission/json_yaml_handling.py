import json
import yaml

# Task 1: Create a Dictionary and Write to a JSON File
# Define a dictionary containing information about cloud service providers and their services
data = {
    "aws": "ec2",
    "azure": "VM",
    "gcp": "compute engine"
}

# Use the json library to write the dictionary to a JSON file named services.json
with open('services.json', 'w') as f:
    json.dump(data, f)

# Task 2: Read and Print Service Names from JSON File
# Read the contents of the services.json file
with open('services.json', 'r') as f:
    services = json.load(f)

# Print the service names for each cloud provider
print("Service Names for Each Cloud Provider:")
for provider, service in services.items():
    print(f"{provider}: {service}")

# Task 3: Read YAML File and Convert to JSON
# Read the contents of the services.yaml file
with open('services.yaml', 'r') as f:
    yaml_data = yaml.safe_load(f)

# Convert the YAML data to JSON format
json_data = json.dumps(yaml_data, indent=4)
print("\nConverted YAML to JSON:")
print(json_data)
