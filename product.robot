*** Settings ***
Documentation    Product of two numbers
Library    product_test.py

*** Variables ***
&{first_test}=      first_num=10    second_num=20

*** Test Cases ***
Calculate the product of two numbers
    ${output_firsttest}=    Product
    ...    ${first_test}[first_num]
    ...    ${first_test}[second_num]


