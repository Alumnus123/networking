*** Settings ***
Documentation    add two numbers
Library    add_test.py

*** Variables ***
&{first_test}=  first_num=10    second_num=20

*** Test Cases ***
Addition of two numbers
    ${output_firsttest}=    Add
    ...    ${first_test}[first_num]
    ...    ${first_test}[second_num]