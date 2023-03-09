*** Settings ***
Documentation    Add two data
Library    Collections
*** Variables ***
${num1}=    ${10}
${num2}=    ${20}
${sum}=     ${0}
*** Test Cases ***
add data
    ${output}=  Evaluate     ${num1} * ${num2}
    Log To Console      ${output}
    ${create_list}=     Create List    1    2    3   8
    Log To Console       ${create_list}
    FOR    ${data}  IN  @{create_list}
        ${sum}=     Evaluate    ${sum} + ${data}
    END
    Log To Console    ${sum}
    ${dict_output}=     Create Dictionary    a=1    b=2
    Log To Console    ${dict_output}
    FOR    ${key}   IN  @{dict_output.keys()}
        Log To Console    ${dict_output}[${key}]
    END
    ${dict_output1}=     Create Dictionary
    Log To Console    ${dict_output1}
    ${list1}=       Create List
    FOR    ${data}  IN  @{create_list}
        Append To List    ${list1}   ${data}
    END
    Log To Console    ${list1}
    ${final_list}=  Combine Lists    ${create_list}     ${list1}
    Log To Console    ${final_list}
    Log To Console    ${dict_output}[a]
    Set To Dictionary  ${dict_output1}  c=${dict_output}[a]
    Log To Console    ${dict_output1}