*** Test Cases ***
Assign multiple
    ${a}    ${b}    ${c} =    Get Three
    ${first}    @{rest} =    Get Three
    @{before}    ${last} =    Get Three
    ${begin}    @{middle}    ${end} =    Get Three

*** Keywords ***
Get Three
    @{LIST}=    Evaluate    [1, 2, 3]
    RETURN    ${LIST}
