*** Settings ***
Documentation    testing post request
Library     RequestsLibrary
Library     Collections
Documentation    Post test
Library    RequestsLibrary
Library     Collections

*** Variables ***
${base_url}     http://127.0.0.1:5000
${test}   post_test

*** Test Cases ***
PostMethodTest
    create session  mysession   ${base_url}

    ${headers}=  create dictionary   Content-Type=application/json  #(for file Content-Type is text/xml)

    ${req_body}=    create dictionary   number=1   number1=3

    ${response}=   post request    mysession   /${test}   data=${req_body}    headers=${headers}
    log to console    ${response.status_code}
    log to console    ${response.content}

    #validatioins
    ${status_code}=   convert to string   ${response.status_code}
    should be equal   ${status_code}    200
    ${res_body}=    convert to string   ${response.content}
    should contain    ${res_body}   3
    ${result}=  Run Keyword And Return Status   should contain    ${res_body}   3
    Log To Console    ${result}
