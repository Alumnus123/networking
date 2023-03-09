*** Settings ***
Documentation    crete a string,dictionary,list
*** Variables ***
${var1}
${var2}
${var3}
${var4}
${var5}
${var6}
*** Test Cases ***
creating dictionary, list using robot
    ${string}=  Set Variable    ${var1}
    Log To Console    ${string}
    ${dict_var}=    Create Dictionary    a=${var2}  b=${var3}
    Log To Console    ${dict_var}
    ${list_var}=    Create List  ${var4}    ${var5}
    Log To Console    ${list_var}
    ${out}=  Run Keyword And Return Status   Should Be Equal As Strings    ${var6}      ${var1}
    Log To Console    ${out}
    ${out1}=    Run Keyword And Return Status      Should Be Equal    ${var4}    ${var5}
    Log To Console    ${out1}
