*** Settings ***
Documentation    Student class program using robot
Library     StudentClass.py     ${name}     ${age}
Documentation    multiplying all the elements of list
Library     StudentClass.py     ${name}     ${age}
*** Variables ***
${name}=    puja
${age}=     29
*** Test Cases ***
Student Class Programme
    ${output_student_class}=    Student Detail
    Log    ${output_student_class}
