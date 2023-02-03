*** Settings ***
Documentation    Leapyear programme
Library     Leapyear.py

*** Variables ***
&{first_var}=     year=2004
&{second_var}=     year=2006
&{third_var}=     year=2012

*** Test Cases ***
calculate the leap year programme
    ${first_var_output}=    Leap Year    ${first_var}[year]
    ${second_var_output}=    Leap Year    ${second_var}[year]
    ${third_var_output}=    Leap Year    ${third_var}[year]


