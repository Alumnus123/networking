*** Settings ***
Documentation       Sum of Two numbers using function

Library             sumfunc.py


*** Variables ***
&{first_test}=    first_num=502    second_num=1000

*** Tasks ***
Calculate the sum for two numbers
    ${output_of_first_test}=   Add two numbers
    ...    ${first_test}[first_num]
    ...    ${first_test}[second_num]
