*** Settings ***
Documentation    My First Robot Program Using Class
Library    AdditionClass.py  ${var1}  ${var2}

*** Variables ***
${var1}  1
${var2}  2

*** Test Cases ***
Test
    ${addition_output}=   Add
