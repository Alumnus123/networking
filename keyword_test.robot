*** Settings ***
Documentation    create a keyword

*** Variables ***
${a}=    10
${b}=    10

*** Test Cases ***
creating keyword
   ${a}=   Convert To Integer    ${a}
   ${b}=   Convert To Integer    ${b}
   output
*** Keywords ***
output
    ${o}=   Run Keyword And Return Status       Should Be Equal As Integers        ${a}    ${b}
    Log To Console    ${o}
