*** Test Cases ***
BREAK with FOR
    ${text} =    Set Variable    zero
    FOR    ${var}    IN    one    two    three
        IF    '${var}' == 'two'    BREAK
        ${text} =    Set Variable    ${text}-${var}
    END
    Should Be Equal    ${text}    zero-one