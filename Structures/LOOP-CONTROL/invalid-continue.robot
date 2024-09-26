*** Test Cases ***
Invalid CONTINUE usage
    [Documentation]    BREAK and CONTINUE can only be used in the loop body,
    ...                not in keywords used in the loop.
    FOR    ${var}    IN    one    two    three
        Invalid CONTINUE
    END

*** Keywords ***
Invalid CONTINUE
    [Documentation]    This keyword fails due to invalid syntax.
    CONTINUE