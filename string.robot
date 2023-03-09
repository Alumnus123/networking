*** Settings ***
Documentation    string using robot

*** Variables ***
@{data}=    "learn robot script"
*** Test Cases ***
loop over a list
    FOR    ${search}   IN    @{data}
        Log    ${search}
    END
