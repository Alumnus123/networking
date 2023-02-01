*** Settings ***
Documentation    creating a new list using robot
Library    create_list.py


*** Variables ***
@{numbers} =    1    2    3
&{first_test}=    data_list=${numbers}

*** Test Cases ***
crreating a list
    ${output_first_test}=   Create A List
    ...     ${first_test}[data_list]

