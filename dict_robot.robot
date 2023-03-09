*** Settings ***
Documentation    create a string,dictionary,list

*** Variables ***
${string_variable}=     puja      #scalar variable : $
${int_variable}=  24
${float_variable}=  2.4
&{dictionary_data}=   a=1      b=2      #dictionary variable : &
@{list_variable} =  1   2   3           #list variable : @

*** Test Cases ***
creating a string,dictionary,list using robot
        Log To Console      ${string_variable}[0:3]
        Log To Console      ${int_variable}
        Log To Console      ${float_variable}
        Log To Console      ${dictionary_data}[b]
        Log To Console     ${list_variable}[1]

