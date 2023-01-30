*** Settings ***
Documentation    sum all the elements of list

Library    sum_of_list.py


*** Variables ***
@{numbers} =    1    2    3
&{first_test}=    data_list=${numbers}
*** Test Cases ***
calculate sum of the ist
    ${output_of_first_test}=    Sum List
    ...     ${first_test}[data_list]

