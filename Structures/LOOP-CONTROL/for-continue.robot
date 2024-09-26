*** Test Cases ***
CONTINUE with FOR
    ${text} =    Set Variable    zero
    FOR    ${var}    IN    one    two    three
        IF    '${var}' == 'two'    CONTINUE
        ${text} =    Set Variable    ${text}-${var}
    END
    Should Be Equal    ${text}    zero-one-three