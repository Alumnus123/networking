import yaml
from yaml.loader import SafeLoader


# Open the file and load the file
def open_yaml_file():
    with open('sample.yaml') as f:
        data = yaml.load(f, Loader=SafeLoader)
        print(data)
        return data
