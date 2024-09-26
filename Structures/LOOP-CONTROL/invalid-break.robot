*** Test Cases ***
Invalid BREAK usage
    [Documentation]    BREAK and CONTINUE can only be used in the loop body,
    ...                not in keywords used in the loop.
    FOR    ${var}    IN    one    two    three
        Invalid BREAK
    END

*** Keywords ***
Invalid BREAK
    [Documentation]    This keyword fails due to invalid syntax.
    BREAK