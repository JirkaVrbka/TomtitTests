*** Variables ***
${rc}    5

*** Test Cases ***
Example
    IF    $rc > 0
        Log    Positive keyword
    ELSE IF    $rc < 0
        Log    Negative keyword
    ELSE IF    $rc == 0
        Log    Zero keyword
    ELSE
        Fail    Unexpected rc: ${rc}
    END
