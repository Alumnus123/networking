*** Settings ***
Documentation    string,list,dictionary create

*** Variable ***
#${string1}=       elephant
#@{list1}=   2 4 6 8
#&{dict}=        a=1 b=2 c=3


*** Test Cases ***
Check String List and Dictionary

    ${string}   Set Variable    bluesky
    Log To Console    ${string}
    ${list}     Create List    1,2,3,4
    Log To Console    ${list}
    ${dict}     Create Dictionary    a=1 b=2
    Log To Console    ${dict}


