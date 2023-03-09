*** Settings ***
Documentation       Engineering class programme using robot
Library     EngineeringClass.py     ${department}       ${student}

*** Variables ***
${department}   ECE
${student}  64

*** Test Cases ***
Engineering Class Programme
    ${output}    Dept Details
    Log    ${output}
