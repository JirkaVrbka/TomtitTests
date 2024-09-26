*** Settings ***
Documentation     Optional FINALLY branches make it possible to execute keywords both when there is an error and when there is not. They are thus suitable for cleaning up after a keyword execution somewhat similarly as teardowns. There can be only one FINALLY branch and it must always be last. They can be used in combination with EXCEPT and ELSE branches and having also TRY/FINALLY structure is possible:

*** Test Cases ***
TRY/EXCEPT/ELSE/FINALLY
    TRY
        Log    Some keyword
    EXCEPT
        Log    Error occurred!
    ELSE
        Log    No error occurred.
    FINALLY
        Log    Always executed.
    END