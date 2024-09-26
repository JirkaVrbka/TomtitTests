*** Variables ***
&{DICT}          a=1    b=2    c=3
&{DICT2}          d=4    e=5    f=6

*** Test Cases ***
One loop variable with FOR-IN-ENUMERATE
    FOR    ${item}    IN ENUMERATE    &{DICT}    &{DICT2}    key=value    start=3
        Log    On round ${item}[0] key is '${item}[1]' and value is '${item}[2]'.
    END

Two loop variables with FOR-IN-ENUMERATE
    FOR    ${index}    ${item}    IN ENUMERATE    &{DICT}    &{DICT2} 
        Log    On round ${index} key is '${item}[0]' and value is '${item}[1]'.
    END

Dictionary iteration with FOR-IN-ENUMERATE loop
    FOR    ${index}    ${key}    ${value}    IN ENUMERATE    &{DICT}    &{DICT2} 
        Log    On round ${index} key is '${key}' and value is '${value}'.
    END