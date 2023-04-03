import yaml
import json

with open("services.yaml","r") as yaml_file:
    # Load YAML data from file
    yaml_data = yaml.safe_load(yaml_file)

with open("new_services.json", "w") as json_file:
    # Convert YAML to JSON
    json.dump(yaml_data,json_file,indent=2)

print("yaml_data to json_data converted")