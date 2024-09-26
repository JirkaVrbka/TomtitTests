*** Variables ***
@{LIST}         a    b    c
@{LIST2}         d    e    f

*** Test Cases ***
Manage index manually
    ${index} =    Set Variable    -1
    FOR    ${item}    IN    @{LIST}
        ${index} =    Evaluate    ${index} + 1
        Log Many    ${index}    ${item}
    END

FOR-IN-ENUMERATE
    FOR    ${index}    ${item}    IN ENUMERATE    @{LIST}    @{LIST2}
        Log Many    ${index}    ${item}
    END