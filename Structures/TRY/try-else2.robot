*** Settings ***
Documentation     Optional ELSE branches make it possible to execute keywords if there is no error. There can be only one ELSE branch and it is allowed only after one or more EXCEPT branches:

*** Test Cases ***
Handle everything
    TRY
        Some Keyword
    EXCEPT    AS    ${err}
        Log    Error occurred: ${err}
    ELSE
        Log    No error occurred!
    END