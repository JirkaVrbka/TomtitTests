*** Settings ***
Documentation     There can be more than one EXCEPT branch. In that case they are matched one by one and the first matching branch is executed. One EXCEPT can also have multiple messages to match, and such a branch is executed if any of its messages match. In all these cases messages can be specified using variables in addition to literal strings.

*** Test Cases ***
Multiple EXCEPT branches
    TRY
        Log    Some Keyword
    EXCEPT    Error message    # Try matching this first.
        Log    Error Handler 1
    EXCEPT    Another error    # Try this if above did not match.
        Log    Error Handler 2
    EXCEPT    ${message}       # Last match attempt, this time using a variable.
        Log    Error Handler 3 ${message}
    END

Multiple messages with one EXCEPT
    TRY
        Log    Some Keyword
    EXCEPT    Error message    Another error    ${message}    # Match any of these.
        Log    Error handler ${message}
    END