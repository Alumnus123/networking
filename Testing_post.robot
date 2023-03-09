*** Settings ***
Documentation    Post Request
Library     RequestsLibrary
Library    Collections

*** Variables ***
${base_url}         http://127.0.0.1:5000
${test}         post_test

*** Test Cases ***
Testing Post Method
    Create Session    mysession     ${base_url}
    ${headers}     Create Dictionary    Content-Type=application/json
    ${req_body}=    Create Dictionary    number=1   number1=3
    ${response}=    Post Request    mysession   /${test}    data=${req_body}     headers=${headers}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

    #validation
    ${status_code}=     Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}       200
    ${response_body}=   Convert To String    ${response.content}
    Should Be Equal    ${response_body}     3

