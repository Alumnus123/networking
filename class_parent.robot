*** Settings ***
Documentation    creating a parent class using robot
Library    Parent.py

*** Variables ***
${name}     Gita
${age}      57

*** Test Cases ***
created parent class
    ${obj}=  Get Details     ${name}    ${age}
    ${final_output}=    Get Output  ${obj}
    Log    ${final_output}
