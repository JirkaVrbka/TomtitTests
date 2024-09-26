*** Variables ***
@{LIST}    1    2    3    4    5
${SCALAR}    10
@{ANOTHER}    1    1    2    2
@{ONE MORE}    3    3    4    4

*** Test Cases ***
Example
    Keyword    @{LIST}    more    args
    Keyword    ${SCALAR}    @{LIST}    constant
    Keyword    @{LIST}    @{ANOTHER}    @{ONE MORE}

*** Keywords ***
Keyword    
    [Arguments]    ${arg1}    ${arg2}    ${arg3}
    Log Many    ${arg1}    ${arg2}    ${arg3}