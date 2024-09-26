*** Settings ***
Documentation     The basic TRY/EXCEPT syntax can be used to handle failures based on error messages:

*** Test Cases ***
Match any error
    TRY
        Log    Some Keyword
    EXCEPT               # Match any error.
        Log    Error Handler
    END

Match any after testing more specific errors
    TRY
        Log    Some Keyword
    EXCEPT    Error message    # Try matching this first
        Log    Error Handler 1
    EXCEPT                     # Match any that did not match the above.
        Log    Error Handler 2
    END