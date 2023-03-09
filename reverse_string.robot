*** Settings ***
Documentation       reverse string data

*** Variables ***
${string1}=     elephant
@{list1}=       2 4 6 8
&{dict}=        a=1  b=2  c=3

*** Test Cases ***
Reverse String

    log   ${string1}[::-1]
    Log   ${list1}.reverse()
    log   ${dict}


