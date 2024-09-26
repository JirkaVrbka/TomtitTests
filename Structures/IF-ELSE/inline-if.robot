*** Variables ***
${rc}    5

*** Keywords ***
Normal IF
    IF    ${rc} > 0
        Log    Keyword    argument
    END
    IF    ${rc} > 0
        RETURN
    END

Inline IF
    IF    ${rc} > 0    Log    Keyword    argument
    IF    ${rc} > 0    RETURN

Inline IF/ELSE
    IF    ${rc} > 0    Log    Keyword    argument    ELSE    Log    Another Keyword

Inline IF/ELSE IF/ELSE
    IF    ${rc} > 0    Log    Keyword 1    ELSE IF    ${rc} < 0    Log    Keyword 2    ELSE IF    ${rc} == 0    Log    Keyword 3    ELSE    Log    Keyword 4

Inline IF/ELSE with assignment
    ${var} =    IF    ${rc} > 0    Log    Keyword    argument    ELSE    Log    Another Keyword

Inline IF/ELSE with assignment having multiple variables
    ${host}    ${port} =    IF    ${rc} > 0    Log    Get Production Config    ELSE    Log    Get Testing Config