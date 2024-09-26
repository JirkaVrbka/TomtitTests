*** Variables ***
&{DICT}          a=1    b=2    c=3

*** Test Cases ***
Dictionary iteration with FOR-IN-ENUMERATE loop
    FOR    ${index}    ${key}    ${value}    IN ENUMERATE    &{DICT}
        Log    On round ${index} key is '${key}' and value is '${value}'.
    END