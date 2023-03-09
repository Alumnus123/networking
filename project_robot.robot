*** Settings ***
Documentation    my project using robot
Library     RequestsLibrary
Library     Collections

*** Variables ***
${base_url}          http://127.0.0.1:5000
${project}      /test_project_product_price
${bearerToken}  "Bearer cnhfmjj35hcg85kh"

*** Test Cases ***
project testing by robot
    create Session  mysession   ${base_url}
    ${body}=    Create Dictionary    ProductName=SAMSUNG    ProductId=SAMJ24
    ${header}=     Create Dictionary    Authorization= ${bearerToken}    Content-Type=application/json
    ${response}=    Post Request    mysession   /test-project   data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}

    #validation
    ${status_code}=     Convert To String    ${response.status_code}
    Should Be Equal    ${status_code}   200

    ${price}=   Convert To String  ${response.content}
    Should Be Equal    ${price}     26000

