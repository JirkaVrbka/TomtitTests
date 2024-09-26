*** Variables ***
${rc}    5

*** Test Cases ***
Example
    IF    ${rc} > 0
        Log  True
    ELSE
        Log  Else
    END
