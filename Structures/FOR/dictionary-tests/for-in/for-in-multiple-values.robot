*** Variables ***
&{DICT}          a=1    b=2    c=3

*** Test Cases ***
Multiple dictionaries and extra items in 'key=value' syntax
    &{more} =    Create Dictionary    e=5    f=6
    FOR    ${key}    ${value}    IN    &{DICT}    d=4    &{more}    g=7
        Log    Key is '${key}' and value is '${value}'.
    END