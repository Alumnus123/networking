import yaml
from yaml.loader import SafeLoader


# Open the file and load the file
def open_yaml_file():
    with open('sample.yaml') as f:
        data = yaml.load(f, Loader=SafeLoader)
        print(data)
        return data


# print(open_yaml_file())
def access_yaml_file():
    data = open_yaml_file()
    mother_details = data['Family']['Maternal']['mother']
    father_details = data['Family']['Paternal']['father']
    new_data = {'mother': mother_details, 'father': father_details}
    return new_data


print(access_yaml_file())
