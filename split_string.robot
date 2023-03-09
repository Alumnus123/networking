*** Settings ***
Documentation    split the string
Library    String

*** Variable ***
${string1}=        a b c,d,1,e f g

*** Test Cases ***
Get Number From String

    @{list_string}=     Split String    ${string1}      ${SPACE}
    log             ${list_string}[2]
    ${num}=         evaluate       '${list_string}[2]'.replace(',','')
    ${res}=         evaluate       '${num}'[::-1]
    ${res_upper}=         evaluate       '${num}'.upper()
    ${res_alnumcheck}=         evaluate       '${num}'.isalnum()