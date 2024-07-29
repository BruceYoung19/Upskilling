# Documentation - https://www.geeksforgeeks.org/reading-and-writing-json-to-a-file-in-python/
# Function is to learn how use a Json File.
import json

# File structure
book = {
    "BookID":"BK213",
    "Name":"Book1",
    "Pages": 20,
}

# Serializing json
json_object = json.dumps(book, indent=4)
 
# Writing to sample.json
with open("sample.json", "w") as outfile:
    outfile.write(json_object)