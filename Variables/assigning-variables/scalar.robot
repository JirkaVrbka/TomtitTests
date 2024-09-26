*** Variables ***
${name}    John


*** Test Cases ***
Returning
    ${x} =    Get X    an argument
    Log    We got ${x}!

Example Test
    ${age}=    Set Variable    25
    Log    ${name} is ${age} years old.

*** Keywords ***
Get X
    [Arguments]    ${x}
    RETURN    ${x}
    