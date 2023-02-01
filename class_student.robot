*** Settings ***
Documentation    Student class program using robot
Library     Student.py


*** Variables ***
${name}   foo
${age}    10

*** Test Cases ***
Student Class Programme
    ${obj}=  Create Student Obj    ${name}    ${age}
    ${ret}=  Show Detail    ${obj}
    Log    ${ret}


