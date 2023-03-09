*** Settings ***
Documentation    GET request
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}         http://127.0.0.1:5000
${test}         get_test

*** Test Cases ***
Get Request Test
    Create Session    mysession     ${base_url}

    ${response}=    Get Request    mysession    /${test}
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

    #validations
    ${status_code}=     Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}       200
    ${response_body}=   Convert To String    ${response.content}
    Should Be Equal    ${response_body}     30


