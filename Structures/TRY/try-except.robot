*** Settings ***
Documentation     The basic TRY/EXCEPT syntax can be used to handle failures based on error messages:

*** Test Cases ***
First example
    TRY
        Log    Some Keyword
    EXCEPT    Error message
        Log    Error Handler Keyword
    END
    Log    Keyword Outside