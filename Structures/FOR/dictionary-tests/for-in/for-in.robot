*** Variables ***
&{DICT}          a=1    b=2    c=3

*** Test Cases ***
Dictionary iteration with FOR loop
    FOR    ${key}    ${value}    IN    &{DICT}
        Log    Key is '${key}' and value is '${value}'.
    END