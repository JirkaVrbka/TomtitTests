*** Variables ***
&{DICT}          a=1    b=2    c=3

*** Test Cases ***
One loop variable
    FOR    ${item}    IN    &{DICT}
        Log    Key is '${item}[0]' and value is '${item}[1]'.
    END