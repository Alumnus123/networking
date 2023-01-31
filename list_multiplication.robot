*** Settings ***
Documentation    multiplying all the elements of list
Library     multiplication_of_list.py

*** Test Cases ***
Calculate the multiplication of list
    ${list_input}=      Get List
    ${output_of_first_test}=    Multiplication List   ${list_input}
    Log    ${list_input}
    Log    ${output_of_first_test}

