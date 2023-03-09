*** Settings ***
Documentation    simple for loop using robot

*** Variables ***
@{data}=    12  13  14  15  16  17


*** Test Cases ***
loop over a list
    FOR    ${search}   IN    @{data}
        Log    ${search}
    END