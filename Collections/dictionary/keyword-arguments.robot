*** Settings ***
Documentation    It is possible to use dictionary variables with other arguments, including other dictionary variables. Because named argument syntax requires positional arguments to be before named argument, dictionaries can only be followed by named arguments or other dictionaries.

*** Variables ***
&{DICT}    ahoj=hi    rano=morning
@{LIST}    1    2    3    4    5
&{ANOTHER}    cz=czech    sk=slovak
&{ONE MORE}    en=english    ua=ukraine

*** Test Cases ***
Example
    Keyword    &{DICT}    named=arg
    Keyword    positional    @{LIST}    &{DICT}
    Keyword    &{DICT}    &{ANOTHER}    &{ONE MORE}

*** Keywords ***
Keyword    
    [Arguments]    ${arg1}    ${arg2}    ${arg3}
    Log Many    ${arg1}    ${arg2}    ${arg3}