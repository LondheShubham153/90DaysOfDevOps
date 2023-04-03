import json

with open("services.json", "r") as file:
    data= json.loads(file.read())

data["services"].pop("debug")

for k, v in data["services"].items():
    print(k+":" + v["name"])