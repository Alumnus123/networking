*** Settings ***
Documentation    testing get request
Library     RequestsLibrary
Library     Collections


*** Variables ***
${base_url}     http://127.0.0.1:5000
${test}   get_test

*** Test Cases ***
GetRequestTest
    create session  mysession   ${base_url}

    ${response}=   get request    mysession   /${test}
    log to console    ${response.status_code}
    log to console    ${response.content}

    #validatioins
    ${status_code}=   convert to string   ${response.status_code}
    should be equal   ${status_code}    200

    ${res_body}=    convert to string   ${response.content}
    Should Be Equal        ${res_body}   30






