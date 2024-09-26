*** Settings ***
Documentation     Optional ELSE branches make it possible to execute keywords if there is no error. There can be only one ELSE branch and it is allowed only after one or more EXCEPT branches:

*** Test Cases ***
ELSE branch
    TRY
        Log    Some Keyword
    EXCEPT    X
        Log    Error 'X' occurred!
    EXCEPT    Y
        Log    Error 'Y' occurred!
    ELSE
        Log    No error occurred!
    END
    Log    Keyword Outside
