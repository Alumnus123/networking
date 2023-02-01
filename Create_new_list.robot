*** Settings ***
Documentation    create new list in another way
Library    create_new_list.py

*** Test Cases ***
creating a list using robot script
    ${output_list}=     Create A List

