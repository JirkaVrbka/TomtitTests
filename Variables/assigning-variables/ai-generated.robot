*** Settings ***
Documentation    This test suite demonstrates various ways to assign and use variables in Robot Framework. 
...              The test case in this suite assigns and modifies scalar, list, and dictionary variables. 
...              The test case also includes assertions to check the values of the variables.
Library           Collections

*** Test Cases ***
Example Test
    Log    Assigning scalar variables
    ${name}=               Set Variable    John
    ${age}=                Set Variable    25
    ${is_enabled}=         Set Variable    True

    Log    Assigning list variables
    @{fruits}=             Create List    Apple    Banana    Orange
    @{vegetables}=         Create List    Carrot    Potato    Cabbage

    Log    Assigning dictionary variables
    &{person}=             Create Dictionary    name=John    age=25    city=New York
    &{address}=            Create Dictionary    city=New York    state=NY    zip=10001

    Log    Modifying scalar variable
    ${age}=                Evaluate    ${age} + 5

    Log    Modifying list variable
    Remove From List       ${vegetables}    Cabbage
    Append To List         ${vegetables}    Broccoli

    Log    Modifying dictionary variable
    Set To Dictionary      ${person}    city    Chicago
    Set To Dictionary      ${person}    nationality    American
    Remove From Dictionary  ${address}   zip

    Log    Logging variables
    Log                    Name: ${name}
    Log                    Age: ${age}
    Log                    Is Enabled: ${is_enabled}
    Log List               Fruits: ${fruits}
    Log List               Vegetables: ${vegetables}
    Log Dictionary         Person: ${person}
    Log Dictionary         Address: ${address}

    Log    Assertion
    Should Be True         ${is_enabled}