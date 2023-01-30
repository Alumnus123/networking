*** Settings ***
Documentation   Kwargs program in python
Library    kwargs.py
*** Variables ***
${d}=  evaluate  json.loads('''${"range":5, "domain":4}''')  json
&[first_test]=  data_input=${d}
*** Test Cases ***
calculate sum of the ist
    ${output_of_first_test}=    Kwargs Func
    ...     ${first_test}[data_input]



