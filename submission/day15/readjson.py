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