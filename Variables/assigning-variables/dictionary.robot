*** Settings ***
Library     Collections

*** Variables ***
${name}          John
${age}           25
${is_enabled}    True
@{fruits}        Apple    Banana    Orange
&{person}        name=John    age=25    city=New York

*** Keywords ***
Example Keyword
    ${age}=    Set Variable    25
    [Return]    ${age}

*** Test Cases ***
Example Test 1
    [Documentation]    Assign a variable inside a test case. Expected output: "My favorite fruit is Banana."
    ${fruit}=    Set Variable    ${fruits}[1]
    Log    My favorite fruit is ${fruit}.

Example Test 2
    [Documentation]    Assign a dictionary variable inside a keyword. Expected output: "{'name': 'John', 'age': '25', 'city': 'New York'}."
    Example Keyword
    Log Dictionary    ${person}

Example Test 3
    [Documentation]    Assign a value to a dictionary variable inside a test case. Expected output: "{'name': 'John', 'age': '25', 'city': 'New York', 'nationality': 'American'}."
    Set To Dictionary    ${person}    nationality    American
    Log Dictionary    ${person}

Example Test 4
    [Documentation]    Assign a value to a dictionary variable inside a loop in a test case. Expected output: "{'name': 'JOHN', 'age': '25', 'city': 'NEW YORK'}."
    FOR    ${key}    IN    @{person.keys()}
        ${value}=    Get From Dictionary    ${person}    ${key}
        Set To Dictionary    ${person}    ${key}    ${value.upper()}
    END
    Log Dictionary    ${person}

Example
    &{dict} =    Create Dictionary    first=1    second=${2}    ${3}=third
    Length Should Be    ${dict}    3
    Log Many    &{dict}
    Log    ${dict.first}