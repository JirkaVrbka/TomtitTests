*** Settings ***

*** Keywords ***
Not shared keyword
    Log    ${var_shared_keywords}
    ${var_shared_keywords}=    Set Variable    123
    Set Global Variable    ${var_shared_keywords}