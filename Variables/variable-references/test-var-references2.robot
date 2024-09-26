*** Settings ***
Resource    Keywords.robot

*** Variables ***
${var_test_suite}    test suite variable

*** Test Cases ***
First test
    ${var_first_test}=    Set Variable    local test variable
    Not shared keyword
    Log    ${var_shared_keywords}