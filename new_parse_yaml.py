import yaml
from yaml.loader import SafeLoader


# Open the file and load the file
def open_yaml_file():
    with open('new_sample.yaml') as f:
        data = yaml.load(f, Loader=SafeLoader)
        print(data)
        return data


# print(open_yaml_file())
def get_yaml_file():
    new_data = open_yaml_file()
    student_name = new_data['Student_details']['Student_Name']
    student_stream = new_data['Student_details']['Stream']
    final_data = {'name': student_name, 'stream': student_stream}
    return final_data

