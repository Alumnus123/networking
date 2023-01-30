*** Settings ***
Documentation    Multiplication of two numbers using function
Library     multiplicationfunc.py

*** Variables ***
&{first_test}=  first_number=10     second_number=20

*** Tasks ***
Calculate the multiplication for two numbers
    ${output_of_first_test}=     Multiplication Of Two Num
    ...     ${first_test}[first_number]
    ...     ${first_test}[second_number]