*** Settings ***
Documentation    sum of two numbers
Library    sum_test.py

*** Variables ***
&{first_test} =     a=1  b=2

*** Tasks ***
calculate the sum of two numbers
        ${output_of_first_test}=    Sum Two
        ...     ${first_test}[a]
        ...     ${first_test}[b]