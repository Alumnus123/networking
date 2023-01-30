*** Settings ***
Documentation    Args program in python
Library     args.py
*** Variables ***

&{first_test}=  first_item= 1   second_item=2   third_item=3    fourth_item=4

*** Tasks ***
Calculate the output of args
    ${output_of_first_test}=      Args Func
    ...     ${first_test}[first_item]
    ...     ${first_test}[second_item]
    ...     ${first_test}[third_item]
    ...     ${first_test}[fourth_item]






