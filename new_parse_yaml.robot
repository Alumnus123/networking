*** Settings ***
Documentation    creating new yaml file
Library    new_parse_yaml.py

*** Test Cases ***
creating new yaml file using robot
    ${output}=    Open Yaml File
    log     ${output}
    ${new_output}=  Get Yaml File
    log     ${new_output}



