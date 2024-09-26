*** Test Cases ***
Test
    ${Dictionary}=    Create Dict With List Elements
    Log    ${Dictionary}


*** Keyword ***
Create Dict With List Elements
    ${list1}=    Create List    StringA1    StringA2
    ${list2}=    Create List    StringB1    StringB1
    ${Dictionary}=    Create Dictionary    A=${list1}    B=${list2}
    [return]    ${Dictionary}