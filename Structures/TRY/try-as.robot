*** Settings ***
Documentation     When matching errors using patterns and when using EXCEPT without any messages to match any error, it is often useful to know the actual error that occurred. Robot Framework supports that by making it possible to capture the error message into a variable by adding AS  ${var} at the end of the EXCEPT statement:

*** Test Cases ***
Capture error
    TRY
        Log    Some Keyword
    EXCEPT    ValueError: *    type=GLOB    AS   ${error}
        Log    Error Handler 1: ${error}
    EXCEPT    [Ee]rror \\d+    (Invalid|Bad) usage    type=REGEXP    AS    ${error}
        Log    Error Handler 2: ${error}
    EXCEPT    AS    ${error}
        Log    Error Handler 3: ${error}
    END