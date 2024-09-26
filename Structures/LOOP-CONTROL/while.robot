*** Test Cases ***
CONTINUE and BREAK with WHILE
    WHILE    True
        TRY
             ${value} =    Do Something
        EXCEPT
            CONTINUE
        END
        Do something with value    ${value}
        BREAK
    END

*** Keywords ***
Do Something
    Fail    "ERROR"

Do something with value
    [Arguments]    ${value}
    RETURN    ${value}