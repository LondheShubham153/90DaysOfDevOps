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