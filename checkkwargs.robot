*** Settings ***
Documentation   Kwargs program in python
Library    kwargs.py
*** Variables ***
@{json_string} =    {"range":5, "domain":4}
@{d}=  evaluate  json.loads('''${json_string}''')  json
&[first_test]=   data_input=${d}
*** Test Cases ***
calculate sum of the ist
    ${output_of_first_test}=    Kwargs Func
    ...     ${first_test}[data_input]



