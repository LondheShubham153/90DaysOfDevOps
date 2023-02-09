import json
import yaml


json_file = "./services.json"
yaml_file = "./services.yaml"


with open(json_file, 'r', encoding='utf-8') as file:
    json_data = dict(json.load(file))

data = json_data['services']
print(f"aws : {data.get('aws').get('name')}")
print(f"azure : {data.get('azure').get('name')}")
print(f"gcp : {data.get('gcp').get('name')}")

with open(yaml_file, "r") as stream:
    try:
        yml_data = yaml.safe_load(stream)
    except yaml.YAMLError as exc:
        print(exc)

print(f"YAML To JSON: {yml_data}")