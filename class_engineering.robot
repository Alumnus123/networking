*** Settings ***
Documentation       Engineering class programme using robot
Library     EngineeringClass.py     ${department}       ${student}

*** Variables ***
${department}
${student}

*** Test Cases ***
Engineering Class Programme
    ${output}    Dept Details
    Log    ${output}
