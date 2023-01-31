*** Settings ***
Documentation    Student class program using robot
Library     StudentClass.py     ${name}     ${age}

*** Variables ***
${name}
${age}

*** Test Cases ***
Student Class Programme
    ${output_student_class}=    Student Detail
    Log    ${output_student_class}
