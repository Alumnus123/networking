*** Settings ***
Documentation       How to use a custom Python library.

Library             PerformanceFeedback.py


*** Variables ***
&{SALES_REP_NATHAN}=    salesResult=502    salesTarget=1000
&{SALES_REP_PAMELA}=    salesResult=112    salesTarget=100


*** Tasks ***
Calculate the performance for some example sales reps
    ${performance_nathan}=    Get Sales Performance Feedback
    ...    ${SALES_REP_NATHAN}[salesResult]
    ...    ${SALES_REP_NATHAN}[salesTarget]
    ${performance_pamela}=    Get Sales Performance Feedback
    ...    ${SALES_REP_PAMELA}[salesResult]
    ...    ${SALES_REP_PAMELA}[salesTarget]