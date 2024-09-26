*** Variables ***
@{list1}    StringA1    StringA2
@{list2}    StringB1    StringB1
&{Dictionary}    A=${list1}    B=${list2}

*** Test Cases ***
Test
    Log    ${Dictionary}

Test Eval
    &{DICT_EVAL}    Evaluate  { "A" : ["StringA1",  "StringA2"], "B": ["StringB1","StringB2"]}
    Log    ${DICT_EVAL}