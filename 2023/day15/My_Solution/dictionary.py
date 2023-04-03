# import the json module
import json

#create a dictionary 

my_dict = {
    "name": "Sumit",
    "age": 25,
    "country": "India",
    "gender": "Male",
    "occupation": "Student"
}

#Write the dictionary to a json file

with open("my_dict.json", "w") as f:
    json.dump(my_dict, f)