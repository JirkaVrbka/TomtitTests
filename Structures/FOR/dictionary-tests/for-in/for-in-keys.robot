*** Settings ***
*** Variables ***
&{DICT}          a=1    b=2    c=3

*** Test Cases ***
Iterate over keys
    FOR    ${key}    IN    @{DICT}
        Log    Key is '${key}' and value is '${DICT}[${key}]'.
    END