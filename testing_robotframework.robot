*** Settings ***
Documentation    practice robot framework
Library    Collections

*** Variables ***
${sum}=     ${0}
*** Test Cases ***
testing
    ${list1}=       Create List     ${1}   ${2}   ${3}
    Log To Console    ${list1}
    ${list2}=   Create List

    FOR    ${data}    IN    @{list1}
        Log To Console    ${data}
        Append To List    ${list2}    ${data}
        ${sum}=     Evaluate    ${sum} + ${data}
    END
    ${final_list}=      Combine Lists    ${list1}       ${list2}
    Log To Console    ${list2}
    Log To Console    ${sum}
    Log To Console    ${final_list}

    ${dict1}=   Create Dictionary    a=1    b=2     c=3
    Log To Console    ${dict1}
    FOR    ${key}   IN     @{dict1.keys()}
        Log To Console    ${key}
    END

    ${dict2}=   Create Dictionary
    Set To Dictionary    ${dict2}   d=${dict1}[b]
    Log To Console    ${dict2}


