*** Settings ***
Documentation    yaml file using robot
Library    parse_yaml_file.py

*** Test Cases ***
yaml Programme
    ${yamlObj}=  Open Yaml File
    Log    ${yamlObj}