*** Settings ***
Documentation     Optional FINALLY branches make it possible to execute keywords both when there is an error and when there is not. They are thus suitable for cleaning up after a keyword execution somewhat similarly as teardowns. There can be only one FINALLY branch and it must always be last. They can be used in combination with EXCEPT and ELSE branches and having also TRY/FINALLY structure is possible:

*** Test Cases ***
TRY/FINALLY
    Log    Open Connection
    TRY
        Log    Use Connection
    FINALLY
        Log    Close Connection
    END
